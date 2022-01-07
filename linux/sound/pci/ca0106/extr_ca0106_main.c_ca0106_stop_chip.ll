; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_ca0106_stop_chip.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_ca0106_stop_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ca0106 = type { i64 }

@BASIC_INTERRUPT = common dso_local global i32 0, align 4
@INTE = common dso_local global i64 0, align 8
@EXTENDED_INT_MASK = common dso_local global i32 0, align 4
@HCFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ca0106*)* @ca0106_stop_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0106_stop_chip(%struct.snd_ca0106* %0) #0 {
  %2 = alloca %struct.snd_ca0106*, align 8
  store %struct.snd_ca0106* %0, %struct.snd_ca0106** %2, align 8
  %3 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %4 = load i32, i32* @BASIC_INTERRUPT, align 4
  %5 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %3, i32 %4, i32 0, i32 0)
  %6 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %7 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @INTE, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @outl(i32 0, i64 %10)
  %12 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %13 = load i32, i32* @EXTENDED_INT_MASK, align 4
  %14 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %12, i32 %13, i32 0, i32 0)
  %15 = call i32 @udelay(i32 1000)
  %16 = load %struct.snd_ca0106*, %struct.snd_ca0106** %2, align 8
  %17 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HCFG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outl(i32 0, i64 %20)
  ret void
}

declare dso_local i32 @snd_ca0106_ptr_write(%struct.snd_ca0106*, i32, i32, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
