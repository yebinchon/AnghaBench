; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_find_poly_deg4_roots.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_find_poly_deg4_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32 }
%struct.gf_poly = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bch_control*, %struct.gf_poly*, i32*)* @find_poly_deg4_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_poly_deg4_roots(%struct.bch_control* %0, %struct.gf_poly* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bch_control*, align 8
  %6 = alloca %struct.gf_poly*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.bch_control* %0, %struct.bch_control** %5, align 8
  store %struct.gf_poly* %1, %struct.gf_poly** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  %22 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %177

28:                                               ; preds = %3
  %29 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  %30 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %20, align 4
  %34 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %35 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  %36 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %20, align 4
  %41 = call i32 @gf_div(%struct.bch_control* %34, i32 %39, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %43 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  %44 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %20, align 4
  %49 = call i32 @gf_div(%struct.bch_control* %42, i32 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %51 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  %52 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %20, align 4
  %57 = call i32 @gf_div(%struct.bch_control* %50, i32 %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %59 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  %60 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %20, align 4
  %65 = call i32 @gf_div(%struct.bch_control* %58, i32 %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %127

68:                                               ; preds = %28
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %111

71:                                               ; preds = %68
  %72 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @gf_div(%struct.bch_control* %72, i32 %73, i32 %74)
  store i32 %75, i32* %16, align 4
  %76 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @a_log(%struct.bch_control* %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %84 = call i32 @GF_N(%struct.bch_control* %83)
  br label %86

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %82
  %87 = phi i32 [ %84, %82 ], [ 0, %85 ]
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sdiv i32 %91, 2
  %93 = call i32 @a_pow(%struct.bch_control* %90, i32 %92)
  store i32 %93, i32* %15, align 4
  %94 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = mul nsw i32 2, %95
  %97 = call i32 @a_pow(%struct.bch_control* %94, i32 %96)
  %98 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @gf_mul(%struct.bch_control* %98, i32 %99, i32 %100)
  %102 = xor i32 %97, %101
  %103 = load i32, i32* %14, align 4
  %104 = xor i32 %102, %103
  store i32 %104, i32* %14, align 4
  %105 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @gf_mul(%struct.bch_control* %105, i32 %106, i32 %107)
  %109 = load i32, i32* %12, align 4
  %110 = xor i32 %108, %109
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %86, %68
  %112 = load i32, i32* %14, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %177

115:                                              ; preds = %111
  %116 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @gf_inv(%struct.bch_control* %116, i32 %117)
  store i32 %118, i32* %19, align 4
  %119 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @gf_div(%struct.bch_control* %119, i32 %120, i32 %121)
  store i32 %122, i32* %18, align 4
  %123 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @gf_div(%struct.bch_control* %123, i32 %124, i32 %125)
  store i32 %126, i32* %17, align 4
  br label %131

127:                                              ; preds = %28
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %19, align 4
  %129 = load i32, i32* %13, align 4
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %17, align 4
  br label %131

131:                                              ; preds = %127, %115
  %132 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %19, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @find_affine4_roots(%struct.bch_control* %132, i32 %133, i32 %134, i32 %135, i32* %136)
  %138 = icmp eq i32 %137, 4
  br i1 %138, label %139, label %175

139:                                              ; preds = %131
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %171, %139
  %141 = load i32, i32* %8, align 4
  %142 = icmp slt i32 %141, 4
  br i1 %142, label %143, label %174

143:                                              ; preds = %140
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @gf_inv(%struct.bch_control* %147, i32 %152)
  br label %160

154:                                              ; preds = %143
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  br label %160

160:                                              ; preds = %154, %146
  %161 = phi i32 [ %153, %146 ], [ %159, %154 ]
  store i32 %161, i32* %16, align 4
  %162 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %15, align 4
  %165 = xor i32 %163, %164
  %166 = call i32 @a_ilog(%struct.bch_control* %162, i32 %165)
  %167 = load i32*, i32** %7, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %166, i32* %170, align 4
  br label %171

171:                                              ; preds = %160
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %140

174:                                              ; preds = %140
  store i32 4, i32* %10, align 4
  br label %175

175:                                              ; preds = %174, %131
  %176 = load i32, i32* %10, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %175, %114, %27
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i32 @gf_div(%struct.bch_control*, i32, i32) #1

declare dso_local i32 @a_log(%struct.bch_control*, i32) #1

declare dso_local i32 @GF_N(%struct.bch_control*) #1

declare dso_local i32 @a_pow(%struct.bch_control*, i32) #1

declare dso_local i32 @gf_mul(%struct.bch_control*, i32, i32) #1

declare dso_local i32 @gf_inv(%struct.bch_control*, i32) #1

declare dso_local i32 @find_affine4_roots(%struct.bch_control*, i32, i32, i32, i32*) #1

declare dso_local i32 @a_ilog(%struct.bch_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
