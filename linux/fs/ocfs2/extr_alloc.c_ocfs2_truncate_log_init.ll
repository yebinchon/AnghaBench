; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_truncate_log_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_truncate_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.inode*, %struct.buffer_head*, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@ocfs2_truncate_log_worker = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_truncate_log_init(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store %struct.inode* null, %struct.inode** %4, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  %6 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ocfs2_get_truncate_log_info(%struct.ocfs2_super* %6, i32 %9, %struct.inode** %4, %struct.buffer_head** %5)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @mlog_errno(i32 %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %18 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %17, i32 0, i32 3
  %19 = load i32, i32* @ocfs2_truncate_log_worker, align 4
  %20 = call i32 @INIT_DELAYED_WORK(i32* %18, i32 %19)
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %22 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %21, i32 0, i32 2
  %23 = call i32 @atomic_set(i32* %22, i32 0)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %26 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %25, i32 0, i32 1
  store %struct.buffer_head* %24, %struct.buffer_head** %26, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %29 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %28, i32 0, i32 0
  store %struct.inode* %27, %struct.inode** %29, align 8
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @ocfs2_get_truncate_log_info(%struct.ocfs2_super*, i32, %struct.inode**, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
