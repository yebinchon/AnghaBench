; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_connection_mix_adb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_connection_mix_adb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIX_DEFOGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8, i8, i8)* @vortex_connection_mix_adb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_connection_mix_adb(i32* %0, i32 %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i8 %4, i8* %10, align 1
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i8, i8* %8, align 1
  %14 = load i8, i8* %9, align 1
  %15 = call i32 @ADB_MIXOUT(i8 zeroext %14)
  %16 = load i8, i8* %10, align 1
  %17 = call i32 @vortex_route(i32* %11, i32 %12, i8 zeroext %13, i32 %15, i8 zeroext %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i8, i8* %9, align 1
  %20 = load i32, i32* @MIX_DEFOGAIN, align 4
  %21 = call i32 @vortex_mix_setvolumebyte(i32* %18, i8 zeroext %19, i32 %20)
  ret void
}

declare dso_local i32 @vortex_route(i32*, i32, i8 zeroext, i32, i8 zeroext) #1

declare dso_local i32 @ADB_MIXOUT(i8 zeroext) #1

declare dso_local i32 @vortex_mix_setvolumebyte(i32*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
