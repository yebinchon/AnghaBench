; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_connection_mixin_mix.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_connection_mixin_mix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIX_DEFIGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8, i8, i32)* @vortex_connection_mixin_mix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_connection_mixin_mix(i32* %0, i32 %1, i8 zeroext %2, i8 zeroext %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %5
  %14 = load i32*, i32** %6, align 8
  %15 = load i8, i8* %9, align 1
  %16 = load i8, i8* %8, align 1
  %17 = call i32 @vortex_mix_enableinput(i32* %14, i8 zeroext %15, i8 zeroext %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i8, i8* %9, align 1
  %20 = load i8, i8* %8, align 1
  %21 = load i32, i32* @MIX_DEFIGAIN, align 4
  %22 = call i32 @vortex_mix_setinputvolumebyte(i32* %18, i8 zeroext %19, i8 zeroext %20, i32 %21)
  br label %29

23:                                               ; preds = %5
  %24 = load i32*, i32** %6, align 8
  %25 = load i8, i8* %9, align 1
  %26 = load i8, i8* %8, align 1
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @vortex_mix_disableinput(i32* %24, i8 zeroext %25, i8 zeroext %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %13
  ret void
}

declare dso_local i32 @vortex_mix_enableinput(i32*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @vortex_mix_setinputvolumebyte(i32*, i8 zeroext, i8 zeroext, i32) #1

declare dso_local i32 @vortex_mix_disableinput(i32*, i8 zeroext, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
