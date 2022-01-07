; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_cil.c_xlog_cil_push_background.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_cil.c_xlog_cil_push_background.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlog = type { %struct.TYPE_3__*, %struct.xfs_cil* }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_cil = type { i64, i64, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlog*)* @xlog_cil_push_background to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlog_cil_push_background(%struct.xlog* %0) #0 {
  %2 = alloca %struct.xlog*, align 8
  %3 = alloca %struct.xfs_cil*, align 8
  store %struct.xlog* %0, %struct.xlog** %2, align 8
  %4 = load %struct.xlog*, %struct.xlog** %2, align 8
  %5 = getelementptr inbounds %struct.xlog, %struct.xlog* %4, i32 0, i32 1
  %6 = load %struct.xfs_cil*, %struct.xfs_cil** %5, align 8
  store %struct.xfs_cil* %6, %struct.xfs_cil** %3, align 8
  %7 = load %struct.xfs_cil*, %struct.xfs_cil** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %7, i32 0, i32 5
  %9 = call i32 @list_empty(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.xfs_cil*, %struct.xfs_cil** %3, align 8
  %15 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.xlog*, %struct.xlog** %2, align 8
  %20 = call i64 @XLOG_CIL_SPACE_LIMIT(%struct.xlog* %19)
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %52

23:                                               ; preds = %1
  %24 = load %struct.xfs_cil*, %struct.xfs_cil** %3, align 8
  %25 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %24, i32 0, i32 2
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.xfs_cil*, %struct.xfs_cil** %3, align 8
  %28 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.xfs_cil*, %struct.xfs_cil** %3, align 8
  %31 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %23
  %35 = load %struct.xfs_cil*, %struct.xfs_cil** %3, align 8
  %36 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.xfs_cil*, %struct.xfs_cil** %3, align 8
  %39 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.xlog*, %struct.xlog** %2, align 8
  %41 = getelementptr inbounds %struct.xlog, %struct.xlog* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.xfs_cil*, %struct.xfs_cil** %3, align 8
  %46 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %45, i32 0, i32 3
  %47 = call i32 @queue_work(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %34, %23
  %49 = load %struct.xfs_cil*, %struct.xfs_cil** %3, align 8
  %50 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock(i32* %50)
  br label %52

52:                                               ; preds = %48, %22
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @XLOG_CIL_SPACE_LIMIT(%struct.xlog*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
