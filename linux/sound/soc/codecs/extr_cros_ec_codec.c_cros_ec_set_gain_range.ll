; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cros_ec_codec.c_cros_ec_set_gain_range.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cros_ec_codec.c_cros_ec_set_gain_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }
%struct.soc_mixer_control = type { i32, i32 }
%struct.cros_ec_codec_data = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"max-dmic-gain\00", align 1
@mic_gain_control = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @cros_ec_set_gain_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_set_gain_range(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.soc_mixer_control*, align 8
  %5 = alloca %struct.cros_ec_codec_data*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.cros_ec_codec_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.cros_ec_codec_data* %8, %struct.cros_ec_codec_data** %5, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load %struct.cros_ec_codec_data*, %struct.cros_ec_codec_data** %5, align 8
  %11 = getelementptr inbounds %struct.cros_ec_codec_data, %struct.cros_ec_codec_data* %10, i32 0, i32 0
  %12 = call i32 @device_property_read_u32(%struct.device* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %30

17:                                               ; preds = %1
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mic_gain_control, i32 0, i32 0), align 8
  %19 = inttoptr i64 %18 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %19, %struct.soc_mixer_control** %4, align 8
  %20 = load %struct.cros_ec_codec_data*, %struct.cros_ec_codec_data** %5, align 8
  %21 = getelementptr inbounds %struct.cros_ec_codec_data, %struct.cros_ec_codec_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %4, align 8
  %24 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cros_ec_codec_data*, %struct.cros_ec_codec_data** %5, align 8
  %26 = getelementptr inbounds %struct.cros_ec_codec_data, %struct.cros_ec_codec_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %4, align 8
  %29 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %17, %15
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.cros_ec_codec_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
