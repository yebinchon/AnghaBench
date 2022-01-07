; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdmi-codec.c_hdmi_codec_chmap_ctl_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdmi-codec.c_hdmi_codec_chmap_ctl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.snd_pcm_chmap = type { i32, %struct.TYPE_4__*, %struct.hdmi_codec_priv* }
%struct.TYPE_4__ = type { i8* }
%struct.hdmi_codec_priv = type { i64 }

@HDMI_CODEC_CHMAP_IDX_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @hdmi_codec_chmap_ctl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_codec_chmap_ctl_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_chmap*, align 8
  %8 = alloca %struct.hdmi_codec_priv*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_pcm_chmap* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_pcm_chmap* %10, %struct.snd_pcm_chmap** %7, align 8
  %11 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %7, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %11, i32 0, i32 2
  %13 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %12, align 8
  store %struct.hdmi_codec_priv* %13, %struct.hdmi_codec_priv** %8, align 8
  %14 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %7, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %8, align 8
  %18 = getelementptr inbounds %struct.hdmi_codec_priv, %struct.hdmi_codec_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %59, %2
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %7, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %23
  %30 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %8, align 8
  %31 = getelementptr inbounds %struct.hdmi_codec_priv, %struct.hdmi_codec_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HDMI_CODEC_CHMAP_IDX_UNKNOWN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %37 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 0, i8* %43, align 1
  br label %58

44:                                               ; preds = %29
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %51 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 %49, i8* %57, align 1
  br label %58

58:                                               ; preds = %44, %35
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %23

62:                                               ; preds = %23
  ret i32 0
}

declare dso_local %struct.snd_pcm_chmap* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
