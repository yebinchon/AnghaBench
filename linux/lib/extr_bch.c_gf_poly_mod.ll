; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_gf_poly_mod.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_gf_poly_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32*, i32* }
%struct.gf_poly = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bch_control*, %struct.gf_poly*, %struct.gf_poly*, i32*)* @gf_poly_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf_poly_mod(%struct.bch_control* %0, %struct.gf_poly* %1, %struct.gf_poly* %2, i32* %3) #0 {
  %5 = alloca %struct.bch_control*, align 8
  %6 = alloca %struct.gf_poly*, align 8
  %7 = alloca %struct.gf_poly*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.bch_control* %0, %struct.bch_control** %5, align 8
  store %struct.gf_poly* %1, %struct.gf_poly** %6, align 8
  store %struct.gf_poly* %2, %struct.gf_poly** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  %17 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %14, align 8
  %19 = load %struct.gf_poly*, %struct.gf_poly** %7, align 8
  %20 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %15, align 4
  %22 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  %23 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %15, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %131

28:                                               ; preds = %4
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %33 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %8, align 8
  %35 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %36 = load %struct.gf_poly*, %struct.gf_poly** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @gf_poly_logrep(%struct.bch_control* %35, %struct.gf_poly* %36, i32* %37)
  br label %39

39:                                               ; preds = %31, %28
  %40 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  %41 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %102, %39
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp uge i32 %44, %45
  br i1 %46, label %47, label %105

47:                                               ; preds = %43
  %48 = load i32*, i32** %14, align 8
  %49 = load i32, i32* %13, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %101

54:                                               ; preds = %47
  %55 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = load i32, i32* %13, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @a_log(%struct.bch_control* %55, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %15, align 4
  %64 = sub i32 %62, %63
  store i32 %64, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %95, %54
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %100

69:                                               ; preds = %65
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %12, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %69
  %78 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %79 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %82, %83
  %85 = call i64 @mod_s(%struct.bch_control* %81, i32 %84)
  %86 = getelementptr inbounds i32, i32* %80, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = xor i32 %92, %87
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %77, %69
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %12, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %65

100:                                              ; preds = %65
  br label %101

101:                                              ; preds = %100, %47
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %13, align 4
  %104 = add i32 %103, -1
  store i32 %104, i32* %13, align 4
  br label %43

105:                                              ; preds = %43
  %106 = load i32, i32* %15, align 4
  %107 = sub i32 %106, 1
  %108 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  %109 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %126, %105
  %111 = load i32*, i32** %14, align 8
  %112 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  %113 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %110
  %120 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  %121 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br label %124

124:                                              ; preds = %119, %110
  %125 = phi i1 [ false, %110 ], [ %123, %119 ]
  br i1 %125, label %126, label %131

126:                                              ; preds = %124
  %127 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  %128 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = add i32 %129, -1
  store i32 %130, i32* %128, align 8
  br label %110

131:                                              ; preds = %27, %124
  ret void
}

declare dso_local i32 @gf_poly_logrep(%struct.bch_control*, %struct.gf_poly*, i32*) #1

declare dso_local i32 @a_log(%struct.bch_control*, i32) #1

declare dso_local i64 @mod_s(%struct.bch_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
