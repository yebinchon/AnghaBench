; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_compute_trace_bk_mod.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_compute_trace_bk_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32, i32* }
%struct.gf_poly = type { i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"Tr(a^%d.X) mod f = %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bch_control*, i32, %struct.gf_poly*, %struct.gf_poly*, %struct.gf_poly*)* @compute_trace_bk_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_trace_bk_mod(%struct.bch_control* %0, i32 %1, %struct.gf_poly* %2, %struct.gf_poly* %3, %struct.gf_poly* %4) #0 {
  %6 = alloca %struct.bch_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gf_poly*, align 8
  %9 = alloca %struct.gf_poly*, align 8
  %10 = alloca %struct.gf_poly*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bch_control* %0, %struct.bch_control** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.gf_poly* %2, %struct.gf_poly** %8, align 8
  store %struct.gf_poly* %3, %struct.gf_poly** %9, align 8
  store %struct.gf_poly* %4, %struct.gf_poly** %10, align 8
  %14 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %15 = call i32 @GF_M(%struct.bch_control* %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.gf_poly*, %struct.gf_poly** %9, align 8
  %17 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.gf_poly*, %struct.gf_poly** %9, align 8
  %19 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %23 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.gf_poly*, %struct.gf_poly** %9, align 8
  %30 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %28, i32* %32, align 4
  %33 = load %struct.gf_poly*, %struct.gf_poly** %10, align 8
  %34 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.gf_poly*, %struct.gf_poly** %10, align 8
  %36 = load %struct.gf_poly*, %struct.gf_poly** %8, align 8
  %37 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @GF_POLY_SZ(i32 %38)
  %40 = call i32 @memset(%struct.gf_poly* %35, i32 0, i32 %39)
  %41 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %42 = load %struct.gf_poly*, %struct.gf_poly** %8, align 8
  %43 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %44 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @gf_poly_logrep(%struct.bch_control* %41, %struct.gf_poly* %42, i32 %45)
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %133, %5
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %136

51:                                               ; preds = %47
  %52 = load %struct.gf_poly*, %struct.gf_poly** %9, align 8
  %53 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %98, %51
  %56 = load i32, i32* %13, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %101

58:                                               ; preds = %55
  %59 = load %struct.gf_poly*, %struct.gf_poly** %9, align 8
  %60 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.gf_poly*, %struct.gf_poly** %10, align 8
  %67 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %72, %65
  store i32 %73, i32* %71, align 4
  %74 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %75 = load %struct.gf_poly*, %struct.gf_poly** %9, align 8
  %76 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @gf_sqr(%struct.bch_control* %74, i32 %81)
  %83 = load %struct.gf_poly*, %struct.gf_poly** %9, align 8
  %84 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = mul nsw i32 2, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 %82, i32* %89, align 4
  %90 = load %struct.gf_poly*, %struct.gf_poly** %9, align 8
  %91 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = mul nsw i32 2, %93
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %58
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %13, align 4
  br label %55

101:                                              ; preds = %55
  %102 = load %struct.gf_poly*, %struct.gf_poly** %9, align 8
  %103 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.gf_poly*, %struct.gf_poly** %10, align 8
  %106 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp sgt i32 %104, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load %struct.gf_poly*, %struct.gf_poly** %9, align 8
  %111 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.gf_poly*, %struct.gf_poly** %10, align 8
  %114 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %109, %101
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %11, align 4
  %118 = sub nsw i32 %117, 1
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = load %struct.gf_poly*, %struct.gf_poly** %9, align 8
  %122 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = mul nsw i32 %123, 2
  store i32 %124, i32* %122, align 8
  %125 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %126 = load %struct.gf_poly*, %struct.gf_poly** %9, align 8
  %127 = load %struct.gf_poly*, %struct.gf_poly** %8, align 8
  %128 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %129 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @gf_poly_mod(%struct.bch_control* %125, %struct.gf_poly* %126, %struct.gf_poly* %127, i32 %130)
  br label %132

132:                                              ; preds = %120, %115
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %47

136:                                              ; preds = %47
  br label %137

137:                                              ; preds = %155, %136
  %138 = load %struct.gf_poly*, %struct.gf_poly** %10, align 8
  %139 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.gf_poly*, %struct.gf_poly** %10, align 8
  %142 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %137
  %149 = load %struct.gf_poly*, %struct.gf_poly** %10, align 8
  %150 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br label %153

153:                                              ; preds = %148, %137
  %154 = phi i1 [ false, %137 ], [ %152, %148 ]
  br i1 %154, label %155, label %160

155:                                              ; preds = %153
  %156 = load %struct.gf_poly*, %struct.gf_poly** %10, align 8
  %157 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %157, align 8
  br label %137

160:                                              ; preds = %153
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.gf_poly*, %struct.gf_poly** %10, align 8
  %163 = call i32 @gf_poly_str(%struct.gf_poly* %162)
  %164 = call i32 @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %161, i32 %163)
  ret void
}

declare dso_local i32 @GF_M(%struct.bch_control*) #1

declare dso_local i32 @memset(%struct.gf_poly*, i32, i32) #1

declare dso_local i32 @GF_POLY_SZ(i32) #1

declare dso_local i32 @gf_poly_logrep(%struct.bch_control*, %struct.gf_poly*, i32) #1

declare dso_local i32 @gf_sqr(%struct.bch_control*, i32) #1

declare dso_local i32 @gf_poly_mod(%struct.bch_control*, %struct.gf_poly*, %struct.gf_poly*, i32) #1

declare dso_local i32 @dbg(i8*, i32, i32) #1

declare dso_local i32 @gf_poly_str(%struct.gf_poly*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
