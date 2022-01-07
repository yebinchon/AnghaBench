; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_erase.c_jffs2_erase_succeeded.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_erase.c_jffs2_erase_succeeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, i32, i32, i32 }
%struct.jffs2_eraseblock = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Erase completed successfully at 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*)* @jffs2_erase_succeeded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jffs2_erase_succeeded(%struct.jffs2_sb_info* %0, %struct.jffs2_eraseblock* %1) #0 {
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca %struct.jffs2_eraseblock*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  store %struct.jffs2_eraseblock* %1, %struct.jffs2_eraseblock** %4, align 8
  %5 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %6 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @jffs2_dbg(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %10 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %13 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %16 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %15, i32 0, i32 0
  %17 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %18 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %17, i32 0, i32 3
  %19 = call i32 @list_move_tail(i32* %16, i32* %18)
  %20 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %21 = call i32 @jffs2_garbage_collect_trigger(%struct.jffs2_sb_info* %20)
  %22 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %23 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %22, i32 0, i32 2
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %26 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %29 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %28, i32 0, i32 0
  %30 = call i32 @wake_up(i32* %29)
  ret void
}

declare dso_local i32 @jffs2_dbg(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @jffs2_garbage_collect_trigger(%struct.jffs2_sb_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
