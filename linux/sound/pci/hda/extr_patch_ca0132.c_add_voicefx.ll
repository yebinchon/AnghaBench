; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_add_voicefx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_add_voicefx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.hda_codec = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32 }

@ca0132_voicefx = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@VOICEFX = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@ca0132_voicefx_info = common dso_local global i32 0, align 4
@ca0132_voicefx_get = common dso_local global i32 0, align 4
@ca0132_voicefx_put = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @add_voicefx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_voicefx(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.snd_kcontrol_new, align 4
  %4 = alloca { i64, i32 }, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ca0132_voicefx, i32 0, i32 0), align 4
  %6 = load i32, i32* @VOICEFX, align 4
  %7 = load i32, i32* @HDA_INPUT, align 4
  %8 = call { i64, i32 } @HDA_CODEC_MUTE_MONO(i32 %5, i32 %6, i32 1, i32 0, i32 %7)
  store { i64, i32 } %8, { i64, i32 }* %4, align 8
  %9 = bitcast { i64, i32 }* %4 to i8*
  %10 = bitcast %struct.snd_kcontrol_new* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 8 %9, i64 12, i1 false)
  %11 = load i32, i32* @ca0132_voicefx_info, align 4
  %12 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %3, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @ca0132_voicefx_get, align 4
  %14 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %3, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @ca0132_voicefx_put, align 4
  %16 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %3, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = load i32, i32* @VOICEFX, align 4
  %19 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %20 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %3, %struct.hda_codec* %19)
  %21 = call i32 @snd_hda_ctl_add(%struct.hda_codec* %17, i32 %18, i32 %20)
  ret i32 %21
}

declare dso_local { i64, i32 } @HDA_CODEC_MUTE_MONO(i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_hda_ctl_add(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
