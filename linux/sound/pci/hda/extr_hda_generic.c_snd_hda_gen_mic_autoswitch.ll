; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_mic_autoswitch.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_mic_autoswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hda_jack_callback = type { i32 }

@AC_PINCTL_OUT_EN = common dso_local global i32 0, align 4
@HDA_JACK_PRESENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_gen_mic_autoswitch(%struct.hda_codec* %0, %struct.hda_jack_callback* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_jack_callback*, align 8
  %5 = alloca %struct.hda_gen_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.hda_jack_callback* %1, %struct.hda_jack_callback** %4, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  store %struct.hda_gen_spec* %10, %struct.hda_gen_spec** %5, align 8
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %12 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %70

16:                                               ; preds = %2
  %17 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %18 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %58, %16
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %21
  %25 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %26 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @snd_hda_codec_get_pin_target(%struct.hda_codec* %33, i32 %34)
  %36 = load i32, i32* @AC_PINCTL_OUT_EN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %58

40:                                               ; preds = %24
  %41 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @snd_hda_jack_detect_state(%struct.hda_codec* %41, i32 %42)
  %44 = load i64, i64* @HDA_JACK_PRESENT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %48 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %49 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mux_select(%struct.hda_codec* %47, i32 0, i32 %55)
  br label %70

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %39
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %6, align 4
  br label %21

61:                                               ; preds = %21
  %62 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %63 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %64 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @mux_select(%struct.hda_codec* %62, i32 0, i32 %68)
  br label %70

70:                                               ; preds = %61, %46, %15
  ret void
}

declare dso_local i32 @snd_hda_codec_get_pin_target(%struct.hda_codec*, i32) #1

declare dso_local i64 @snd_hda_jack_detect_state(%struct.hda_codec*, i32) #1

declare dso_local i32 @mux_select(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
