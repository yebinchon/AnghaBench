; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_cmd_ars_status.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_cmd_ars_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ars_state = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nd_cmd_ars_status = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NFIT_ARS_STATUS_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ars_state*, %struct.nd_cmd_ars_status*, i32, i32*)* @nfit_test_cmd_ars_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfit_test_cmd_ars_status(%struct.ars_state* %0, %struct.nd_cmd_ars_status* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ars_state*, align 8
  %7 = alloca %struct.nd_cmd_ars_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ars_state* %0, %struct.ars_state** %6, align 8
  store %struct.nd_cmd_ars_status* %1, %struct.nd_cmd_ars_status** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.ars_state*, %struct.ars_state** %6, align 8
  %12 = getelementptr inbounds %struct.ars_state, %struct.ars_state* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %10, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %58

20:                                               ; preds = %4
  %21 = load %struct.ars_state*, %struct.ars_state** %6, align 8
  %22 = getelementptr inbounds %struct.ars_state, %struct.ars_state* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load i32, i32* @jiffies, align 4
  %25 = load %struct.ars_state*, %struct.ars_state** %6, align 8
  %26 = getelementptr inbounds %struct.ars_state, %struct.ars_state* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @time_before(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @memset(%struct.nd_cmd_ars_status* %31, i32 0, i32 %32)
  %34 = load i32, i32* @NFIT_ARS_STATUS_BUSY, align 4
  %35 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %7, align 8
  %36 = getelementptr inbounds %struct.nd_cmd_ars_status, %struct.nd_cmd_ars_status* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %7, align 8
  %38 = getelementptr inbounds %struct.nd_cmd_ars_status, %struct.nd_cmd_ars_status* %37, i32 0, i32 0
  store i32 8, i32* %38, align 4
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  br label %54

42:                                               ; preds = %20
  %43 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %7, align 8
  %44 = load %struct.ars_state*, %struct.ars_state** %6, align 8
  %45 = getelementptr inbounds %struct.ars_state, %struct.ars_state* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load %struct.ars_state*, %struct.ars_state** %6, align 8
  %48 = getelementptr inbounds %struct.ars_state, %struct.ars_state* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(%struct.nd_cmd_ars_status* %43, %struct.TYPE_2__* %46, i32 %51)
  %53 = load i32*, i32** %9, align 8
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %42, %30
  %55 = load %struct.ars_state*, %struct.ars_state** %6, align 8
  %56 = getelementptr inbounds %struct.ars_state, %struct.ars_state* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %17
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i32 @memset(%struct.nd_cmd_ars_status*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.nd_cmd_ars_status*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
