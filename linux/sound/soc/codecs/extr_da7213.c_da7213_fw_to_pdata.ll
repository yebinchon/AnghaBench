; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_fw_to_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_fw_to_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da7213_platform_data = type { i32, i32, i32, i8*, i8* }
%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"dlg,micbias1-lvl\00", align 1
@DA7213_MICBIAS_2_2V = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"dlg,micbias2-lvl\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"dlg,dmic-data-sel\00", align 1
@DA7213_DMIC_DATA_LRISE_RFALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"dlg,dmic-samplephase\00", align 1
@DA7213_DMIC_SAMPLE_ON_CLKEDGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"dlg,dmic-clkrate\00", align 1
@DA7213_DMIC_CLK_3_0MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.da7213_platform_data* (%struct.snd_soc_component*)* @da7213_fw_to_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.da7213_platform_data* @da7213_fw_to_pdata(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.da7213_platform_data*, align 8
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.da7213_platform_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.da7213_platform_data* @devm_kzalloc(%struct.device* %13, i32 32, i32 %14)
  store %struct.da7213_platform_data* %15, %struct.da7213_platform_data** %5, align 8
  %16 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %17 = icmp ne %struct.da7213_platform_data* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store %struct.da7213_platform_data* null, %struct.da7213_platform_data** %2, align 8
  br label %91

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i64 @device_property_read_u32(%struct.device* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %7)
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @da7213_of_micbias_lvl(%struct.snd_soc_component* %24, i32 %25)
  %27 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %28 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  br label %33

29:                                               ; preds = %19
  %30 = load i8*, i8** @DA7213_MICBIAS_2_2V, align 8
  %31 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %32 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i64 @device_property_read_u32(%struct.device* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i8* @da7213_of_micbias_lvl(%struct.snd_soc_component* %38, i32 %39)
  %41 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %42 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  br label %47

43:                                               ; preds = %33
  %44 = load i8*, i8** @DA7213_MICBIAS_2_2V, align 8
  %45 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %46 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 @device_property_read_string(%struct.device* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %6)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @da7213_of_dmic_data_sel(%struct.snd_soc_component* %52, i8* %53)
  %55 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %56 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %61

57:                                               ; preds = %47
  %58 = load i32, i32* @DA7213_DMIC_DATA_LRISE_RFALL, align 4
  %59 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %60 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %57, %51
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @device_property_read_string(%struct.device* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %6)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @da7213_of_dmic_samplephase(%struct.snd_soc_component* %66, i8* %67)
  %69 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %70 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %75

71:                                               ; preds = %61
  %72 = load i32, i32* @DA7213_DMIC_SAMPLE_ON_CLKEDGE, align 4
  %73 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %74 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %65
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i64 @device_property_read_u32(%struct.device* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %7)
  %78 = icmp sge i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @da7213_of_dmic_clkrate(%struct.snd_soc_component* %80, i32 %81)
  %83 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %84 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %89

85:                                               ; preds = %75
  %86 = load i32, i32* @DA7213_DMIC_CLK_3_0MHZ, align 4
  %87 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %88 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %85, %79
  %90 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  store %struct.da7213_platform_data* %90, %struct.da7213_platform_data** %2, align 8
  br label %91

91:                                               ; preds = %89, %18
  %92 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %2, align 8
  ret %struct.da7213_platform_data* %92
}

declare dso_local %struct.da7213_platform_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i8* @da7213_of_micbias_lvl(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @device_property_read_string(%struct.device*, i8*, i8**) #1

declare dso_local i32 @da7213_of_dmic_data_sel(%struct.snd_soc_component*, i8*) #1

declare dso_local i32 @da7213_of_dmic_samplephase(%struct.snd_soc_component*, i8*) #1

declare dso_local i32 @da7213_of_dmic_clkrate(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
