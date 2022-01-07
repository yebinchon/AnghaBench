; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_pcm.c_snd_emu8000_write_wait.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_pcm.c_snd_emu8000_write_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8000 = type { i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu8000*, i32)* @snd_emu8000_write_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu8000_write_wait(%struct.snd_emu8000* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_emu8000*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %20, %2
  %6 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %7 = call i32 @EMU8000_SMALW_READ(%struct.snd_emu8000* %6)
  %8 = and i32 %7, -2147483648
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = call i32 @schedule_timeout_interruptible(i32 1)
  %15 = load i32, i32* @current, align 4
  %16 = call i64 @signal_pending(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %21

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %10
  br label %5

21:                                               ; preds = %18, %5
  ret void
}

declare dso_local i32 @EMU8000_SMALW_READ(%struct.snd_emu8000*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
