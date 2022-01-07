; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_synth.c_vortex_wt_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_synth.c_vortex_wt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NR_WT = common dso_local global i32 0, align 4
@NR_WT_PB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @vortex_wt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_wt_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = and i32 %8, -29
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = or i32 %10, 34
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, -321
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, 128
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, 512
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, -2
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, -1025
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, 6144
  store i32 %23, i32* %6, align 4
  store i32 268435456, i32* %3, align 4
  store i32 8585216, i32* %5, align 4
  store i32 8585216, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %50, %1
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NR_WT, align 4
  %27 = load i32, i32* @NR_WT_PB, align 4
  %28 = sdiv i32 %26, %27
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %24
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @vortex_wt_SetReg(i32* %31, i32 12, i32 %32, i32 0)
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @vortex_wt_SetReg(i32* %34, i32 10, i32 %35, i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @vortex_wt_SetReg(i32* %38, i32 9, i32 %39, i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @vortex_wt_SetReg(i32* %42, i32 8, i32 %43, i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @vortex_wt_SetReg(i32* %46, i32 5, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %30
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %24

53:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %74, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @NR_WT, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @vortex_wt_SetReg(i32* %59, i32 4, i32 %60, i32 0)
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @vortex_wt_SetReg(i32* %62, i32 3, i32 %63, i32 0)
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @vortex_wt_SetReg(i32* %65, i32 2, i32 %66, i32 0)
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @vortex_wt_SetReg(i32* %68, i32 1, i32 %69, i32 0)
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @vortex_wt_SetReg(i32* %71, i32 11, i32 %72, i32 0)
  br label %74

74:                                               ; preds = %58
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %54

77:                                               ; preds = %54
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, 1
  store i32 %79, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %91, %77
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @NR_WT, align 4
  %83 = load i32, i32* @NR_WT_PB, align 4
  %84 = sdiv i32 %82, %83
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load i32*, i32** %2, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @vortex_wt_SetReg(i32* %87, i32 10, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %80

94:                                               ; preds = %80
  ret void
}

declare dso_local i32 @vortex_wt_SetReg(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
