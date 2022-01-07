; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_wbuf.c_jffs2_wbuf_dirties_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_wbuf.c_jffs2_wbuf_dirties_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_inodirty = type { %struct.jffs2_inodirty*, i32 }
%struct.jffs2_sb_info = type { %struct.jffs2_inodirty* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"No memory to allocate inodirty. Fallback to all considered dirty\0A\00", align 1
@inodirty_nomem = common dso_local global %struct.jffs2_inodirty zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jffs2_sb_info*, i32)* @jffs2_wbuf_dirties_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jffs2_wbuf_dirties_inode(%struct.jffs2_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jffs2_inodirty*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %7 = call i32 @jffs2_dirty_trigger(%struct.jffs2_sb_info* %6)
  %8 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @jffs2_wbuf_pending_for_ino(%struct.jffs2_sb_info* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %36

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.jffs2_inodirty* @kmalloc(i32 16, i32 %14)
  store %struct.jffs2_inodirty* %15, %struct.jffs2_inodirty** %5, align 8
  %16 = load %struct.jffs2_inodirty*, %struct.jffs2_inodirty** %5, align 8
  %17 = icmp ne %struct.jffs2_inodirty* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = call i32 @jffs2_dbg(i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %21 = call i32 @jffs2_clear_wbuf_ino_list(%struct.jffs2_sb_info* %20)
  %22 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %23 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %22, i32 0, i32 0
  store %struct.jffs2_inodirty* @inodirty_nomem, %struct.jffs2_inodirty** %23, align 8
  br label %36

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.jffs2_inodirty*, %struct.jffs2_inodirty** %5, align 8
  %27 = getelementptr inbounds %struct.jffs2_inodirty, %struct.jffs2_inodirty* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %29 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %28, i32 0, i32 0
  %30 = load %struct.jffs2_inodirty*, %struct.jffs2_inodirty** %29, align 8
  %31 = load %struct.jffs2_inodirty*, %struct.jffs2_inodirty** %5, align 8
  %32 = getelementptr inbounds %struct.jffs2_inodirty, %struct.jffs2_inodirty* %31, i32 0, i32 0
  store %struct.jffs2_inodirty* %30, %struct.jffs2_inodirty** %32, align 8
  %33 = load %struct.jffs2_inodirty*, %struct.jffs2_inodirty** %5, align 8
  %34 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %35 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %34, i32 0, i32 0
  store %struct.jffs2_inodirty* %33, %struct.jffs2_inodirty** %35, align 8
  br label %36

36:                                               ; preds = %24, %18, %12
  ret void
}

declare dso_local i32 @jffs2_dirty_trigger(%struct.jffs2_sb_info*) #1

declare dso_local i64 @jffs2_wbuf_pending_for_ino(%struct.jffs2_sb_info*, i32) #1

declare dso_local %struct.jffs2_inodirty* @kmalloc(i32, i32) #1

declare dso_local i32 @jffs2_dbg(i32, i8*) #1

declare dso_local i32 @jffs2_clear_wbuf_ino_list(%struct.jffs2_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
