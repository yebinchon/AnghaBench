; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_snd_usb_get_cur_mix_value.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_snd_usb_get_cur_mix_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_elem_info = type { i32, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"cannot get current value for control %d ch %d: err = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_get_cur_mix_value(%struct.usb_mixer_elem_info* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_mixer_elem_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_mixer_elem_info* %0, %struct.usb_mixer_elem_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %12 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %20 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %5, align 4
  br label %72

27:                                               ; preds = %4
  %28 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @get_cur_mix_raw(%struct.usb_mixer_elem_info* %28, i32 %29, i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %27
  %35 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %36 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %34
  %43 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %44 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %50 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @usb_audio_dbg(i32 %48, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %42, %34
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %72

57:                                               ; preds = %27
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 1, %58
  %60 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %61 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %67 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %57, %55, %18
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @get_cur_mix_raw(%struct.usb_mixer_elem_info*, i32, i32*) #1

declare dso_local i32 @usb_audio_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
