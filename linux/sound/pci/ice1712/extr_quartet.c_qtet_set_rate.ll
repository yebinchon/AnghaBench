; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@RATE = common dso_local global i32 0, align 4
@VT1724_SPDIF_MASTER = common dso_local global i8 0, align 1
@CPLD_CKS_MASK = common dso_local global i32 0, align 4
@CPLD_SYNC_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32)* @qtet_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtet_set_rate(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %8 = load i32, i32* @RATE, align 4
  %9 = call i32 @ICEMT1724(%struct.snd_ice1712* %7, i32 %8)
  %10 = call zeroext i8 @inb(i32 %9)
  store i8 %10, i8* %6, align 1
  %11 = load i8, i8* %6, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @VT1724_SPDIF_MASTER, align 1
  %14 = zext i8 %13 to i32
  %15 = or i32 %12, %14
  %16 = trunc i32 %15 to i8
  %17 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %18 = load i32, i32* @RATE, align 4
  %19 = call i32 @ICEMT1724(%struct.snd_ice1712* %17, i32 %18)
  %20 = call i32 @outb(i8 zeroext %16, i32 %19)
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %22 = call i32 @get_cpld(%struct.snd_ice1712* %21)
  %23 = load i32, i32* @CPLD_CKS_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @get_cks_val(i32 %26)
  %28 = or i32 %25, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @CPLD_SYNC_SEL, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @set_cpld(%struct.snd_ice1712* %33, i32 %34)
  ret void
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ICEMT1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @get_cpld(%struct.snd_ice1712*) #1

declare dso_local i32 @get_cks_val(i32) #1

declare dso_local i32 @set_cpld(%struct.snd_ice1712*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
