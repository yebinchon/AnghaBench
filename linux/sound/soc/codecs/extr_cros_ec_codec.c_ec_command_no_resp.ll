; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cros_ec_codec.c_ec_command_no_resp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cros_ec_codec.c_ec_command_no_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.ec_param_codec_i2s = type { i32 }
%struct.cros_ec_codec_data = type { %struct.cros_ec_device* }
%struct.cros_ec_device = type { i32 }
%struct.cros_ec_command = type { i32, i32, i64, i32, i64 }

@EC_CMD_CODEC_I2S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.ec_param_codec_i2s*)* @ec_command_no_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_command_no_resp(%struct.snd_soc_component* %0, %struct.ec_param_codec_i2s* %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.ec_param_codec_i2s*, align 8
  %5 = alloca %struct.cros_ec_codec_data*, align 8
  %6 = alloca %struct.cros_ec_device*, align 8
  %7 = alloca [36 x i32], align 16
  %8 = alloca %struct.cros_ec_command*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store %struct.ec_param_codec_i2s* %1, %struct.ec_param_codec_i2s** %4, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.cros_ec_codec_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.cros_ec_codec_data* %10, %struct.cros_ec_codec_data** %5, align 8
  %11 = load %struct.cros_ec_codec_data*, %struct.cros_ec_codec_data** %5, align 8
  %12 = getelementptr inbounds %struct.cros_ec_codec_data, %struct.cros_ec_codec_data* %11, i32 0, i32 0
  %13 = load %struct.cros_ec_device*, %struct.cros_ec_device** %12, align 8
  store %struct.cros_ec_device* %13, %struct.cros_ec_device** %6, align 8
  %14 = bitcast [36 x i32]* %7 to %struct.cros_ec_command*
  store %struct.cros_ec_command* %14, %struct.cros_ec_command** %8, align 8
  %15 = load %struct.cros_ec_command*, %struct.cros_ec_command** %8, align 8
  %16 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @EC_CMD_CODEC_I2S, align 4
  %18 = load %struct.cros_ec_command*, %struct.cros_ec_command** %8, align 8
  %19 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.cros_ec_command*, %struct.cros_ec_command** %8, align 8
  %21 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %20, i32 0, i32 0
  store i32 4, i32* %21, align 8
  %22 = load %struct.cros_ec_command*, %struct.cros_ec_command** %8, align 8
  %23 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.cros_ec_command*, %struct.cros_ec_command** %8, align 8
  %25 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ec_param_codec_i2s*, %struct.ec_param_codec_i2s** %4, align 8
  %28 = load %struct.cros_ec_command*, %struct.cros_ec_command** %8, align 8
  %29 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @memcpy(i32 %26, %struct.ec_param_codec_i2s* %27, i32 %30)
  %32 = load %struct.cros_ec_device*, %struct.cros_ec_device** %6, align 8
  %33 = load %struct.cros_ec_command*, %struct.cros_ec_command** %8, align 8
  %34 = call i32 @cros_ec_cmd_xfer_status(%struct.cros_ec_device* %32, %struct.cros_ec_command* %33)
  ret i32 %34
}

declare dso_local %struct.cros_ec_codec_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @memcpy(i32, %struct.ec_param_codec_i2s*, i32) #1

declare dso_local i32 @cros_ec_cmd_xfer_status(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
