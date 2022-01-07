; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_vol_knob.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_vol_knob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.hda_codec = type { i32 }

@AC_PAR_VOL_KNB_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"  Volume-Knob: delta=%d, steps=%d, \00", align 1
@AC_VERB_GET_VOLUME_KNOB_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"direct=%d, val=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.hda_codec*, i32)* @print_vol_knob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_vol_knob(%struct.snd_info_buffer* %0, %struct.hda_codec* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %4, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @AC_PAR_VOL_KNB_CAP, align 4
  %11 = call i32 @param_read(%struct.hda_codec* %8, i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = lshr i32 %13, 7
  %15 = and i32 %14, 1
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 127
  %18 = call i32 @snd_iprintf(%struct.snd_info_buffer* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @AC_VERB_GET_VOLUME_KNOB_CONTROL, align 4
  %22 = call i32 @snd_hda_codec_read(%struct.hda_codec* %19, i32 %20, i32 0, i32 %21, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = lshr i32 %24, 7
  %26 = and i32 %25, 1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 127
  %29 = call i32 @snd_iprintf(%struct.snd_info_buffer* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28)
  ret void
}

declare dso_local i32 @param_read(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
