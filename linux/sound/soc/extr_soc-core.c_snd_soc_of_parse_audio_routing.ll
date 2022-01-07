; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_of_parse_audio_routing.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_of_parse_audio_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32, %struct.snd_soc_dapm_route*, %struct.TYPE_3__* }
%struct.snd_soc_dapm_route = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"ASoC: Property '%s' does not exist or its length is not even\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"ASoC: Property '%s's length is zero\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"ASoC: Could not allocate DAPM route table\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"ASoC: Property '%s' index %d could not be read: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_dapm_route*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @of_property_count_strings(%struct.device_node* %16, i8* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21, %2
  %26 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %27 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %28, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %128

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %40 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %128

46:                                               ; preds = %33
  %47 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %48 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.snd_soc_dapm_route* @devm_kcalloc(%struct.TYPE_3__* %49, i32 %50, i32 8, i32 %51)
  store %struct.snd_soc_dapm_route* %52, %struct.snd_soc_dapm_route** %8, align 8
  %53 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %8, align 8
  %54 = icmp ne %struct.snd_soc_dapm_route* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %46
  %56 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %57 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %128

62:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %118, %62
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %121

67:                                               ; preds = %63
  %68 = load %struct.device_node*, %struct.device_node** %6, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = mul nsw i32 2, %70
  %72 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %72, i64 %74
  %76 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %75, i32 0, i32 1
  %77 = call i32 @of_property_read_string_index(%struct.device_node* %68, i8* %69, i32 %71, i32* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %67
  %81 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %82 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %81, i32 0, i32 2
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 2, %85
  %87 = load i32, i32* %10, align 4
  %88 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %84, i32 %86, i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %128

91:                                               ; preds = %67
  %92 = load %struct.device_node*, %struct.device_node** %6, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = mul nsw i32 2, %94
  %96 = add nsw i32 %95, 1
  %97 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %97, i64 %99
  %101 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %100, i32 0, i32 0
  %102 = call i32 @of_property_read_string_index(%struct.device_node* %92, i8* %93, i32 %96, i32* %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %91
  %106 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %107 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %106, i32 0, i32 2
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = mul nsw i32 2, %110
  %112 = add nsw i32 %111, 1
  %113 = load i32, i32* %10, align 4
  %114 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %108, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %109, i32 %112, i32 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %128

117:                                              ; preds = %91
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %63

121:                                              ; preds = %63
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %124 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %8, align 8
  %126 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %127 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %126, i32 0, i32 1
  store %struct.snd_soc_dapm_route* %125, %struct.snd_soc_dapm_route** %127, align 8
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %121, %105, %80, %55, %38, %25
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @of_property_count_strings(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local %struct.snd_soc_dapm_route* @devm_kcalloc(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_string_index(%struct.device_node*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
