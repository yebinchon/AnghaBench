; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-ac97.c_snd_soc_ac97_parse_pinctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-ac97.c_snd_soc_ac97_parse_pinctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_ac97_reset_cfg = type { i32, i32, i32, %struct.pinctrl_state*, %struct.pinctrl_state*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.pinctrl_state = type { i32 }
%struct.pinctrl = type opaque

@.str = private unnamed_addr constant [23 x i8] c"Failed to get pinctrl\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ac97-reset\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Can't find pinctrl state ac97-reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ac97-warm-reset\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Can't find pinctrl state ac97-warm-reset\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ac97-running\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Can't find pinctrl state ac97-running\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"ac97-gpios\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Can't find ac97-sync gpio\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"AC97 link sync\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Failed requesting ac97-sync gpio\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Can't find ac97-sdata gpio %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"AC97 link sdata\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Failed requesting ac97-sdata gpio\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Can't find ac97-reset gpio\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"AC97 link reset\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Failed requesting ac97-reset gpio\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.snd_ac97_reset_cfg*)* @snd_soc_ac97_parse_pinctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_soc_ac97_parse_pinctl(%struct.device* %0, %struct.snd_ac97_reset_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.snd_ac97_reset_cfg*, align 8
  %6 = alloca %struct.pinctrl*, align 8
  %7 = alloca %struct.pinctrl_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.snd_ac97_reset_cfg* %1, %struct.snd_ac97_reset_cfg** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.pinctrl_state* @devm_pinctrl_get(%struct.device* %10)
  %12 = bitcast %struct.pinctrl_state* %11 to %struct.pinctrl*
  store %struct.pinctrl* %12, %struct.pinctrl** %6, align 8
  %13 = load %struct.pinctrl*, %struct.pinctrl** %6, align 8
  %14 = bitcast %struct.pinctrl* %13 to %struct.pinctrl_state*
  %15 = call i64 @IS_ERR(%struct.pinctrl_state* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.pinctrl*, %struct.pinctrl** %6, align 8
  %21 = bitcast %struct.pinctrl* %20 to %struct.pinctrl_state*
  %22 = call i32 @PTR_ERR(%struct.pinctrl_state* %21)
  store i32 %22, i32* %3, align 4
  br label %146

23:                                               ; preds = %2
  %24 = load %struct.pinctrl*, %struct.pinctrl** %6, align 8
  %25 = bitcast %struct.pinctrl* %24 to %struct.pinctrl_state*
  %26 = load %struct.snd_ac97_reset_cfg*, %struct.snd_ac97_reset_cfg** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ac97_reset_cfg, %struct.snd_ac97_reset_cfg* %26, i32 0, i32 6
  store %struct.pinctrl_state* %25, %struct.pinctrl_state** %27, align 8
  %28 = load %struct.pinctrl*, %struct.pinctrl** %6, align 8
  %29 = bitcast %struct.pinctrl* %28 to %struct.pinctrl_state*
  %30 = call %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl_state* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.pinctrl_state* %30, %struct.pinctrl_state** %7, align 8
  %31 = load %struct.pinctrl_state*, %struct.pinctrl_state** %7, align 8
  %32 = call i64 @IS_ERR(%struct.pinctrl_state* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.pinctrl_state*, %struct.pinctrl_state** %7, align 8
  %38 = call i32 @PTR_ERR(%struct.pinctrl_state* %37)
  store i32 %38, i32* %3, align 4
  br label %146

39:                                               ; preds = %23
  %40 = load %struct.pinctrl_state*, %struct.pinctrl_state** %7, align 8
  %41 = load %struct.snd_ac97_reset_cfg*, %struct.snd_ac97_reset_cfg** %5, align 8
  %42 = getelementptr inbounds %struct.snd_ac97_reset_cfg, %struct.snd_ac97_reset_cfg* %41, i32 0, i32 5
  store %struct.pinctrl_state* %40, %struct.pinctrl_state** %42, align 8
  %43 = load %struct.pinctrl*, %struct.pinctrl** %6, align 8
  %44 = bitcast %struct.pinctrl* %43 to %struct.pinctrl_state*
  %45 = call %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl_state* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store %struct.pinctrl_state* %45, %struct.pinctrl_state** %7, align 8
  %46 = load %struct.pinctrl_state*, %struct.pinctrl_state** %7, align 8
  %47 = call i64 @IS_ERR(%struct.pinctrl_state* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %52 = load %struct.pinctrl_state*, %struct.pinctrl_state** %7, align 8
  %53 = call i32 @PTR_ERR(%struct.pinctrl_state* %52)
  store i32 %53, i32* %3, align 4
  br label %146

54:                                               ; preds = %39
  %55 = load %struct.pinctrl_state*, %struct.pinctrl_state** %7, align 8
  %56 = load %struct.snd_ac97_reset_cfg*, %struct.snd_ac97_reset_cfg** %5, align 8
  %57 = getelementptr inbounds %struct.snd_ac97_reset_cfg, %struct.snd_ac97_reset_cfg* %56, i32 0, i32 4
  store %struct.pinctrl_state* %55, %struct.pinctrl_state** %57, align 8
  %58 = load %struct.pinctrl*, %struct.pinctrl** %6, align 8
  %59 = bitcast %struct.pinctrl* %58 to %struct.pinctrl_state*
  %60 = call %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl_state* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store %struct.pinctrl_state* %60, %struct.pinctrl_state** %7, align 8
  %61 = load %struct.pinctrl_state*, %struct.pinctrl_state** %7, align 8
  %62 = call i64 @IS_ERR(%struct.pinctrl_state* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %67 = load %struct.pinctrl_state*, %struct.pinctrl_state** %7, align 8
  %68 = call i32 @PTR_ERR(%struct.pinctrl_state* %67)
  store i32 %68, i32* %3, align 4
  br label %146

69:                                               ; preds = %54
  %70 = load %struct.pinctrl_state*, %struct.pinctrl_state** %7, align 8
  %71 = load %struct.snd_ac97_reset_cfg*, %struct.snd_ac97_reset_cfg** %5, align 8
  %72 = getelementptr inbounds %struct.snd_ac97_reset_cfg, %struct.snd_ac97_reset_cfg* %71, i32 0, i32 3
  store %struct.pinctrl_state* %70, %struct.pinctrl_state** %72, align 8
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = getelementptr inbounds %struct.device, %struct.device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @of_get_named_gpio(i32 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 0)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %146

83:                                               ; preds = %69
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @devm_gpio_request(%struct.device* %84, i32 %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %146

93:                                               ; preds = %83
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.snd_ac97_reset_cfg*, %struct.snd_ac97_reset_cfg** %5, align 8
  %96 = getelementptr inbounds %struct.snd_ac97_reset_cfg, %struct.snd_ac97_reset_cfg* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = getelementptr inbounds %struct.device, %struct.device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @of_get_named_gpio(i32 %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 1)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %93
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %3, align 4
  br label %146

108:                                              ; preds = %93
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @devm_gpio_request(%struct.device* %109, i32 %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %3, align 4
  br label %146

118:                                              ; preds = %108
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.snd_ac97_reset_cfg*, %struct.snd_ac97_reset_cfg** %5, align 8
  %121 = getelementptr inbounds %struct.snd_ac97_reset_cfg, %struct.snd_ac97_reset_cfg* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = getelementptr inbounds %struct.device, %struct.device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @of_get_named_gpio(i32 %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 2)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %118
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %3, align 4
  br label %146

132:                                              ; preds = %118
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @devm_gpio_request(%struct.device* %133, i32 %134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %3, align 4
  br label %146

142:                                              ; preds = %132
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.snd_ac97_reset_cfg*, %struct.snd_ac97_reset_cfg** %5, align 8
  %145 = getelementptr inbounds %struct.snd_ac97_reset_cfg, %struct.snd_ac97_reset_cfg* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %142, %138, %128, %114, %103, %89, %79, %64, %49, %34, %17
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.pinctrl_state* @devm_pinctrl_get(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_state*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.pinctrl_state*) #1

declare dso_local %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl_state*, i8*) #1

declare dso_local i32 @of_get_named_gpio(i32, i8*, i32) #1

declare dso_local i32 @devm_gpio_request(%struct.device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
