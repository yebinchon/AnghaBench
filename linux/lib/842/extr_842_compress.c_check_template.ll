; ModuleID = '/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c_check_template.c'
source_filename = "/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c_check_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw842_param = type { i32 }

@comp_ops = common dso_local global i64** null, align 8
@OPS_MAX = common dso_local global i64 0, align 8
@OP_ACTION_INDEX = common dso_local global i64 0, align 8
@OP_AMOUNT_2 = common dso_local global i64 0, align 8
@OP_AMOUNT_4 = common dso_local global i64 0, align 8
@OP_AMOUNT_8 = common dso_local global i64 0, align 8
@OP_AMOUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw842_param*, i64)* @check_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_template(%struct.sw842_param* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sw842_param*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sw842_param* %0, %struct.sw842_param** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64**, i64*** @comp_ops, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds i64*, i64** %10, i64 %11
  %13 = load i64*, i64** %12, align 8
  store i64* %13, i64** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @OPS_MAX, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %95

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %91, %18
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %94

22:                                               ; preds = %19
  %23 = load i64*, i64** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @OP_ACTION_INDEX, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %79

31:                                               ; preds = %22
  %32 = load i64*, i64** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @OP_AMOUNT_2, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = ashr i32 %42, 1
  %44 = call i32 @check_index(%struct.sw842_param* %41, i32 2, i32 %43)
  store i32 %44, i32* %8, align 4
  br label %74

45:                                               ; preds = %31
  %46 = load i64*, i64** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @OP_AMOUNT_4, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = ashr i32 %56, 2
  %58 = call i32 @check_index(%struct.sw842_param* %55, i32 4, i32 %57)
  store i32 %58, i32* %8, align 4
  br label %73

59:                                               ; preds = %45
  %60 = load i64*, i64** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @OP_AMOUNT_8, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %70 = call i32 @check_index(%struct.sw842_param* %69, i32 8, i32 0)
  store i32 %70, i32* %8, align 4
  br label %72

71:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %95

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %54
  br label %74

74:                                               ; preds = %73, %40
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %95

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78, %22
  %80 = load i64*, i64** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @OP_AMOUNT, align 8
  %86 = and i64 %84, %85
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %79
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %19

94:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %77, %71, %17
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @check_index(%struct.sw842_param*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
