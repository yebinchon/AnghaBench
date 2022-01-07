; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_input.c_decode_erp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_input.c_decode_erp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HIGH_PEAK = common dso_local global i32 0, align 4
@LOW_PEAK = common dso_local global i32 0, align 4
@DEG270 = common dso_local global i8 0, align 1
@DEG360 = common dso_local global i32 0, align 4
@DEG90 = common dso_local global i32 0, align 4
@DEG180 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8)* @decode_erp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_erp(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %12 = load i32, i32* @HIGH_PEAK, align 4
  %13 = load i32, i32* @LOW_PEAK, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @HIGH_PEAK, align 4
  %16 = load i32, i32* @LOW_PEAK, align 4
  %17 = add nsw i32 %15, %16
  %18 = sdiv i32 %17, 2
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i32
  %22 = sub nsw i32 %19, %21
  %23 = call i32 @abs(i32 %22) #2
  %24 = load i32, i32* %10, align 4
  %25 = sdiv i32 %24, 2
  %26 = sub nsw i32 %25, 100
  %27 = sdiv i32 %26, 2
  %28 = sub nsw i32 %23, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 100
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 100, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 100, %37
  store i32 %38, i32* %5, align 4
  %39 = load i8, i8* %3, align 1
  %40 = zext i8 %39 to i32
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %36
  %44 = load i8, i8* %4, align 1
  %45 = zext i8 %44 to i32
  %46 = load i32, i32* @LOW_PEAK, align 4
  %47 = sub nsw i32 %45, %46
  %48 = load i8, i8* @DEG270, align 1
  %49 = zext i8 %48 to i32
  %50 = add nsw i32 %47, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @DEG360, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load i32, i32* @DEG360, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %43
  br label %66

59:                                               ; preds = %36
  %60 = load i32, i32* @HIGH_PEAK, align 4
  %61 = load i8, i8* %4, align 1
  %62 = zext i8 %61 to i32
  %63 = sub nsw i32 %60, %62
  %64 = load i32, i32* @DEG90, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %59, %58
  %67 = load i8, i8* %4, align 1
  %68 = zext i8 %67 to i32
  %69 = load i32, i32* %11, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i8, i8* %3, align 1
  %73 = zext i8 %72 to i32
  %74 = load i32, i32* @LOW_PEAK, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %7, align 4
  br label %83

76:                                               ; preds = %66
  %77 = load i32, i32* @HIGH_PEAK, align 4
  %78 = load i8, i8* %3, align 1
  %79 = zext i8 %78 to i32
  %80 = sub nsw i32 %77, %79
  %81 = load i32, i32* @DEG180, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %76, %71
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %5, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %6, align 4
  %89 = mul nsw i32 %87, %88
  %90 = add nsw i32 %86, %89
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = mul nsw i32 %91, 10
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* @DEG360, align 4
  %94 = load i32, i32* %9, align 4
  %95 = sdiv i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %83
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1000
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %98, %83
  %102 = load i32, i32* %9, align 4
  %103 = icmp sge i32 %102, 1000
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %9, align 4
  %106 = sub nsw i32 %105, 1000
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %9, align 4
  ret i32 %108
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
