; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_unicode.c_hfsplus_strcasecmp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_unicode.c_hfsplus_strcasecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfsplus_unistr = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_strcasecmp(%struct.hfsplus_unistr* %0, %struct.hfsplus_unistr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfsplus_unistr*, align 8
  %5 = alloca %struct.hfsplus_unistr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.hfsplus_unistr* %0, %struct.hfsplus_unistr** %4, align 8
  store %struct.hfsplus_unistr* %1, %struct.hfsplus_unistr** %5, align 8
  %12 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %4, align 8
  %13 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @be16_to_cpu(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %5, align 8
  %17 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @be16_to_cpu(i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %4, align 8
  %21 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %10, align 8
  %23 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %5, align 8
  %24 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  br label %26

26:                                               ; preds = %2, %81
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %36, label %45

36:                                               ; preds = %34
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @be16_to_cpu(i32 %38)
  %40 = call i64 @case_fold(i64 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %10, align 8
  %43 = load i64, i64* %6, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %6, align 8
  br label %27

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %55, %45
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  br i1 %54, label %55, label %64

55:                                               ; preds = %53
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @be16_to_cpu(i32 %57)
  %59 = call i64 @case_fold(i64 %58)
  store i64 %59, i64* %9, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %11, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %7, align 8
  br label %46

64:                                               ; preds = %53
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp slt i64 %69, %70
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 -1, i32 1
  store i32 %73, i32* %3, align 4
  br label %82

74:                                               ; preds = %64
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %82

81:                                               ; preds = %77, %74
  br label %26

82:                                               ; preds = %80, %68
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @case_fold(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
