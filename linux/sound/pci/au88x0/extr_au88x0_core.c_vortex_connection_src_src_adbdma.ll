; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_connection_src_src_adbdma.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_connection_src_src_adbdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8, i8, i8, i8)* @vortex_connection_src_src_adbdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_connection_src_src_adbdma(i32* %0, i32 %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store i8 %4, i8* %11, align 1
  store i8 %5, i8* %12, align 1
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i8, i8* %9, align 1
  %16 = load i8, i8* %10, align 1
  %17 = call i32 @ADB_SRCOUT(i8 zeroext %16)
  %18 = load i8, i8* %11, align 1
  %19 = call i32 @ADB_SRCOUT(i8 zeroext %18)
  %20 = load i8, i8* %12, align 1
  %21 = call i32 @ADB_DMA(i8 zeroext %20)
  %22 = call i32 @vortex_routeLRT(i32* %13, i32 %14, i8 zeroext %15, i32 %17, i32 %19, i32 %21)
  ret void
}

declare dso_local i32 @vortex_routeLRT(i32*, i32, i8 zeroext, i32, i32, i32) #1

declare dso_local i32 @ADB_SRCOUT(i8 zeroext) #1

declare dso_local i32 @ADB_DMA(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
