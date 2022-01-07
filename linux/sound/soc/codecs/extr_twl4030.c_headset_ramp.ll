; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_headset_ramp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_headset_ramp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.twl4030_priv = type { i32, %struct.twl4030_codec_data* }
%struct.twl4030_codec_data = type { i32, i64 }

@__const.headset_ramp.ramp_base = private unnamed_addr constant [8 x i32] [i32 524288, i32 1048576, i32 2097152, i32 4194304, i32 8388608, i32 16777216, i32 33554432, i32 67108864], align 16
@TWL4030_REG_HS_GAIN_SET = common dso_local global i32 0, align 4
@TWL4030_REG_HS_POPN_SET = common dso_local global i32 0, align 4
@TWL4030_RAMP_DELAY = common dso_local global i8 0, align 1
@TWL4030_EXTMUTE = common dso_local global i8 0, align 1
@TWL4030_VMID_EN = common dso_local global i8 0, align 1
@TWL4030_MODULE_AUDIO_VOICE = common dso_local global i32 0, align 4
@TWL4030_RAMP_EN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @headset_ramp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @headset_ramp(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.twl4030_priv*, align 8
  %8 = alloca %struct.twl4030_codec_data*, align 8
  %9 = alloca [8 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = call %struct.twl4030_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.twl4030_priv* %12, %struct.twl4030_priv** %7, align 8
  %13 = load %struct.twl4030_priv*, %struct.twl4030_priv** %7, align 8
  %14 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %13, i32 0, i32 1
  %15 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %14, align 8
  store %struct.twl4030_codec_data* %15, %struct.twl4030_codec_data** %8, align 8
  %16 = bitcast [8 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([8 x i32]* @__const.headset_ramp.ramp_base to i8*), i64 32, i1 false)
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = load i32, i32* @TWL4030_REG_HS_GAIN_SET, align 4
  %19 = call zeroext i8 @twl4030_read(%struct.snd_soc_component* %17, i32 %18)
  store i8 %19, i8* %5, align 1
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = load i32, i32* @TWL4030_REG_HS_POPN_SET, align 4
  %22 = call zeroext i8 @twl4030_read(%struct.snd_soc_component* %20, i32 %21)
  store i8 %22, i8* %6, align 1
  %23 = load i8, i8* %6, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @TWL4030_RAMP_DELAY, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = ashr i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.twl4030_priv*, %struct.twl4030_priv** %7, align 8
  %33 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = udiv i32 %31, %34
  %36 = add i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %8, align 8
  %38 = icmp ne %struct.twl4030_codec_data* %37, null
  br i1 %38, label %39, label %67

39:                                               ; preds = %2
  %40 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %8, align 8
  %41 = getelementptr inbounds %struct.twl4030_codec_data, %struct.twl4030_codec_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %8, align 8
  %46 = getelementptr inbounds %struct.twl4030_codec_data, %struct.twl4030_codec_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @gpio_is_valid(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %8, align 8
  %52 = getelementptr inbounds %struct.twl4030_codec_data, %struct.twl4030_codec_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @gpio_set_value(i32 %53, i32 1)
  br label %66

55:                                               ; preds = %44
  %56 = load i8, i8* @TWL4030_EXTMUTE, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* %6, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %59, %57
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %6, align 1
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %63 = load i32, i32* @TWL4030_REG_HS_POPN_SET, align 4
  %64 = load i8, i8* %6, align 1
  %65 = call i32 @twl4030_write(%struct.snd_soc_component* %62, i32 %63, i8 zeroext %64)
  br label %66

66:                                               ; preds = %55, %50
  br label %67

67:                                               ; preds = %66, %39, %2
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %67
  %71 = load i8, i8* @TWL4030_VMID_EN, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %6, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %74, %72
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %6, align 1
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %78 = load i32, i32* @TWL4030_REG_HS_POPN_SET, align 4
  %79 = load i8, i8* %6, align 1
  %80 = call i32 @twl4030_write(%struct.snd_soc_component* %77, i32 %78, i8 zeroext %79)
  %81 = load i32, i32* @TWL4030_MODULE_AUDIO_VOICE, align 4
  %82 = load i8, i8* %5, align 1
  %83 = load i32, i32* @TWL4030_REG_HS_GAIN_SET, align 4
  %84 = call i32 @twl_i2c_write_u8(i32 %81, i8 zeroext %82, i32 %83)
  %85 = load i8, i8* @TWL4030_RAMP_EN, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* %6, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %88, %86
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %6, align 1
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %92 = load i32, i32* @TWL4030_REG_HS_POPN_SET, align 4
  %93 = load i8, i8* %6, align 1
  %94 = call i32 @twl4030_write(%struct.snd_soc_component* %91, i32 %92, i8 zeroext %93)
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @twl4030_wait_ms(i32 %95)
  br label %129

97:                                               ; preds = %67
  %98 = load i8, i8* @TWL4030_RAMP_EN, align 1
  %99 = zext i8 %98 to i32
  %100 = xor i32 %99, -1
  %101 = load i8, i8* %6, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, %100
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %6, align 1
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %106 = load i32, i32* @TWL4030_REG_HS_POPN_SET, align 4
  %107 = load i8, i8* %6, align 1
  %108 = call i32 @twl4030_write(%struct.snd_soc_component* %105, i32 %106, i8 zeroext %107)
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @twl4030_wait_ms(i32 %109)
  %111 = load i32, i32* @TWL4030_MODULE_AUDIO_VOICE, align 4
  %112 = load i8, i8* %5, align 1
  %113 = zext i8 %112 to i32
  %114 = and i32 %113, -16
  %115 = trunc i32 %114 to i8
  %116 = load i32, i32* @TWL4030_REG_HS_GAIN_SET, align 4
  %117 = call i32 @twl_i2c_write_u8(i32 %111, i8 zeroext %115, i32 %116)
  %118 = load i8, i8* @TWL4030_VMID_EN, align 1
  %119 = zext i8 %118 to i32
  %120 = xor i32 %119, -1
  %121 = load i8, i8* %6, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, %120
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %6, align 1
  %125 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %126 = load i32, i32* @TWL4030_REG_HS_POPN_SET, align 4
  %127 = load i8, i8* %6, align 1
  %128 = call i32 @twl4030_write(%struct.snd_soc_component* %125, i32 %126, i8 zeroext %127)
  br label %129

129:                                              ; preds = %97, %70
  %130 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %8, align 8
  %131 = icmp ne %struct.twl4030_codec_data* %130, null
  br i1 %131, label %132, label %161

132:                                              ; preds = %129
  %133 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %8, align 8
  %134 = getelementptr inbounds %struct.twl4030_codec_data, %struct.twl4030_codec_data* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %161

137:                                              ; preds = %132
  %138 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %8, align 8
  %139 = getelementptr inbounds %struct.twl4030_codec_data, %struct.twl4030_codec_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @gpio_is_valid(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %8, align 8
  %145 = getelementptr inbounds %struct.twl4030_codec_data, %struct.twl4030_codec_data* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @gpio_set_value(i32 %146, i32 0)
  br label %160

148:                                              ; preds = %137
  %149 = load i8, i8* @TWL4030_EXTMUTE, align 1
  %150 = zext i8 %149 to i32
  %151 = xor i32 %150, -1
  %152 = load i8, i8* %6, align 1
  %153 = zext i8 %152 to i32
  %154 = and i32 %153, %151
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %6, align 1
  %156 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %157 = load i32, i32* @TWL4030_REG_HS_POPN_SET, align 4
  %158 = load i8, i8* %6, align 1
  %159 = call i32 @twl4030_write(%struct.snd_soc_component* %156, i32 %157, i8 zeroext %158)
  br label %160

160:                                              ; preds = %148, %143
  br label %161

161:                                              ; preds = %160, %132, %129
  ret void
}

declare dso_local %struct.twl4030_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local zeroext i8 @twl4030_read(%struct.snd_soc_component*, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @twl4030_write(%struct.snd_soc_component*, i32, i8 zeroext) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i8 zeroext, i32) #1

declare dso_local i32 @twl4030_wait_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
