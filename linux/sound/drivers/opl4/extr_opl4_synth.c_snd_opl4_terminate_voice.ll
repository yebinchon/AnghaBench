; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_terminate_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_terminate_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl4 = type { i32 }
%struct.opl4_voice = type { i32, i64, i32 }

@OPL4_KEY_ON_BIT = common dso_local global i32 0, align 4
@OPL4_DAMP_BIT = common dso_local global i32 0, align 4
@OPL4_REG_MISC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_opl4*, %struct.opl4_voice*)* @snd_opl4_terminate_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_opl4_terminate_voice(%struct.snd_opl4* %0, %struct.opl4_voice* %1) #0 {
  %3 = alloca %struct.snd_opl4*, align 8
  %4 = alloca %struct.opl4_voice*, align 8
  store %struct.snd_opl4* %0, %struct.snd_opl4** %3, align 8
  store %struct.opl4_voice* %1, %struct.opl4_voice** %4, align 8
  %5 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %6 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %5, i32 0, i32 2
  %7 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %8 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %7, i32 0, i32 0
  %9 = call i32 @list_move_tail(i32* %6, i32* %8)
  %10 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %11 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @OPL4_KEY_ON_BIT, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = load i32, i32* @OPL4_DAMP_BIT, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %19 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %21 = load i64, i64* @OPL4_REG_MISC, align 8
  %22 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %23 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %27 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @snd_opl4_write(%struct.snd_opl4* %20, i64 %25, i32 %28)
  ret void
}

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @snd_opl4_write(%struct.snd_opl4*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
