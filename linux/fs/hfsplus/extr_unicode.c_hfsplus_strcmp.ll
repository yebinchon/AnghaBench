; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_unicode.c_hfsplus_strcmp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_unicode.c_hfsplus_strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfsplus_unistr = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_strcmp(%struct.hfsplus_unistr* %0, %struct.hfsplus_unistr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfsplus_unistr*, align 8
  %5 = alloca %struct.hfsplus_unistr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.hfsplus_unistr* %0, %struct.hfsplus_unistr** %4, align 8
  store %struct.hfsplus_unistr* %1, %struct.hfsplus_unistr** %5, align 8
  %13 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %4, align 8
  %14 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @be16_to_cpu(i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %5, align 8
  %18 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @be16_to_cpu(i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %4, align 8
  %22 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  %24 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %5, align 8
  %25 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %11, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @min(i64 %27, i64 %28)
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %54, %2
  %31 = load i32, i32* %12, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @be16_to_cpu(i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @be16_to_cpu(i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp slt i64 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 -1, i32 1
  store i32 %48, i32* %3, align 4
  br label %70

49:                                               ; preds = %33
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %11, align 8
  br label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %12, align 4
  br label %30

57:                                               ; preds = %30
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %68

62:                                               ; preds = %57
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp sgt i64 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 0
  br label %68

68:                                               ; preds = %62, %61
  %69 = phi i32 [ -1, %61 ], [ %67, %62 ]
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %43
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
