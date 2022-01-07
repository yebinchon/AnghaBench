; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_callback.c_free_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_callback.c_free_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_voice = type { i64, %struct.TYPE_2__*, %struct.snd_emu10k1* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_emu10k1 = type { i32* }

@IFATN = common dso_local global i32 0, align 4
@DCYSUSV = common dso_local global i32 0, align 4
@DCYSUSV_CHANNELENABLE_MASK = common dso_local global i32 0, align 4
@VTFT = common dso_local global i32 0, align 4
@CVCF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux_voice*)* @free_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_voice(%struct.snd_emux_voice* %0) #0 {
  %2 = alloca %struct.snd_emux_voice*, align 8
  %3 = alloca %struct.snd_emu10k1*, align 8
  store %struct.snd_emux_voice* %0, %struct.snd_emux_voice** %2, align 8
  %4 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %5 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %4, i32 0, i32 2
  %6 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  store %struct.snd_emu10k1* %6, %struct.snd_emu10k1** %3, align 8
  %7 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %8 = icmp ne %struct.snd_emu10k1* %7, null
  br i1 %8, label %9, label %58

9:                                                ; preds = %1
  %10 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %11 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %12, 0
  br i1 %13, label %14, label %58

14:                                               ; preds = %9
  %15 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %16 = load i32, i32* @IFATN, align 4
  %17 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %18 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %15, i32 %16, i64 %19, i32 65280)
  %21 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %22 = load i32, i32* @DCYSUSV, align 4
  %23 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %24 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @DCYSUSV_CHANNELENABLE_MASK, align 4
  %27 = or i32 32895, %26
  %28 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %21, i32 %22, i64 %25, i32 %27)
  %29 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %30 = load i32, i32* @VTFT, align 4
  %31 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %32 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %29, i32 %30, i64 %33, i32 65535)
  %35 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %36 = load i32, i32* @CVCF, align 4
  %37 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %38 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %35, i32 %36, i64 %39, i32 65535)
  %41 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %42 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %43 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %46 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = call i32 @snd_emu10k1_voice_free(%struct.snd_emu10k1* %41, i32* %48)
  %50 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %51 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %57 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %56, i32 0, i32 0
  store i64 -1, i64* %57, align 8
  br label %58

58:                                               ; preds = %14, %9, %1
  ret void
}

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i64, i32) #1

declare dso_local i32 @snd_emu10k1_voice_free(%struct.snd_emu10k1*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
