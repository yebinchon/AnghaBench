; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_callback.c_get_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_callback.c_get_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_voice = type { i64 }
%struct.snd_emux = type { i32, %struct.snd_emux_voice*, %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { i32 }
%struct.snd_emux_port = type { i32 }
%struct.snd_emu10k1_voice = type { i64 }
%struct.best_voice = type { i64 }

@V_END = common dso_local global i32 0, align 4
@EMU10K1_SYNTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_emux_voice* (%struct.snd_emux*, %struct.snd_emux_port*)* @get_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_emux_voice* @get_voice(%struct.snd_emux* %0, %struct.snd_emux_port* %1) #0 {
  %3 = alloca %struct.snd_emux_voice*, align 8
  %4 = alloca %struct.snd_emux*, align 8
  %5 = alloca %struct.snd_emux_port*, align 8
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca %struct.snd_emux_voice*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_emu10k1_voice*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_emux* %0, %struct.snd_emux** %4, align 8
  store %struct.snd_emux_port* %1, %struct.snd_emux_port** %5, align 8
  %13 = load i32, i32* @V_END, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca %struct.best_voice, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %18 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %17, i32 0, i32 2
  %19 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %18, align 8
  store %struct.snd_emu10k1* %19, %struct.snd_emu10k1** %6, align 8
  %20 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %21 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %22 = call i32 @lookup_voices(%struct.snd_emux* %20, %struct.snd_emu10k1* %21, %struct.best_voice* %16, i32 0)
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %70, %2
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @V_END, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %73

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %16, i64 %29
  %31 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %27
  %35 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %36 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %35, i32 0, i32 1
  %37 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %16, i64 %39
  %41 = getelementptr inbounds %struct.best_voice, %struct.best_voice* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %37, i64 %42
  store %struct.snd_emux_voice* %43, %struct.snd_emux_voice** %7, align 8
  %44 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %7, align 8
  %45 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %34
  %49 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %50 = load i32, i32* @EMU10K1_SYNTH, align 4
  %51 = call i64 @snd_emu10k1_voice_alloc(%struct.snd_emu10k1* %49, i32 %50, i32 1, %struct.snd_emu10k1_voice** %11)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %11, align 8
  %55 = icmp eq %struct.snd_emu10k1_voice* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %48
  br label %70

57:                                               ; preds = %53
  %58 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %11, align 8
  %59 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %7, align 8
  %62 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %64 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %57, %34
  %68 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %7, align 8
  store %struct.snd_emux_voice* %68, %struct.snd_emux_voice** %3, align 8
  store i32 1, i32* %12, align 4
  br label %74

69:                                               ; preds = %27
  br label %70

70:                                               ; preds = %69, %56
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %23

73:                                               ; preds = %23
  store %struct.snd_emux_voice* null, %struct.snd_emux_voice** %3, align 8
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %73, %67
  %75 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  ret %struct.snd_emux_voice* %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lookup_voices(%struct.snd_emux*, %struct.snd_emu10k1*, %struct.best_voice*, i32) #2

declare dso_local i64 @snd_emu10k1_voice_alloc(%struct.snd_emu10k1*, i32, i32, %struct.snd_emu10k1_voice**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
