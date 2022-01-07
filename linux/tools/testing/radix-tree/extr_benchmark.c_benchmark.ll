; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_benchmark.c_benchmark.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_benchmark.c_benchmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.benchmark.size = private unnamed_addr constant [3 x i64] [i64 1024, i64 1048576, i64 0], align 16
@__const.benchmark.step = private unnamed_addr constant [12 x i64] [i64 1, i64 2, i64 7, i64 15, i64 63, i64 64, i64 65, i64 128, i64 256, i64 512, i64 12345, i64 0], align 16
@.str = private unnamed_addr constant [21 x i8] c"starting benchmarks\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"RADIX_TREE_MAP_SHIFT = %d\0A\00", align 1
@RADIX_TREE_MAP_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @benchmark() #0 {
  %1 = alloca [3 x i64], align 16
  %2 = alloca [12 x i64], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast [3 x i64]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([3 x i64]* @__const.benchmark.size to i8*), i64 24, i1 false)
  %6 = bitcast [12 x i64]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([12 x i64]* @__const.benchmark.step to i8*), i64 96, i1 false)
  %7 = call i32 (i32, i8*, ...) @printv(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @RADIX_TREE_MAP_SHIFT, align 4
  %9 = call i32 (i32, i8*, ...) @printv(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %37, %0
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [12 x i64], [12 x i64]* %2, i64 0, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [12 x i64], [12 x i64]* %2, i64 0, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @benchmark_size(i64 %27, i64 %31)
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %17

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %10

40:                                               ; preds = %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printv(i32, i8*, ...) #2

declare dso_local i32 @benchmark_size(i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
