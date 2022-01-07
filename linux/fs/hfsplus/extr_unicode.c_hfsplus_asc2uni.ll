; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_unicode.c_hfsplus_asc2uni.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_unicode.c_hfsplus_asc2uni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfsplus_unistr = type { i8*, i8** }
%struct.TYPE_2__ = type { i32 }

@HFSPLUS_SB_NODECOMPOSE = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_asc2uni(%struct.super_block* %0, %struct.hfsplus_unistr* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.hfsplus_unistr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [3 x i32], align 4
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.hfsplus_unistr* %1, %struct.hfsplus_unistr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* @HFSPLUS_SB_NODECOMPOSE, align 4
  %20 = load %struct.super_block*, %struct.super_block** %7, align 8
  %21 = call %struct.TYPE_2__* @HFSPLUS_SB(%struct.super_block* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @test_bit(i32 %19, i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %14, align 4
  br label %27

27:                                               ; preds = %86, %5
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  %33 = icmp sgt i32 %32, 0
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i1 [ false, %27 ], [ %33, %31 ]
  br i1 %35, label %36, label %94

36:                                               ; preds = %34
  %37 = load %struct.super_block*, %struct.super_block** %7, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @asc2unichar(%struct.super_block* %37, i8* %38, i32 %39, i32* %17)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* %17, align 4
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %46 = call i32* @decompose_unichar(i32 %44, i32* %13, i32* %45)
  store i32* %46, i32** %15, align 8
  br label %48

47:                                               ; preds = %36
  store i32* null, i32** %15, align 8
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i32*, i32** %15, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %76

51:                                               ; preds = %48
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %94

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %71, %58
  %60 = load i32*, i32** %15, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %15, align 8
  %62 = load i32, i32* %60, align 4
  %63 = call i8* @cpu_to_be16(i32 %62)
  %64 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %8, align 8
  %65 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %16, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8*, i8** %66, i64 %69
  store i8* %63, i8** %70, align 8
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %13, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %59, label %75

75:                                               ; preds = %71
  br label %86

76:                                               ; preds = %48
  %77 = load i32, i32* %17, align 4
  %78 = call i8* @cpu_to_be16(i32 %77)
  %79 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %8, align 8
  %80 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %79, i32 0, i32 1
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %16, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8*, i8** %81, i64 %84
  store i8* %78, i8** %85, align 8
  br label %86

86:                                               ; preds = %76, %75
  %87 = load i32, i32* %12, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %10, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %27

94:                                               ; preds = %57, %34
  %95 = load i32, i32* %16, align 4
  %96 = call i8* @cpu_to_be16(i32 %95)
  %97 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %8, align 8
  %98 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* %11, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* @ENAMETOOLONG, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %105

104:                                              ; preds = %94
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %104, %101
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @asc2unichar(%struct.super_block*, i8*, i32, i32*) #1

declare dso_local i32* @decompose_unichar(i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
