; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_scatterlist.c_sg_copy_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_scatterlist.c_sg_copy_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.sg_mapping_iter = type { i8*, i32 }

@SG_MITER_ATOMIC = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@SG_MITER_TO_SG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sg_copy_buffer(%struct.scatterlist* %0, i32 %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sg_mapping_iter, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* @SG_MITER_ATOMIC, align 4
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32, i32* @SG_MITER_FROM_SG, align 4
  %23 = load i32, i32* %16, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %16, align 4
  br label %29

25:                                               ; preds = %6
  %26 = load i32, i32* @SG_MITER_TO_SG, align 4
  %27 = load i32, i32* %16, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %16, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %15, %struct.scatterlist* %30, i32 %31, i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @sg_miter_skip(%struct.sg_mapping_iter* %15, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  store i64 0, i64* %7, align 8
  br label %85

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %77, %38
  %40 = load i32, i32* %14, align 4
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %11, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = call i64 @sg_miter_next(%struct.sg_mapping_iter* %15)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %44, %39
  %48 = phi i1 [ false, %39 ], [ %46, %44 ]
  br i1 %48, label %49, label %81

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %15, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i32, i32* %14, align 4
  %54 = zext i32 %53 to i64
  %55 = sub i64 %52, %54
  %56 = call i32 @min(i32 %51, i64 %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %49
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* %14, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr i8, i8* %60, i64 %62
  %64 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %15, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @memcpy(i8* %63, i8* %65, i32 %66)
  br label %77

68:                                               ; preds = %49
  %69 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %15, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %14, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr i8, i8* %71, i64 %73
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @memcpy(i8* %70, i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %59
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %14, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %14, align 4
  br label %39

81:                                               ; preds = %47
  %82 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %15)
  %83 = load i32, i32* %14, align 4
  %84 = zext i32 %83 to i64
  store i64 %84, i64* %7, align 8
  br label %85

85:                                               ; preds = %81, %37
  %86 = load i64, i64* %7, align 8
  ret i64 %86
}

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_miter_skip(%struct.sg_mapping_iter*, i32) #1

declare dso_local i64 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
