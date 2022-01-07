; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SV_ADCMULT = common dso_local global i32 0, align 4
@SV_REFFREQUENCY = common dso_local global i32 0, align 4
@reg = common dso_local global i32 0, align 4
@sonic = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*)* @snd_sonicvibes_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_sonicvibes_pll(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SV_ADCMULT, align 4
  %19 = sdiv i32 625000, %18
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @SV_ADCMULT, align 4
  %23 = sdiv i32 625000, %22
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %21, %4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SV_ADCMULT, align 4
  %27 = sdiv i32 150000000, %26
  %28 = icmp ugt i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @SV_ADCMULT, align 4
  %31 = sdiv i32 150000000, %30
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %24
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %39, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SV_ADCMULT, align 4
  %36 = sdiv i32 75000000, %35
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, 32
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %5, align 4
  %43 = shl i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %33

44:                                               ; preds = %33
  store i32 3, i32* %13, align 4
  br label %45

45:                                               ; preds = %86, %44
  %46 = load i32, i32* %13, align 4
  %47 = icmp ult i32 %46, 33
  br i1 %47, label %48, label %89

48:                                               ; preds = %45
  store i32 3, i32* %12, align 4
  br label %49

49:                                               ; preds = %82, %48
  %50 = load i32, i32* %12, align 4
  %51 = icmp ult i32 %50, 257
  br i1 %51, label %52, label %85

52:                                               ; preds = %49
  %53 = load i32, i32* @SV_REFFREQUENCY, align 4
  %54 = load i32, i32* @SV_ADCMULT, align 4
  %55 = sdiv i32 %53, %54
  %56 = load i32, i32* %12, align 4
  %57 = mul i32 %55, %56
  %58 = load i32, i32* %13, align 4
  %59 = udiv i32 %57, %58
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp uge i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sub i32 %64, %65
  store i32 %66, i32* %15, align 4
  br label %71

67:                                               ; preds = %52
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %14, align 4
  %70 = sub i32 %68, %69
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %12, align 4
  %78 = sub i32 %77, 2
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %13, align 4
  %80 = sub i32 %79, 2
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %75, %71
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %12, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %49

85:                                               ; preds = %49
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %13, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %45

89:                                               ; preds = %45
  %90 = load i32, i32* %9, align 4
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32*, i32** %8, align 8
  store i32 %94, i32* %95, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
