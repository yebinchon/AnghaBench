; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_emu10k1_select_interprom.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_emu10k1_select_interprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PITCH_48000 = common dso_local global i32 0, align 4
@CCCA_INTERPROM_0 = common dso_local global i32 0, align 4
@CCCA_INTERPROM_1 = common dso_local global i32 0, align 4
@PITCH_96000 = common dso_local global i32 0, align 4
@PITCH_85000 = common dso_local global i32 0, align 4
@CCCA_INTERPROM_6 = common dso_local global i32 0, align 4
@PITCH_80726 = common dso_local global i32 0, align 4
@CCCA_INTERPROM_5 = common dso_local global i32 0, align 4
@PITCH_67882 = common dso_local global i32 0, align 4
@CCCA_INTERPROM_4 = common dso_local global i32 0, align 4
@PITCH_57081 = common dso_local global i32 0, align 4
@CCCA_INTERPROM_3 = common dso_local global i32 0, align 4
@CCCA_INTERPROM_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @emu10k1_select_interprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu10k1_select_interprom(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @PITCH_48000, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @CCCA_INTERPROM_0, align 4
  store i32 %8, i32* %2, align 4
  br label %47

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @PITCH_48000, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @CCCA_INTERPROM_1, align 4
  store i32 %14, i32* %2, align 4
  br label %47

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @PITCH_96000, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @CCCA_INTERPROM_0, align 4
  store i32 %20, i32* %2, align 4
  br label %47

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @PITCH_85000, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @CCCA_INTERPROM_6, align 4
  store i32 %26, i32* %2, align 4
  br label %47

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @PITCH_80726, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @CCCA_INTERPROM_5, align 4
  store i32 %32, i32* %2, align 4
  br label %47

33:                                               ; preds = %27
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @PITCH_67882, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @CCCA_INTERPROM_4, align 4
  store i32 %38, i32* %2, align 4
  br label %47

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @PITCH_57081, align 4
  %42 = icmp uge i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @CCCA_INTERPROM_3, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @CCCA_INTERPROM_2, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %43, %37, %31, %25, %19, %13, %7
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
