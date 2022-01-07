; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_build_mod8_tables.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_build_mod8_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bch_control*, i32*)* @build_mod8_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_mod8_tables(%struct.bch_control* %0, i32* %1) #0 {
  %3 = alloca %struct.bch_control*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bch_control* %0, %struct.bch_control** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load %struct.bch_control*, %struct.bch_control** %3, align 8
  %17 = call i32 @BCH_ECC_WORDS(%struct.bch_control* %16)
  store i32 %17, i32* %13, align 4
  %18 = load %struct.bch_control*, %struct.bch_control** %3, align 8
  %19 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i32 @DIV_ROUND_UP(i64 %21, i32 32)
  store i32 %22, i32* %14, align 4
  %23 = load %struct.bch_control*, %struct.bch_control** %3, align 8
  %24 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @DIV_ROUND_UP(i64 %25, i32 32)
  store i32 %26, i32* %15, align 4
  %27 = load %struct.bch_control*, %struct.bch_control** %3, align 8
  %28 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %13, align 4
  %31 = mul nsw i32 1024, %30
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(i32* %29, i32 0, i32 %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %127, %2
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 256
  br i1 %38, label %39, label %130

39:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %123, %39
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %126

43:                                               ; preds = %40
  %44 = load %struct.bch_control*, %struct.bch_control** %3, align 8
  %45 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %47, 256
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %13, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %46, i64 %53
  store i32* %54, i32** %12, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 8, %56
  %58 = shl i32 %55, %57
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %121, %43
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %122

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @deg(i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 31, %68
  %70 = ashr i32 %67, %69
  %71 = load i32, i32* %9, align 4
  %72 = xor i32 %71, %70
  store i32 %72, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %118, %62
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %121

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 31
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  %88 = shl i32 %85, %87
  br label %90

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %80
  %91 = phi i32 [ %88, %80 ], [ 0, %89 ]
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %90
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 31, %103
  %105 = ashr i32 %102, %104
  br label %107

106:                                              ; preds = %90
  br label %107

107:                                              ; preds = %106, %96
  %108 = phi i32 [ %105, %96 ], [ 0, %106 ]
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = or i32 %109, %110
  %112 = load i32*, i32** %12, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = xor i32 %116, %111
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %107
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %73

121:                                              ; preds = %73
  br label %59

122:                                              ; preds = %59
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %40

126:                                              ; preds = %40
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %36

130:                                              ; preds = %36
  ret void
}

declare dso_local i32 @BCH_ECC_WORDS(%struct.bch_control*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @deg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
