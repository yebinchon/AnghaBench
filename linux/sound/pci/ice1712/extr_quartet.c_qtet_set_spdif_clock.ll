; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_set_spdif_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_set_spdif_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@CPLD_CKS_MASK = common dso_local global i32 0, align 4
@CPLD_WORD_SEL = common dso_local global i32 0, align 4
@CPLD_EXT_SPDIF = common dso_local global i32 0, align 4
@CPLD_EXT_WORDCLOCK_1FS = common dso_local global i32 0, align 4
@CPLD_EXT_WORDCLOCK_256FS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, i32)* @qtet_set_spdif_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtet_set_spdif_clock(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %9 = call i32 @get_cpld(%struct.snd_ice1712* %8)
  store i32 %9, i32* %7, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @CPLD_CKS_MASK, align 4
  %11 = load i32, i32* @CPLD_WORD_SEL, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %29 [
    i32 130, label %17
    i32 129, label %21
    i32 128, label %25
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @CPLD_EXT_SPDIF, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %31

21:                                               ; preds = %2
  %22 = load i32, i32* @CPLD_EXT_WORDCLOCK_1FS, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @CPLD_EXT_WORDCLOCK_256FS, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %31

29:                                               ; preds = %2
  %30 = call i32 (...) @snd_BUG()
  br label %31

31:                                               ; preds = %29, %25, %21, %17
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @set_cpld(%struct.snd_ice1712* %36, i32 %37)
  store i32 1, i32* %3, align 4
  br label %40

39:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @get_cpld(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @set_cpld(%struct.snd_ice1712*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
