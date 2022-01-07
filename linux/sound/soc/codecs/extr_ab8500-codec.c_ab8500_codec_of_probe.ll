; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ab8500-codec.c_ab8500_codec_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ab8500-codec.c_ab8500_codec_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.ab8500_codec_platform_data = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [35 x i8] c"stericsson,amic1-type-single-ended\00", align 1
@AMIC_TYPE_SINGLE_ENDED = common dso_local global i8* null, align 8
@AMIC_TYPE_DIFFERENTIAL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"stericsson,amic2-type-single-ended\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"stericsson,amic1a-bias-vamic2\00", align 1
@AMIC_MICBIAS_VAMIC2 = common dso_local global i8* null, align 8
@AMIC_MICBIAS_VAMIC1 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"stericsson,amic1b-bias-vamic2\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"stericsson,amic2-bias-vamic1\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"stericsson,earpeice-cmv\00", align 1
@EAR_CMV_0_95V = common dso_local global i8* null, align 8
@EAR_CMV_1_10V = common dso_local global i8* null, align 8
@EAR_CMV_1_27V = common dso_local global i8* null, align 8
@EAR_CMV_1_58V = common dso_local global i8* null, align 8
@EAR_CMV_UNKNOWN = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"Unsuitable earpiece voltage found in DT\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"No earpiece voltage found in DT - using default\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device_node*, %struct.ab8500_codec_platform_data*)* @ab8500_codec_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_codec_of_probe(%struct.device* %0, %struct.device_node* %1, %struct.ab8500_codec_platform_data* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.ab8500_codec_platform_data*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store %struct.ab8500_codec_platform_data* %2, %struct.ab8500_codec_platform_data** %6, align 8
  %8 = load %struct.device_node*, %struct.device_node** %5, align 8
  %9 = call i64 @of_property_read_bool(%struct.device_node* %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i8*, i8** @AMIC_TYPE_SINGLE_ENDED, align 8
  %13 = load %struct.ab8500_codec_platform_data*, %struct.ab8500_codec_platform_data** %6, align 8
  %14 = getelementptr inbounds %struct.ab8500_codec_platform_data, %struct.ab8500_codec_platform_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  store i8* %12, i8** %15, align 8
  br label %21

16:                                               ; preds = %3
  %17 = load i8*, i8** @AMIC_TYPE_DIFFERENTIAL, align 8
  %18 = load %struct.ab8500_codec_platform_data*, %struct.ab8500_codec_platform_data** %6, align 8
  %19 = getelementptr inbounds %struct.ab8500_codec_platform_data, %struct.ab8500_codec_platform_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  store i8* %17, i8** %20, align 8
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = call i64 @of_property_read_bool(%struct.device_node* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i8*, i8** @AMIC_TYPE_SINGLE_ENDED, align 8
  %27 = load %struct.ab8500_codec_platform_data*, %struct.ab8500_codec_platform_data** %6, align 8
  %28 = getelementptr inbounds %struct.ab8500_codec_platform_data, %struct.ab8500_codec_platform_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i8* %26, i8** %29, align 8
  br label %35

30:                                               ; preds = %21
  %31 = load i8*, i8** @AMIC_TYPE_DIFFERENTIAL, align 8
  %32 = load %struct.ab8500_codec_platform_data*, %struct.ab8500_codec_platform_data** %6, align 8
  %33 = getelementptr inbounds %struct.ab8500_codec_platform_data, %struct.ab8500_codec_platform_data* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i8* %31, i8** %34, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = call i64 @of_property_read_bool(%struct.device_node* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i8*, i8** @AMIC_MICBIAS_VAMIC2, align 8
  %41 = load %struct.ab8500_codec_platform_data*, %struct.ab8500_codec_platform_data** %6, align 8
  %42 = getelementptr inbounds %struct.ab8500_codec_platform_data, %struct.ab8500_codec_platform_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i8* %40, i8** %43, align 8
  br label %49

44:                                               ; preds = %35
  %45 = load i8*, i8** @AMIC_MICBIAS_VAMIC1, align 8
  %46 = load %struct.ab8500_codec_platform_data*, %struct.ab8500_codec_platform_data** %6, align 8
  %47 = getelementptr inbounds %struct.ab8500_codec_platform_data, %struct.ab8500_codec_platform_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i8* %45, i8** %48, align 8
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.device_node*, %struct.device_node** %5, align 8
  %51 = call i64 @of_property_read_bool(%struct.device_node* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i8*, i8** @AMIC_MICBIAS_VAMIC2, align 8
  %55 = load %struct.ab8500_codec_platform_data*, %struct.ab8500_codec_platform_data** %6, align 8
  %56 = getelementptr inbounds %struct.ab8500_codec_platform_data, %struct.ab8500_codec_platform_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  br label %63

58:                                               ; preds = %49
  %59 = load i8*, i8** @AMIC_MICBIAS_VAMIC1, align 8
  %60 = load %struct.ab8500_codec_platform_data*, %struct.ab8500_codec_platform_data** %6, align 8
  %61 = getelementptr inbounds %struct.ab8500_codec_platform_data, %struct.ab8500_codec_platform_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.device_node*, %struct.device_node** %5, align 8
  %65 = call i64 @of_property_read_bool(%struct.device_node* %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i8*, i8** @AMIC_MICBIAS_VAMIC1, align 8
  %69 = load %struct.ab8500_codec_platform_data*, %struct.ab8500_codec_platform_data** %6, align 8
  %70 = getelementptr inbounds %struct.ab8500_codec_platform_data, %struct.ab8500_codec_platform_data* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  br label %77

72:                                               ; preds = %63
  %73 = load i8*, i8** @AMIC_MICBIAS_VAMIC2, align 8
  %74 = load %struct.ab8500_codec_platform_data*, %struct.ab8500_codec_platform_data** %6, align 8
  %75 = getelementptr inbounds %struct.ab8500_codec_platform_data, %struct.ab8500_codec_platform_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i8* %73, i8** %76, align 8
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.device_node*, %struct.device_node** %5, align 8
  %79 = call i32 @of_property_read_u32(%struct.device_node* %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* %7)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %106, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %7, align 4
  switch i32 %82, label %99 [
    i32 950, label %83
    i32 1100, label %87
    i32 1270, label %91
    i32 1580, label %95
  ]

83:                                               ; preds = %81
  %84 = load i8*, i8** @EAR_CMV_0_95V, align 8
  %85 = load %struct.ab8500_codec_platform_data*, %struct.ab8500_codec_platform_data** %6, align 8
  %86 = getelementptr inbounds %struct.ab8500_codec_platform_data, %struct.ab8500_codec_platform_data* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %105

87:                                               ; preds = %81
  %88 = load i8*, i8** @EAR_CMV_1_10V, align 8
  %89 = load %struct.ab8500_codec_platform_data*, %struct.ab8500_codec_platform_data** %6, align 8
  %90 = getelementptr inbounds %struct.ab8500_codec_platform_data, %struct.ab8500_codec_platform_data* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  br label %105

91:                                               ; preds = %81
  %92 = load i8*, i8** @EAR_CMV_1_27V, align 8
  %93 = load %struct.ab8500_codec_platform_data*, %struct.ab8500_codec_platform_data** %6, align 8
  %94 = getelementptr inbounds %struct.ab8500_codec_platform_data, %struct.ab8500_codec_platform_data* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  br label %105

95:                                               ; preds = %81
  %96 = load i8*, i8** @EAR_CMV_1_58V, align 8
  %97 = load %struct.ab8500_codec_platform_data*, %struct.ab8500_codec_platform_data** %6, align 8
  %98 = getelementptr inbounds %struct.ab8500_codec_platform_data, %struct.ab8500_codec_platform_data* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  br label %105

99:                                               ; preds = %81
  %100 = load i8*, i8** @EAR_CMV_UNKNOWN, align 8
  %101 = load %struct.ab8500_codec_platform_data*, %struct.ab8500_codec_platform_data** %6, align 8
  %102 = getelementptr inbounds %struct.ab8500_codec_platform_data, %struct.ab8500_codec_platform_data* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = call i32 @dev_err(%struct.device* %103, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %105

105:                                              ; preds = %99, %95, %91, %87, %83
  br label %112

106:                                              ; preds = %77
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = call i32 @dev_warn(%struct.device* %107, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %109 = load i8*, i8** @EAR_CMV_0_95V, align 8
  %110 = load %struct.ab8500_codec_platform_data*, %struct.ab8500_codec_platform_data** %6, align 8
  %111 = getelementptr inbounds %struct.ab8500_codec_platform_data, %struct.ab8500_codec_platform_data* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %106, %105
  ret void
}

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
