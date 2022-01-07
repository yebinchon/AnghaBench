; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_priv.h_xlog_valid_lsn.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_priv.h_xlog_valid_lsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlog = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlog*, i32)* @xlog_valid_lsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlog_valid_lsn(%struct.xlog* %0, i32 %1) #0 {
  %3 = alloca %struct.xlog*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xlog* %0, %struct.xlog** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %7, align 4
  %8 = load %struct.xlog*, %struct.xlog** %3, align 8
  %9 = getelementptr inbounds %struct.xlog, %struct.xlog* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @READ_ONCE(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = call i32 (...) @smp_rmb()
  %13 = load %struct.xlog*, %struct.xlog** %3, align 8
  %14 = getelementptr inbounds %struct.xlog, %struct.xlog* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @READ_ONCE(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @CYCLE_LSN(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @CYCLE_LSN(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @BLOCK_LSN(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %26, %2
  %32 = load %struct.xlog*, %struct.xlog** %3, align 8
  %33 = getelementptr inbounds %struct.xlog, %struct.xlog* %32, i32 0, i32 2
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.xlog*, %struct.xlog** %3, align 8
  %36 = getelementptr inbounds %struct.xlog, %struct.xlog* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  %38 = load %struct.xlog*, %struct.xlog** %3, align 8
  %39 = getelementptr inbounds %struct.xlog, %struct.xlog* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  %41 = load %struct.xlog*, %struct.xlog** %3, align 8
  %42 = getelementptr inbounds %struct.xlog, %struct.xlog* %41, i32 0, i32 2
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @CYCLE_LSN(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %58, label %48

48:                                               ; preds = %31
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @CYCLE_LSN(i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @BLOCK_LSN(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %31
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %53, %48
  br label %60

60:                                               ; preds = %59, %26, %21
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @CYCLE_LSN(i32) #1

declare dso_local i32 @BLOCK_LSN(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
