; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.q6asm_dai_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"iommus\00", align 1
@SID_MASK_DEFAULT = common dso_local global i32 0, align 4
@q6asm_fe_dai_component = common dso_local global i32 0, align 4
@q6asm_fe_dais = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @q6asm_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6asm_dai_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_phandle_args, align 8
  %7 = alloca %struct.q6asm_dai_data*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.q6asm_dai_data* @devm_kzalloc(%struct.device* %14, i32 4, i32 %15)
  store %struct.q6asm_dai_data* %16, %struct.q6asm_dai_data** %7, align 8
  %17 = load %struct.q6asm_dai_data*, %struct.q6asm_dai_data** %7, align 8
  %18 = icmp ne %struct.q6asm_dai_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %51

22:                                               ; preds = %1
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = call i32 @of_parse_phandle_with_fixed_args(%struct.device_node* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1, i32 0, %struct.of_phandle_args* %6)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.q6asm_dai_data*, %struct.q6asm_dai_data** %7, align 8
  %29 = getelementptr inbounds %struct.q6asm_dai_data, %struct.q6asm_dai_data* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 4
  br label %39

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SID_MASK_DEFAULT, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.q6asm_dai_data*, %struct.q6asm_dai_data** %7, align 8
  %38 = getelementptr inbounds %struct.q6asm_dai_data, %struct.q6asm_dai_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %30, %27
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.q6asm_dai_data*, %struct.q6asm_dai_data** %7, align 8
  %42 = call i32 @dev_set_drvdata(%struct.device* %40, %struct.q6asm_dai_data* %41)
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load %struct.q6asm_dai_data*, %struct.q6asm_dai_data** %7, align 8
  %45 = call i32 @of_q6asm_parse_dai_data(%struct.device* %43, %struct.q6asm_dai_data* %44)
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i32, i32* @q6asm_fe_dais, align 4
  %48 = load i32, i32* @q6asm_fe_dais, align 4
  %49 = call i32 @ARRAY_SIZE(i32 %48)
  %50 = call i32 @devm_snd_soc_register_component(%struct.device* %46, i32* @q6asm_fe_dai_component, i32 %47, i32 %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %39, %19
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.q6asm_dai_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_parse_phandle_with_fixed_args(%struct.device_node*, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.q6asm_dai_data*) #1

declare dso_local i32 @of_q6asm_parse_dai_data(%struct.device*, %struct.q6asm_dai_data*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
