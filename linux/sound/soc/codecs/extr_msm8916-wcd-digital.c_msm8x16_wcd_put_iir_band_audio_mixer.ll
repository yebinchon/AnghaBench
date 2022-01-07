; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-digital.c_msm8x16_wcd_put_iir_band_audio_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-digital.c_msm8x16_wcd_put_iir_band_audio_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wcd_iir_filter_ctl = type { i32, i32, %struct.soc_bytes_ext }
%struct.soc_bytes_ext = type { i32 }

@BAND_MAX = common dso_local global i32 0, align 4
@LPASS_CDC_IIR1_COEF_B1_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @msm8x16_wcd_put_iir_band_audio_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm8x16_wcd_put_iir_band_audio_mixer(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.wcd_iir_filter_ctl*, align 8
  %7 = alloca %struct.soc_bytes_ext*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.wcd_iir_filter_ctl*
  store %struct.wcd_iir_filter_ctl* %17, %struct.wcd_iir_filter_ctl** %6, align 8
  %18 = load %struct.wcd_iir_filter_ctl*, %struct.wcd_iir_filter_ctl** %6, align 8
  %19 = getelementptr inbounds %struct.wcd_iir_filter_ctl, %struct.wcd_iir_filter_ctl* %18, i32 0, i32 2
  store %struct.soc_bytes_ext* %19, %struct.soc_bytes_ext** %7, align 8
  %20 = load %struct.wcd_iir_filter_ctl*, %struct.wcd_iir_filter_ctl** %6, align 8
  %21 = getelementptr inbounds %struct.wcd_iir_filter_ctl, %struct.wcd_iir_filter_ctl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.wcd_iir_filter_ctl*, %struct.wcd_iir_filter_ctl** %6, align 8
  %24 = getelementptr inbounds %struct.wcd_iir_filter_ctl, %struct.wcd_iir_filter_ctl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @BAND_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %10, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %7, align 8
  %37 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i32* %30, i32 %35, i32 %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %41 = load i64, i64* @LPASS_CDC_IIR1_COEF_B1_CTL, align 8
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 64, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @BAND_MAX, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = and i64 %50, 127
  %52 = trunc i64 %51 to i32
  %53 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %40, i64 %45, i32 %52)
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = getelementptr inbounds i32, i32* %29, i64 0
  %58 = load i32, i32* %57, align 16
  %59 = call i32 @set_iir_band_coeff(%struct.snd_soc_component* %54, i32 %55, i32 %56, i32 %58)
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = getelementptr inbounds i32, i32* %29, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @set_iir_band_coeff(%struct.snd_soc_component* %60, i32 %61, i32 %62, i32 %64)
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = getelementptr inbounds i32, i32* %29, i64 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @set_iir_band_coeff(%struct.snd_soc_component* %66, i32 %67, i32 %68, i32 %70)
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = getelementptr inbounds i32, i32* %29, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @set_iir_band_coeff(%struct.snd_soc_component* %72, i32 %73, i32 %74, i32 %76)
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = getelementptr inbounds i32, i32* %29, i64 4
  %82 = load i32, i32* %81, align 16
  %83 = call i32 @set_iir_band_coeff(%struct.snd_soc_component* %78, i32 %79, i32 %80, i32 %82)
  %84 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %84)
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i64, i32) #1

declare dso_local i32 @set_iir_band_coeff(%struct.snd_soc_component*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
