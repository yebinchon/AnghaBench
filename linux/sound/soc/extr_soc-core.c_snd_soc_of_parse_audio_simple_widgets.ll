; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_of_parse_audio_simple_widgets.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_of_parse_audio_simple_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i8* }
%struct.snd_soc_card = type { i32, %struct.snd_soc_dapm_widget*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"ASoC: Property '%s' does not exist\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"ASoC: Property '%s' length is not even\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"ASoC: Property '%s's length is zero\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"ASoC: Could not allocate memory for widgets\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"ASoC: Property '%s' index %d read error:%d\0A\00", align 1
@simple_widgets = common dso_local global %struct.snd_soc_dapm_widget* null, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"ASoC: DAPM widget '%s' is not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_of_parse_audio_simple_widgets(%struct.snd_soc_card* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.snd_soc_dapm_widget*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %6, align 8
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @of_property_count_strings(%struct.device_node* %19, i8* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %26 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %186

32:                                               ; preds = %2
  %33 = load i32, i32* %12, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %38 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %186

44:                                               ; preds = %32
  %45 = load i32, i32* %12, align 4
  %46 = sdiv i32 %45, 2
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %51 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %186

57:                                               ; preds = %44
  %58 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %59 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.snd_soc_dapm_widget* @devm_kcalloc(%struct.TYPE_3__* %60, i32 %61, i32 8, i32 %62)
  store %struct.snd_soc_dapm_widget* %63, %struct.snd_soc_dapm_widget** %7, align 8
  %64 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %65 = icmp ne %struct.snd_soc_dapm_widget* %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %57
  %67 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %68 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %69, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %186

73:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %176, %73
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %179

78:                                               ; preds = %74
  %79 = load %struct.device_node*, %struct.device_node** %6, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = mul nsw i32 2, %81
  %83 = call i32 @of_property_read_string_index(%struct.device_node* %79, i8* %80, i32 %82, i8** %8)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %78
  %87 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %88 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = mul nsw i32 2, %91
  %93 = load i32, i32* %13, align 4
  %94 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %90, i32 %92, i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %186

97:                                               ; preds = %78
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %132, %97
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** @simple_widgets, align 8
  %101 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_widget* %100)
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %135

103:                                              ; preds = %98
  %104 = load i8*, i8** %8, align 8
  %105 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** @simple_widgets, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %105, i64 %107
  %109 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** @simple_widgets, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %111, i64 %113
  %115 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @strlen(i8* %116)
  %118 = call i32 @strncmp(i8* %104, i8* %110, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %131, label %120

120:                                              ; preds = %103
  %121 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %121, i64 %123
  %125 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** @simple_widgets, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %125, i64 %127
  %129 = bitcast %struct.snd_soc_dapm_widget* %124 to i8*
  %130 = bitcast %struct.snd_soc_dapm_widget* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %129, i8* align 8 %130, i64 8, i1 false)
  br label %135

131:                                              ; preds = %103
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %98

135:                                              ; preds = %120, %98
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** @simple_widgets, align 8
  %138 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_widget* %137)
  %139 = icmp sge i32 %136, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %142 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %141, i32 0, i32 2
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %143, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %186

148:                                              ; preds = %135
  %149 = load %struct.device_node*, %struct.device_node** %6, align 8
  %150 = load i8*, i8** %5, align 8
  %151 = load i32, i32* %10, align 4
  %152 = mul nsw i32 2, %151
  %153 = add nsw i32 %152, 1
  %154 = call i32 @of_property_read_string_index(%struct.device_node* %149, i8* %150, i32 %153, i8** %9)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %148
  %158 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %159 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %158, i32 0, i32 2
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = load i8*, i8** %5, align 8
  %162 = load i32, i32* %10, align 4
  %163 = mul nsw i32 2, %162
  %164 = add nsw i32 %163, 1
  %165 = load i32, i32* %13, align 4
  %166 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %160, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %161, i32 %164, i32 %165)
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %186

169:                                              ; preds = %148
  %170 = load i8*, i8** %9, align 8
  %171 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %171, i64 %173
  %175 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %174, i32 0, i32 0
  store i8* %170, i8** %175, align 8
  br label %176

176:                                              ; preds = %169
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %10, align 4
  br label %74

179:                                              ; preds = %74
  %180 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %181 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %182 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %181, i32 0, i32 1
  store %struct.snd_soc_dapm_widget* %180, %struct.snd_soc_dapm_widget** %182, align 8
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %185 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %179, %157, %140, %86, %66, %49, %36, %24
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @of_property_count_strings(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local %struct.snd_soc_dapm_widget* @devm_kcalloc(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_string_index(%struct.device_node*, i8*, i32, i8**) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_soc_dapm_widget*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
