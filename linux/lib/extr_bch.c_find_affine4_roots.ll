; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_find_affine4_roots.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_find_affine4_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bch_control*, i32, i32, i32, i32*)* @find_affine4_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_affine4_roots(%struct.bch_control* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.bch_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [16 x i32], align 16
  store %struct.bch_control* %0, %struct.bch_control** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %18 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %19 = call i32 @GF_M(%struct.bch_control* %18)
  store i32 %19, i32* %14, align 4
  store i32 255, i32* %15, align 4
  %20 = bitcast [16 x i32]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 64, i1 false)
  %21 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @a_log(%struct.bch_control* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @a_log(%struct.bch_control* %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  store i32 %27, i32* %28, align 16
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %80, %5
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %83

33:                                               ; preds = %29
  %34 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %35 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = mul nsw i32 4, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %33
  %45 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %46 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i64 @mod_s(%struct.bch_control* %48, i32 %49)
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  br label %54

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53, %44
  %55 = phi i32 [ %52, %44 ], [ 0, %53 ]
  %56 = xor i32 %41, %55
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %61 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i64 @mod_s(%struct.bch_control* %63, i32 %64)
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  br label %69

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %59
  %70 = phi i32 [ %67, %59 ], [ 0, %68 ]
  %71 = xor i32 %56, %70
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 %74
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %29

83:                                               ; preds = %29
  store i32 8, i32* %12, align 4
  br label %84

84:                                               ; preds = %132, %83
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %140

87:                                               ; preds = %84
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %123, %87
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 16
  br i1 %90, label %91, label %131

91:                                               ; preds = %88
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %12, align 4
  %97 = lshr i32 %95, %96
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = xor i32 %97, %103
  %105 = load i32, i32* %15, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %12, align 4
  %109 = shl i32 %107, %108
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = xor i32 %113, %109
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = xor i32 %121, %115
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %91
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %124, %125
  %127 = add nsw i32 %126, 1
  %128 = load i32, i32* %12, align 4
  %129 = xor i32 %128, -1
  %130 = and i32 %127, %129
  store i32 %130, i32* %13, align 4
  br label %88

131:                                              ; preds = %88
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %12, align 4
  %134 = ashr i32 %133, 1
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %12, align 4
  %137 = shl i32 %135, %136
  %138 = load i32, i32* %15, align 4
  %139 = xor i32 %138, %137
  store i32 %139, i32* %15, align 4
  br label %84

140:                                              ; preds = %84
  %141 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %143 = load i32*, i32** %10, align 8
  %144 = call i32 @solve_linear_system(%struct.bch_control* %141, i32* %142, i32* %143, i32 4)
  ret i32 %144
}

declare dso_local i32 @GF_M(%struct.bch_control*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @a_log(%struct.bch_control*, i32) #1

declare dso_local i64 @mod_s(%struct.bch_control*, i32) #1

declare dso_local i32 @solve_linear_system(%struct.bch_control*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
