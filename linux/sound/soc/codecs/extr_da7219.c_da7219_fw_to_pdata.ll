; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_fw_to_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_fw_to_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da7219_pdata = type { i8**, i32, i32, i32 }
%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"da7219-dai-wclk\00", align 1
@DA7219_DAI_WCLK_IDX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"da7219-dai-bclk\00", align 1
@DA7219_DAI_BCLK_IDX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@DA7219_DAI_NUM_CLKS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Using default DAI clk names: %s, %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"dlg,micbias-lvl\00", align 1
@DA7219_MICBIAS_2_2V = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"dlg,mic-amp-in-sel\00", align 1
@DA7219_MIC_AMP_IN_SEL_DIFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.da7219_pdata* (%struct.snd_soc_component*)* @da7219_fw_to_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.da7219_pdata* @da7219_fw_to_pdata(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.da7219_pdata*, align 8
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.da7219_pdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.da7219_pdata* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.da7219_pdata* %13, %struct.da7219_pdata** %5, align 8
  %14 = load %struct.da7219_pdata*, %struct.da7219_pdata** %5, align 8
  %15 = icmp ne %struct.da7219_pdata* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.da7219_pdata* null, %struct.da7219_pdata** %2, align 8
  br label %84

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @device_property_read_bool(%struct.device* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.da7219_pdata*, %struct.da7219_pdata** %5, align 8
  %21 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.da7219_pdata*, %struct.da7219_pdata** %5, align 8
  %23 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = load i64, i64* @DA7219_DAI_WCLK_IDX, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  %27 = load %struct.da7219_pdata*, %struct.da7219_pdata** %5, align 8
  %28 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = load i64, i64* @DA7219_DAI_BCLK_IDX, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %31, align 8
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.da7219_pdata*, %struct.da7219_pdata** %5, align 8
  %34 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* @DA7219_DAI_NUM_CLKS, align 4
  %37 = call i64 @device_property_read_string_array(%struct.device* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %35, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %17
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.da7219_pdata*, %struct.da7219_pdata** %5, align 8
  %42 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = load i64, i64* @DA7219_DAI_WCLK_IDX, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.da7219_pdata*, %struct.da7219_pdata** %5, align 8
  %48 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = load i64, i64* @DA7219_DAI_BCLK_IDX, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @dev_warn(%struct.device* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %46, i8* %52)
  br label %54

54:                                               ; preds = %39, %17
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i64 @device_property_read_u32(%struct.device* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* %7)
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @da7219_fw_micbias_lvl(%struct.device* %59, i32 %60)
  %62 = load %struct.da7219_pdata*, %struct.da7219_pdata** %5, align 8
  %63 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %68

64:                                               ; preds = %54
  %65 = load i32, i32* @DA7219_MICBIAS_2_2V, align 4
  %66 = load %struct.da7219_pdata*, %struct.da7219_pdata** %5, align 8
  %67 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %58
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i32 @device_property_read_string(%struct.device* %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8** %6)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @da7219_fw_mic_amp_in_sel(%struct.device* %73, i8* %74)
  %76 = load %struct.da7219_pdata*, %struct.da7219_pdata** %5, align 8
  %77 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  br label %82

78:                                               ; preds = %68
  %79 = load i32, i32* @DA7219_MIC_AMP_IN_SEL_DIFF, align 4
  %80 = load %struct.da7219_pdata*, %struct.da7219_pdata** %5, align 8
  %81 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %72
  %83 = load %struct.da7219_pdata*, %struct.da7219_pdata** %5, align 8
  store %struct.da7219_pdata* %83, %struct.da7219_pdata** %2, align 8
  br label %84

84:                                               ; preds = %82, %16
  %85 = load %struct.da7219_pdata*, %struct.da7219_pdata** %2, align 8
  ret %struct.da7219_pdata* %85
}

declare dso_local %struct.da7219_pdata* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i64 @device_property_read_string_array(%struct.device*, i8*, i8**, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8*, i8*) #1

declare dso_local i64 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @da7219_fw_micbias_lvl(%struct.device*, i32) #1

declare dso_local i32 @device_property_read_string(%struct.device*, i8*, i8**) #1

declare dso_local i32 @da7219_fw_mic_amp_in_sel(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
