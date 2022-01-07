; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_build_deg2_base.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_build_deg2_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32*, i32* }

@BCH_MAX_M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"x%d = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bch_control*)* @build_deg2_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_deg2_base(%struct.bch_control* %0) #0 {
  %2 = alloca %struct.bch_control*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.bch_control* %0, %struct.bch_control** %2, align 8
  %14 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %15 = call i32 @GF_M(%struct.bch_control* %14)
  store i32 %15, i32* %3, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @BCH_MAX_M, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %53, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %38, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 1, %32
  %34 = mul nsw i32 %31, %33
  %35 = call i32 @a_pow(%struct.bch_control* %30, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = xor i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %25

41:                                               ; preds = %25
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %46 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  br label %56

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %20

56:                                               ; preds = %44, %20
  %57 = load i32, i32* %3, align 4
  store i32 %57, i32* %10, align 4
  %58 = mul nuw i64 4, %17
  %59 = trunc i64 %58 to i32
  %60 = call i32 @memset(i32* %19, i32 0, i32 %59)
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %120, %56
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %64 = call i32 @GF_N(%struct.bch_control* %63)
  %65 = icmp ule i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %66, %61
  %70 = phi i1 [ false, %61 ], [ %68, %66 ]
  br i1 %70, label %71, label %123

71:                                               ; preds = %69
  %72 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @gf_sqr(%struct.bch_control* %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = xor i32 %74, %75
  store i32 %76, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %116, %71
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %119

80:                                               ; preds = %77
  %81 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @a_log(%struct.bch_control* %81, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %80
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %112

90:                                               ; preds = %86
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %19, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %112, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.bch_control*, %struct.bch_control** %2, align 8
  %99 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %19, i64 %105
  store i32 1, i32* %106, align 4
  %107 = load i32, i32* %10, align 4
  %108 = add i32 %107, -1
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @dbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110)
  br label %119

112:                                              ; preds = %90, %86, %80
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %9, align 4
  %115 = xor i32 %114, %113
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %4, align 4
  br label %77

119:                                              ; preds = %96, %77
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %8, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %61

123:                                              ; preds = %69
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 -1, i32 0
  %128 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %128)
  ret i32 %127
}

declare dso_local i32 @GF_M(%struct.bch_control*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @a_pow(%struct.bch_control*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @GF_N(%struct.bch_control*) #1

declare dso_local i32 @gf_sqr(%struct.bch_control*, i32) #1

declare dso_local i32 @a_log(%struct.bch_control*, i32) #1

declare dso_local i32 @dbg(i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
