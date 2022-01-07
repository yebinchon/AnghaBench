; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_cil.c_xlog_cil_push_now.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_cil.c_xlog_cil_push_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlog = type { %struct.TYPE_2__*, %struct.xfs_cil* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_cil = type { i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlog*, i64)* @xlog_cil_push_now to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlog_cil_push_now(%struct.xlog* %0, i64 %1) #0 {
  %3 = alloca %struct.xlog*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xfs_cil*, align 8
  store %struct.xlog* %0, %struct.xlog** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.xlog*, %struct.xlog** %3, align 8
  %7 = getelementptr inbounds %struct.xlog, %struct.xlog* %6, i32 0, i32 1
  %8 = load %struct.xfs_cil*, %struct.xfs_cil** %7, align 8
  store %struct.xfs_cil* %8, %struct.xfs_cil** %5, align 8
  %9 = load %struct.xfs_cil*, %struct.xfs_cil** %5, align 8
  %10 = icmp ne %struct.xfs_cil* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %60

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.xfs_cil*, %struct.xfs_cil** %5, align 8
  %18 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %16, %19
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i1 [ false, %12 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.xfs_cil*, %struct.xfs_cil** %5, align 8
  %26 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %25, i32 0, i32 3
  %27 = call i32 @flush_work(i32* %26)
  %28 = load %struct.xfs_cil*, %struct.xfs_cil** %5, align 8
  %29 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %28, i32 0, i32 2
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.xfs_cil*, %struct.xfs_cil** %5, align 8
  %32 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %31, i32 0, i32 4
  %33 = call i64 @list_empty(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %21
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.xfs_cil*, %struct.xfs_cil** %5, align 8
  %38 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35, %21
  %42 = load %struct.xfs_cil*, %struct.xfs_cil** %5, align 8
  %43 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %42, i32 0, i32 2
  %44 = call i32 @spin_unlock(i32* %43)
  br label %60

45:                                               ; preds = %35
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.xfs_cil*, %struct.xfs_cil** %5, align 8
  %48 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.xlog*, %struct.xlog** %3, align 8
  %50 = getelementptr inbounds %struct.xlog, %struct.xlog* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.xfs_cil*, %struct.xfs_cil** %5, align 8
  %55 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %54, i32 0, i32 3
  %56 = call i32 @queue_work(i32 %53, i32* %55)
  %57 = load %struct.xfs_cil*, %struct.xfs_cil** %5, align 8
  %58 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %57, i32 0, i32 2
  %59 = call i32 @spin_unlock(i32* %58)
  br label %60

60:                                               ; preds = %45, %41, %11
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
