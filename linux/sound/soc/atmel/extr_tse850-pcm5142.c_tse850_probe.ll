; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_tse850-pcm5142.c_tse850_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_tse850-pcm5142.c_tse850_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.tse850_priv = type { i32, i32, i32, i8*, i8*, i8*, i8* }

@tse850_card = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to init dt info\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"axentia,add\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to get 'add' gpio\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"axentia,loop1\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to get 'loop1' gpio\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"axentia,loop2\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to get 'loop2' gpio\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"axentia,ana\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to get 'ana' regulator\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"failed to enable the 'ana' regulator\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"snd_soc_register_card failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tse850_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tse850_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.tse850_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.snd_soc_card* @tse850_card, %struct.snd_soc_card** %4, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %10, i32 0, i32 0
  store %struct.device* %9, %struct.device** %11, align 8
  store %struct.device* %9, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.tse850_priv* @devm_kzalloc(%struct.device* %12, i32 48, i32 %13)
  store %struct.tse850_priv* %14, %struct.tse850_priv** %6, align 8
  %15 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %16 = icmp ne %struct.tse850_priv* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %171

20:                                               ; preds = %1
  %21 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %22 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %23 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %21, %struct.tse850_priv* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call i32 @tse850_dt_init(%struct.platform_device* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %171

32:                                               ; preds = %20
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %35 = call i8* @devm_gpiod_get(%struct.device* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %37 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %39 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %38, i32 0, i32 6
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %32
  %44 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %45 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %44, i32 0, i32 6
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @PTR_ERR(i8* %46)
  %48 = load i32, i32* @EPROBE_DEFER, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %43
  %55 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %56 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %55, i32 0, i32 6
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @PTR_ERR(i8* %57)
  store i32 %58, i32* %2, align 4
  br label %171

59:                                               ; preds = %32
  %60 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %61 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %64 = call i8* @devm_gpiod_get(%struct.device* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %66 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %68 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %67, i32 0, i32 5
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @IS_ERR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %59
  %73 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %74 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %73, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @PTR_ERR(i8* %75)
  %77 = load i32, i32* @EPROBE_DEFER, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %72
  %84 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %85 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %84, i32 0, i32 5
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @PTR_ERR(i8* %86)
  store i32 %87, i32* %2, align 4
  br label %171

88:                                               ; preds = %59
  %89 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %90 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %93 = call i8* @devm_gpiod_get(%struct.device* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %95 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %97 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %96, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @IS_ERR(i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %88
  %102 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %103 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %102, i32 0, i32 4
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @PTR_ERR(i8* %104)
  %106 = load i32, i32* @EPROBE_DEFER, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %101
  %113 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %114 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %113, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @PTR_ERR(i8* %115)
  store i32 %116, i32* %2, align 4
  br label %171

117:                                              ; preds = %88
  %118 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %119 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %118, i32 0, i32 2
  store i32 1, i32* %119, align 8
  %120 = load %struct.device*, %struct.device** %5, align 8
  %121 = call i8* @devm_regulator_get(%struct.device* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %122 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %123 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  %124 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %125 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @IS_ERR(i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %117
  %130 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %131 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %130, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @PTR_ERR(i8* %132)
  %134 = load i32, i32* @EPROBE_DEFER, align 4
  %135 = sub nsw i32 0, %134
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load %struct.device*, %struct.device** %5, align 8
  %139 = call i32 @dev_err(%struct.device* %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %129
  %141 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %142 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %141, i32 0, i32 3
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @PTR_ERR(i8* %143)
  store i32 %144, i32* %2, align 4
  br label %171

145:                                              ; preds = %117
  %146 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %147 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %146, i32 0, i32 3
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @regulator_enable(i8* %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = load %struct.device*, %struct.device** %5, align 8
  %154 = call i32 @dev_err(%struct.device* %153, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %2, align 4
  br label %171

156:                                              ; preds = %145
  %157 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %158 = call i32 @snd_soc_register_card(%struct.snd_soc_card* %157)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.device*, %struct.device** %5, align 8
  %163 = call i32 @dev_err(%struct.device* %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %165

164:                                              ; preds = %156
  store i32 0, i32* %2, align 4
  br label %171

165:                                              ; preds = %161
  %166 = load %struct.tse850_priv*, %struct.tse850_priv** %6, align 8
  %167 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %166, i32 0, i32 3
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @regulator_disable(i8* %168)
  %170 = load i32, i32* %7, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %165, %164, %152, %140, %112, %83, %54, %28, %17
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local %struct.tse850_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.tse850_priv*) #1

declare dso_local i32 @tse850_dt_init(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @snd_soc_register_card(%struct.snd_soc_card*) #1

declare dso_local i32 @regulator_disable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
