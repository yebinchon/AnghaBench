; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_snd_emu8000_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_snd_emu8000_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8000 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"EMU8000 [0x%lx]: Synth chip found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu8000*)* @snd_emu8000_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu8000_detect(%struct.snd_emu8000* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_emu8000*, align 8
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %3, align 8
  %4 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %5 = call i32 @EMU8000_HWCF1_WRITE(%struct.snd_emu8000* %4, i32 89)
  %6 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %7 = call i32 @EMU8000_HWCF2_WRITE(%struct.snd_emu8000* %6, i32 32)
  %8 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %9 = call i32 @EMU8000_HWCF3_WRITE(%struct.snd_emu8000* %8, i32 0)
  %10 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %11 = call i32 @EMU8000_HWCF1_READ(%struct.snd_emu8000* %10)
  %12 = and i32 %11, 126
  %13 = icmp ne i32 %12, 88
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %30

17:                                               ; preds = %1
  %18 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %19 = call i32 @EMU8000_HWCF2_READ(%struct.snd_emu8000* %18)
  %20 = and i32 %19, 3
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %30

25:                                               ; preds = %17
  %26 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %27 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @snd_printdd(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %22, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @EMU8000_HWCF1_WRITE(%struct.snd_emu8000*, i32) #1

declare dso_local i32 @EMU8000_HWCF2_WRITE(%struct.snd_emu8000*, i32) #1

declare dso_local i32 @EMU8000_HWCF3_WRITE(%struct.snd_emu8000*, i32) #1

declare dso_local i32 @EMU8000_HWCF1_READ(%struct.snd_emu8000*) #1

declare dso_local i32 @EMU8000_HWCF2_READ(%struct.snd_emu8000*) #1

declare dso_local i32 @snd_printdd(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
