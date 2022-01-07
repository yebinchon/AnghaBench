; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_scatterlist.c_sg_zero_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_scatterlist.c_sg_zero_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.sg_mapping_iter = type { i32, i32 }

@SG_MITER_ATOMIC = common dso_local global i32 0, align 4
@SG_MITER_TO_SG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sg_zero_buffer(%struct.scatterlist* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sg_mapping_iter, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @SG_MITER_ATOMIC, align 4
  %15 = load i32, i32* @SG_MITER_TO_SG, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %11, %struct.scatterlist* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @sg_miter_skip(%struct.sg_mapping_iter* %11, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %55

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %36, %25
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = call i64 @sg_miter_next(%struct.sg_mapping_iter* %11)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi i1 [ false, %26 ], [ %33, %31 ]
  br i1 %35, label %36, label %51

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %11, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = sub i64 %39, %41
  %43 = call i32 @min(i32 %38, i64 %42)
  store i32 %43, i32* %13, align 4
  %44 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %11, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @memset(i32 %45, i32 0, i32 %46)
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %10, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %26

51:                                               ; preds = %34
  %52 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %11)
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %51, %24
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_miter_skip(%struct.sg_mapping_iter*, i32) #1

declare dso_local i64 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
