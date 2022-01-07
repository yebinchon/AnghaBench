; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_try_to_free_truncate_log.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_try_to_free_truncate_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_try_to_free_truncate_log(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %9 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @inode_lock(i32 %10)
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @inode_unlock(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %48

23:                                               ; preds = %2
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %25 = call i32 @ocfs2_flush_truncate_log(%struct.ocfs2_super* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @mlog_errno(i32 %29)
  br label %48

31:                                               ; preds = %23
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %33 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @jbd2_journal_start_commit(i32 %36, i32* %5)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %41 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @jbd2_log_wait_commit(i32 %44, i32 %45)
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %39, %31
  br label %48

48:                                               ; preds = %47, %28, %22
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @ocfs2_flush_truncate_log(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @jbd2_journal_start_commit(i32, i32*) #1

declare dso_local i32 @jbd2_log_wait_commit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
