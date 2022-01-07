; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6adm.c_q6adm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6adm.c_q6adm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apr_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.q6adm = type { i32, i32, i32, i32, i32, %struct.device*, %struct.apr_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apr_device*)* @q6adm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6adm_probe(%struct.apr_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.apr_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.q6adm*, align 8
  store %struct.apr_device* %0, %struct.apr_device** %3, align 8
  %6 = load %struct.apr_device*, %struct.apr_device** %3, align 8
  %7 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %6, i32 0, i32 1
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.apr_device*, %struct.apr_device** %3, align 8
  %9 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %8, i32 0, i32 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.q6adm* @devm_kzalloc(%struct.device* %9, i32 40, i32 %10)
  store %struct.q6adm* %11, %struct.q6adm** %5, align 8
  %12 = load %struct.q6adm*, %struct.q6adm** %5, align 8
  %13 = icmp ne %struct.q6adm* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.apr_device*, %struct.apr_device** %3, align 8
  %19 = load %struct.q6adm*, %struct.q6adm** %5, align 8
  %20 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %19, i32 0, i32 6
  store %struct.apr_device* %18, %struct.apr_device** %20, align 8
  %21 = load %struct.apr_device*, %struct.apr_device** %3, align 8
  %22 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %21, i32 0, i32 1
  %23 = load %struct.q6adm*, %struct.q6adm** %5, align 8
  %24 = call i32 @dev_set_drvdata(%struct.device* %22, %struct.q6adm* %23)
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.q6adm*, %struct.q6adm** %5, align 8
  %27 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %26, i32 0, i32 5
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load %struct.apr_device*, %struct.apr_device** %3, align 8
  %29 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.q6adm*, %struct.q6adm** %5, align 8
  %32 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %31, i32 0, i32 4
  %33 = call i32 @q6core_get_svc_api_info(i32 %30, i32* %32)
  %34 = load %struct.q6adm*, %struct.q6adm** %5, align 8
  %35 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %34, i32 0, i32 3
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.q6adm*, %struct.q6adm** %5, align 8
  %38 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %37, i32 0, i32 2
  %39 = call i32 @init_waitqueue_head(i32* %38)
  %40 = load %struct.q6adm*, %struct.q6adm** %5, align 8
  %41 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %40, i32 0, i32 1
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.q6adm*, %struct.q6adm** %5, align 8
  %44 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 @of_platform_populate(i32 %48, i32* null, i32* null, %struct.device* %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %17, %14
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.q6adm* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.q6adm*) #1

declare dso_local i32 @q6core_get_svc_api_info(i32, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @of_platform_populate(i32, i32*, i32*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
