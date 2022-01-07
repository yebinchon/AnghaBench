; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c_num_free_chunks.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c_num_free_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z3fold_header = type { i64, i32, i32, i32 }

@ZHDR_CHUNKS = common dso_local global i32 0, align 4
@TOTAL_CHUNKS = common dso_local global i32 0, align 4
@NCHUNKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z3fold_header*)* @num_free_chunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @num_free_chunks(%struct.z3fold_header* %0) #0 {
  %2 = alloca %struct.z3fold_header*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.z3fold_header* %0, %struct.z3fold_header** %2, align 8
  %6 = load %struct.z3fold_header*, %struct.z3fold_header** %2, align 8
  %7 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %1
  %11 = load %struct.z3fold_header*, %struct.z3fold_header** %2, align 8
  %12 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %22

16:                                               ; preds = %10
  %17 = load %struct.z3fold_header*, %struct.z3fold_header** %2, align 8
  %18 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ZHDR_CHUNKS, align 4
  %21 = sub nsw i32 %19, %20
  br label %22

22:                                               ; preds = %16, %15
  %23 = phi i32 [ 0, %15 ], [ %21, %16 ]
  store i32 %23, i32* %4, align 4
  %24 = load %struct.z3fold_header*, %struct.z3fold_header** %2, align 8
  %25 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %41

29:                                               ; preds = %22
  %30 = load i32, i32* @TOTAL_CHUNKS, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.z3fold_header*, %struct.z3fold_header** %2, align 8
  %33 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.z3fold_header*, %struct.z3fold_header** %2, align 8
  %37 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = sub nsw i64 %31, %39
  br label %41

41:                                               ; preds = %29, %28
  %42 = phi i64 [ 0, %28 ], [ %40, %29 ]
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @max(i32 %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %57

47:                                               ; preds = %1
  %48 = load i32, i32* @NCHUNKS, align 4
  %49 = load %struct.z3fold_header*, %struct.z3fold_header** %2, align 8
  %50 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %48, %51
  %53 = load %struct.z3fold_header*, %struct.z3fold_header** %2, align 8
  %54 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %52, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %47, %41
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
