; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_callback.c_release_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_callback.c_release_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_voice = type { i32, %struct.TYPE_4__, %struct.snd_emu10k1* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.snd_emu10k1 = type { i32 }

@DCYSUSM = common dso_local global i32 0, align 4
@DCYSUSV_CHANNELENABLE_MASK = common dso_local global i32 0, align 4
@DCYSUSV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux_voice*)* @release_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_voice(%struct.snd_emux_voice* %0) #0 {
  %2 = alloca %struct.snd_emux_voice*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  store %struct.snd_emux_voice* %0, %struct.snd_emux_voice** %2, align 8
  %5 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %6 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %5, i32 0, i32 2
  %7 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  store %struct.snd_emu10k1* %7, %struct.snd_emu10k1** %4, align 8
  %8 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %9 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i8
  %14 = zext i8 %13 to i32
  %15 = or i32 32768, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %17 = load i32, i32* @DCYSUSM, align 4
  %18 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %19 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %16, i32 %17, i32 %20, i32 %21)
  %23 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %24 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i8
  %29 = zext i8 %28 to i32
  %30 = or i32 32768, %29
  %31 = load i32, i32* @DCYSUSV_CHANNELENABLE_MASK, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %3, align 4
  %33 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %34 = load i32, i32* @DCYSUSV, align 4
  %35 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %36 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %33, i32 %34, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
