; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_cmd_ars_start.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_cmd_ars_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_test = type { i32 }
%struct.ars_state = type { i32, i32 }
%struct.nd_cmd_ars_start = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NFIT_ARS_START_BUSY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfit_test*, %struct.ars_state*, %struct.nd_cmd_ars_start*, i32, i32*)* @nfit_test_cmd_ars_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfit_test_cmd_ars_start(%struct.nfit_test* %0, %struct.ars_state* %1, %struct.nd_cmd_ars_start* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfit_test*, align 8
  %8 = alloca %struct.ars_state*, align 8
  %9 = alloca %struct.nd_cmd_ars_start*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.nfit_test* %0, %struct.nfit_test** %7, align 8
  store %struct.ars_state* %1, %struct.ars_state** %8, align 8
  store %struct.nd_cmd_ars_start* %2, %struct.nd_cmd_ars_start** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %10, align 4
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %13, 24
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %55

18:                                               ; preds = %5
  %19 = load %struct.ars_state*, %struct.ars_state** %8, align 8
  %20 = getelementptr inbounds %struct.ars_state, %struct.ars_state* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load i32, i32* @jiffies, align 4
  %23 = load %struct.ars_state*, %struct.ars_state** %8, align 8
  %24 = getelementptr inbounds %struct.ars_state, %struct.ars_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @time_before(i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load i64, i64* @NFIT_ARS_START_BUSY, align 8
  %30 = load %struct.nd_cmd_ars_start*, %struct.nd_cmd_ars_start** %9, align 8
  %31 = getelementptr inbounds %struct.nd_cmd_ars_start, %struct.nd_cmd_ars_start* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  %34 = load i32*, i32** %11, align 8
  store i32 %33, i32* %34, align 4
  br label %51

35:                                               ; preds = %18
  %36 = load %struct.nd_cmd_ars_start*, %struct.nd_cmd_ars_start** %9, align 8
  %37 = getelementptr inbounds %struct.nd_cmd_ars_start, %struct.nd_cmd_ars_start* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.nd_cmd_ars_start*, %struct.nd_cmd_ars_start** %9, align 8
  %39 = getelementptr inbounds %struct.nd_cmd_ars_start, %struct.nd_cmd_ars_start* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.ars_state*, %struct.ars_state** %8, align 8
  %41 = load %struct.nfit_test*, %struct.nfit_test** %7, align 8
  %42 = getelementptr inbounds %struct.nfit_test, %struct.nfit_test* %41, i32 0, i32 0
  %43 = load %struct.nd_cmd_ars_start*, %struct.nd_cmd_ars_start** %9, align 8
  %44 = getelementptr inbounds %struct.nd_cmd_ars_start, %struct.nd_cmd_ars_start* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.nd_cmd_ars_start*, %struct.nd_cmd_ars_start** %9, align 8
  %47 = getelementptr inbounds %struct.nd_cmd_ars_start, %struct.nd_cmd_ars_start* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @post_ars_status(%struct.ars_state* %40, i32* %42, i32 %45, i32 %48)
  %50 = load i32*, i32** %11, align 8
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %35, %28
  %52 = load %struct.ars_state*, %struct.ars_state** %8, align 8
  %53 = getelementptr inbounds %struct.ars_state, %struct.ars_state* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %15
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i32 @post_ars_status(%struct.ars_state*, i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
