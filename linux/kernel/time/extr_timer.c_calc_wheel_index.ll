; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_calc_wheel_index.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_calc_wheel_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LVL_DEPTH = common dso_local global i32 0, align 4
@LVL_MASK = common dso_local global i64 0, align 8
@WHEEL_TIMEOUT_CUTOFF = common dso_local global i64 0, align 8
@WHEEL_TIMEOUT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @calc_wheel_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_wheel_index(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = sub i64 %7, %8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @LVL_START(i32 1)
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @calc_index(i64 %14, i32 0)
  store i32 %15, i32* %6, align 4
  br label %95

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @LVL_START(i32 2)
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @calc_index(i64 %21, i32 1)
  store i32 %22, i32* %6, align 4
  br label %94

23:                                               ; preds = %16
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @LVL_START(i32 3)
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @calc_index(i64 %28, i32 2)
  store i32 %29, i32* %6, align 4
  br label %93

30:                                               ; preds = %23
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @LVL_START(i32 4)
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @calc_index(i64 %35, i32 3)
  store i32 %36, i32* %6, align 4
  br label %92

37:                                               ; preds = %30
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @LVL_START(i32 5)
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @calc_index(i64 %42, i32 4)
  store i32 %43, i32* %6, align 4
  br label %91

44:                                               ; preds = %37
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @LVL_START(i32 6)
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @calc_index(i64 %49, i32 5)
  store i32 %50, i32* %6, align 4
  br label %90

51:                                               ; preds = %44
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @LVL_START(i32 7)
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i64, i64* %3, align 8
  %57 = call i32 @calc_index(i64 %56, i32 6)
  store i32 %57, i32* %6, align 4
  br label %89

58:                                               ; preds = %51
  %59 = load i32, i32* @LVL_DEPTH, align 4
  %60 = icmp sgt i32 %59, 8
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @LVL_START(i32 8)
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @calc_index(i64 %66, i32 7)
  store i32 %67, i32* %6, align 4
  br label %88

68:                                               ; preds = %61, %58
  %69 = load i64, i64* %5, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @LVL_MASK, align 8
  %74 = and i64 %72, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %6, align 4
  br label %87

76:                                               ; preds = %68
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* @WHEEL_TIMEOUT_CUTOFF, align 8
  %79 = icmp uge i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i64, i64* @WHEEL_TIMEOUT_MAX, align 8
  store i64 %81, i64* %3, align 8
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i64, i64* %3, align 8
  %84 = load i32, i32* @LVL_DEPTH, align 4
  %85 = sub nsw i32 %84, 1
  %86 = call i32 @calc_index(i64 %83, i32 %85)
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %82, %71
  br label %88

88:                                               ; preds = %87, %65
  br label %89

89:                                               ; preds = %88, %55
  br label %90

90:                                               ; preds = %89, %48
  br label %91

91:                                               ; preds = %90, %41
  br label %92

92:                                               ; preds = %91, %34
  br label %93

93:                                               ; preds = %92, %27
  br label %94

94:                                               ; preds = %93, %20
  br label %95

95:                                               ; preds = %94, %13
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i64 @LVL_START(i32) #1

declare dso_local i32 @calc_index(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
