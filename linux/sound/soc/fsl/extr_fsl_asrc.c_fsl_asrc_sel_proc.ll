; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc.c_fsl_asrc_sel_proc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc.c_fsl_asrc_sel_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*)* @fsl_asrc_sel_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_asrc_sel_proc(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 %11, 8
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 33, %13
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  store i32 2, i32* %17, align 4
  br label %47

18:                                               ; preds = %4
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %19, 8
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 15, %21
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 152000
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  store i32 2, i32* %28, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %46

32:                                               ; preds = %18
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 76000
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32*, i32** %7, align 8
  store i32 0, i32* %36, align 4
  br label %45

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %38, 152000
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32*, i32** %7, align 8
  store i32 2, i32* %41, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32*, i32** %7, align 8
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %35
  br label %46

46:                                               ; preds = %45, %31
  br label %47

47:                                               ; preds = %46, %16
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 %48, 15
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %50, 16
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 56000
  br i1 %55, label %64, label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %57, 56000
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 56000
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i1 [ false, %56 ], [ %61, %59 ]
  br label %64

64:                                               ; preds = %62, %53
  %65 = phi i1 [ true, %53 ], [ %63, %62 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %5, align 4
  %68 = mul nsw i32 %67, 23
  %69 = load i32, i32* %6, align 4
  %70 = mul nsw i32 %69, 8
  %71 = icmp slt i32 %68, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load i32*, i32** %8, align 8
  store i32 2, i32* %76, align 4
  br label %85

77:                                               ; preds = %64
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32*, i32** %8, align 8
  store i32 0, i32* %81, align 4
  br label %84

82:                                               ; preds = %77
  %83 = load i32*, i32** %8, align 8
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %82, %80
  br label %85

85:                                               ; preds = %84, %75
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
