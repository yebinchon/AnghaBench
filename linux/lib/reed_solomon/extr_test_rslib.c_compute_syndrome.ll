; ModuleID = '/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_compute_syndrome.c'
source_filename = "/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_compute_syndrome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_control = type { %struct.rs_codec* }
%struct.rs_codec = type { i64*, i64*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rs_control*, i64*, i32, i64*)* @compute_syndrome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_syndrome(%struct.rs_control* %0, i64* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.rs_control*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.rs_codec*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rs_control* %0, %struct.rs_control** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %17 = load %struct.rs_control*, %struct.rs_control** %5, align 8
  %18 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %17, i32 0, i32 0
  %19 = load %struct.rs_codec*, %struct.rs_codec** %18, align 8
  store %struct.rs_codec* %19, %struct.rs_codec** %9, align 8
  %20 = load %struct.rs_codec*, %struct.rs_codec** %9, align 8
  %21 = getelementptr inbounds %struct.rs_codec, %struct.rs_codec* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %10, align 8
  %23 = load %struct.rs_codec*, %struct.rs_codec** %9, align 8
  %24 = getelementptr inbounds %struct.rs_codec, %struct.rs_codec* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %11, align 8
  %26 = load %struct.rs_codec*, %struct.rs_codec** %9, align 8
  %27 = getelementptr inbounds %struct.rs_codec, %struct.rs_codec* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = load %struct.rs_codec*, %struct.rs_codec** %9, align 8
  %30 = getelementptr inbounds %struct.rs_codec, %struct.rs_codec* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load %struct.rs_codec*, %struct.rs_codec** %9, align 8
  %33 = getelementptr inbounds %struct.rs_codec, %struct.rs_codec* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %104, %4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %107

39:                                               ; preds = %35
  %40 = load i64*, i64** %6, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 %42, i64* %46, align 8
  store i32 1, i32* %16, align 4
  br label %47

47:                                               ; preds = %100, %39
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %103

51:                                               ; preds = %47
  %52 = load i64*, i64** %8, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load i64*, i64** %6, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 %63, i64* %67, align 8
  br label %99

68:                                               ; preds = %51
  %69 = load i64*, i64** %6, align 8
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %10, align 8
  %75 = load %struct.rs_codec*, %struct.rs_codec** %9, align 8
  %76 = load i64*, i64** %11, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i64, i64* %76, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %13, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = add i64 %83, %89
  %91 = call i64 @rs_modnn(%struct.rs_codec* %75, i64 %90)
  %92 = getelementptr inbounds i64, i64* %74, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = xor i64 %73, %93
  %95 = load i64*, i64** %8, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %94, i64* %98, align 8
  br label %99

99:                                               ; preds = %68, %58
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %47

103:                                              ; preds = %47
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  br label %35

107:                                              ; preds = %35
  store i32 0, i32* %15, align 4
  br label %108

108:                                              ; preds = %127, %107
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %108
  %113 = load %struct.rs_codec*, %struct.rs_codec** %9, align 8
  %114 = getelementptr inbounds %struct.rs_codec, %struct.rs_codec* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = load i64*, i64** %8, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i64, i64* %115, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %8, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  store i64 %122, i64* %126, align 8
  br label %127

127:                                              ; preds = %112
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %108

130:                                              ; preds = %108
  ret void
}

declare dso_local i64 @rs_modnn(%struct.rs_codec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
