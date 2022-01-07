; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_init_arrays.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_init_arrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8000 = type { i32 }

@init1 = common dso_local global i32 0, align 4
@init2 = common dso_local global i32 0, align 4
@init3 = common dso_local global i32 0, align 4
@init4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu8000*)* @init_arrays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_arrays(%struct.snd_emu8000* %0) #0 {
  %2 = alloca %struct.snd_emu8000*, align 8
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %2, align 8
  %3 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %4 = load i32, i32* @init1, align 4
  %5 = load i32, i32* @init1, align 4
  %6 = call i32 @ARRAY_SIZE(i32 %5)
  %7 = sdiv i32 %6, 4
  %8 = call i32 @send_array(%struct.snd_emu8000* %3, i32 %4, i32 %7)
  %9 = call i32 @msleep(i32 23)
  %10 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %11 = load i32, i32* @init2, align 4
  %12 = load i32, i32* @init2, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = sdiv i32 %13, 4
  %15 = call i32 @send_array(%struct.snd_emu8000* %10, i32 %11, i32 %14)
  %16 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %17 = load i32, i32* @init3, align 4
  %18 = load i32, i32* @init3, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = sdiv i32 %19, 4
  %21 = call i32 @send_array(%struct.snd_emu8000* %16, i32 %17, i32 %20)
  %22 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %23 = call i32 @EMU8000_HWCF4_WRITE(%struct.snd_emu8000* %22, i32 0)
  %24 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %25 = call i32 @EMU8000_HWCF5_WRITE(%struct.snd_emu8000* %24, i32 131)
  %26 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %27 = call i32 @EMU8000_HWCF6_WRITE(%struct.snd_emu8000* %26, i32 32768)
  %28 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %29 = load i32, i32* @init4, align 4
  %30 = load i32, i32* @init4, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = sdiv i32 %31, 4
  %33 = call i32 @send_array(%struct.snd_emu8000* %28, i32 %29, i32 %32)
  ret void
}

declare dso_local i32 @send_array(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @EMU8000_HWCF4_WRITE(%struct.snd_emu8000*, i32) #1

declare dso_local i32 @EMU8000_HWCF5_WRITE(%struct.snd_emu8000*, i32) #1

declare dso_local i32 @EMU8000_HWCF6_WRITE(%struct.snd_emu8000*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
