; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_nocodec.c_sof_nocodec_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_nocodec.c_sof_nocodec_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_sof_pdata = type { i8*, i32, i32 }
%struct.snd_soc_acpi_mach = type { i8* }
%struct.sof_dev_desc = type { i32, i32 }
%struct.snd_sof_dsp_ops = type { i32 }
%struct.snd_soc_dai_link = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sof-nocodec\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sof_nocodec_card = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sof_nocodec_setup(%struct.device* %0, %struct.snd_sof_pdata* %1, %struct.snd_soc_acpi_mach* %2, %struct.sof_dev_desc* %3, %struct.snd_sof_dsp_ops* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.snd_sof_pdata*, align 8
  %9 = alloca %struct.snd_soc_acpi_mach*, align 8
  %10 = alloca %struct.sof_dev_desc*, align 8
  %11 = alloca %struct.snd_sof_dsp_ops*, align 8
  %12 = alloca %struct.snd_soc_dai_link*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.snd_sof_pdata* %1, %struct.snd_sof_pdata** %8, align 8
  store %struct.snd_soc_acpi_mach* %2, %struct.snd_soc_acpi_mach** %9, align 8
  store %struct.sof_dev_desc* %3, %struct.sof_dev_desc** %10, align 8
  store %struct.snd_sof_dsp_ops* %4, %struct.snd_sof_dsp_ops** %11, align 8
  %14 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %9, align 8
  %15 = icmp ne %struct.snd_soc_acpi_mach* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %57

19:                                               ; preds = %5
  %20 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %8, align 8
  %21 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %9, align 8
  %23 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %24 = load %struct.sof_dev_desc*, %struct.sof_dev_desc** %10, align 8
  %25 = getelementptr inbounds %struct.sof_dev_desc, %struct.sof_dev_desc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %8, align 8
  %28 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.sof_dev_desc*, %struct.sof_dev_desc** %10, align 8
  %30 = getelementptr inbounds %struct.sof_dev_desc, %struct.sof_dev_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %8, align 8
  %33 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = load %struct.snd_sof_dsp_ops*, %struct.snd_sof_dsp_ops** %11, align 8
  %36 = getelementptr inbounds %struct.snd_sof_dsp_ops, %struct.snd_sof_dsp_ops* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.snd_soc_dai_link* @devm_kzalloc(%struct.device* %34, i32 %40, i32 %41)
  store %struct.snd_soc_dai_link* %42, %struct.snd_soc_dai_link** %12, align 8
  %43 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %12, align 8
  %44 = icmp ne %struct.snd_soc_dai_link* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %19
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %57

48:                                               ; preds = %19
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = load %struct.snd_sof_dsp_ops*, %struct.snd_sof_dsp_ops** %11, align 8
  %51 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %12, align 8
  %52 = load %struct.snd_sof_dsp_ops*, %struct.snd_sof_dsp_ops** %11, align 8
  %53 = getelementptr inbounds %struct.snd_sof_dsp_ops, %struct.snd_sof_dsp_ops* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sof_nocodec_bes_setup(%struct.device* %49, %struct.snd_sof_dsp_ops* %50, %struct.snd_soc_dai_link* %51, i32 %54, i32* @sof_nocodec_card)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %48, %45, %16
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.snd_soc_dai_link* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @sof_nocodec_bes_setup(%struct.device*, %struct.snd_sof_dsp_ops*, %struct.snd_soc_dai_link*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
