; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_pcm_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_pcm_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2s_dev_data = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"ACP de-init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ACP de-initialized\0A\00", align 1
@mmACP_EXTERNAL_INTR_ENB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @acp3x_pcm_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp3x_pcm_runtime_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2s_dev_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.i2s_dev_data* @dev_get_drvdata(%struct.device* %5)
  store %struct.i2s_dev_data* %6, %struct.i2s_dev_data** %4, align 8
  %7 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %4, align 8
  %8 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @acp3x_deinit(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %2, align 8
  %15 = call i32 @dev_err(%struct.device* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %2, align 8
  %18 = call i32 @dev_info(%struct.device* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %4, align 8
  %21 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @mmACP_EXTERNAL_INTR_ENB, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @rv_writel(i32 0, i64 %24)
  ret i32 0
}

declare dso_local %struct.i2s_dev_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @acp3x_deinit(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @rv_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
