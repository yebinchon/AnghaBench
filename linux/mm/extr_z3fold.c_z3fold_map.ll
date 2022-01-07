; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_map.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z3fold_pool = type { i32 }
%struct.z3fold_header = type { i32, i32 }
%struct.page = type { i32 }

@PAGE_HEADLESS = common dso_local global i32 0, align 4
@ZHDR_SIZE_ALIGNED = common dso_local global i32 0, align 4
@CHUNK_SHIFT = common dso_local global i32 0, align 4
@MIDDLE_CHUNK_MAPPED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown buddy id %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.z3fold_pool*, i64)* @z3fold_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @z3fold_map(%struct.z3fold_pool* %0, i64 %1) #0 {
  %3 = alloca %struct.z3fold_pool*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.z3fold_header*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.z3fold_pool* %0, %struct.z3fold_pool** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call %struct.z3fold_header* @handle_to_z3fold_header(i64 %9)
  store %struct.z3fold_header* %10, %struct.z3fold_header** %5, align 8
  %11 = load %struct.z3fold_header*, %struct.z3fold_header** %5, align 8
  %12 = bitcast %struct.z3fold_header* %11 to i8*
  store i8* %12, i8** %7, align 8
  %13 = load %struct.z3fold_header*, %struct.z3fold_header** %5, align 8
  %14 = call %struct.page* @virt_to_page(%struct.z3fold_header* %13)
  store %struct.page* %14, %struct.page** %6, align 8
  %15 = load i32, i32* @PAGE_HEADLESS, align 4
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %70

21:                                               ; preds = %2
  %22 = load %struct.z3fold_header*, %struct.z3fold_header** %5, align 8
  %23 = call i32 @z3fold_page_lock(%struct.z3fold_header* %22)
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @handle_to_buddy(i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %55 [
    i32 130, label %27
    i32 128, label %32
    i32 129, label %45
  ]

27:                                               ; preds = %21
  %28 = load i32, i32* @ZHDR_SIZE_ALIGNED, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr i8, i8* %29, i64 %30
  store i8* %31, i8** %7, align 8
  br label %59

32:                                               ; preds = %21
  %33 = load %struct.z3fold_header*, %struct.z3fold_header** %5, align 8
  %34 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CHUNK_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i8*, i8** %7, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr i8, i8* %38, i64 %39
  store i8* %40, i8** %7, align 8
  %41 = load i32, i32* @MIDDLE_CHUNK_MAPPED, align 4
  %42 = load %struct.page*, %struct.page** %6, align 8
  %43 = getelementptr inbounds %struct.page, %struct.page* %42, i32 0, i32 0
  %44 = call i32 @set_bit(i32 %41, i32* %43)
  br label %59

45:                                               ; preds = %21
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @handle_to_chunks(i64 %47)
  %49 = load i32, i32* @CHUNK_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = sub nsw i32 %46, %50
  %52 = load i8*, i8** %7, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr i8, i8* %52, i64 %53
  store i8* %54, i8** %7, align 8
  br label %59

55:                                               ; preds = %21
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = call i32 @WARN_ON(i32 1)
  store i8* null, i8** %7, align 8
  br label %59

59:                                               ; preds = %55, %45, %32, %27
  %60 = load i8*, i8** %7, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.z3fold_header*, %struct.z3fold_header** %5, align 8
  %64 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %59
  %68 = load %struct.z3fold_header*, %struct.z3fold_header** %5, align 8
  %69 = call i32 @z3fold_page_unlock(%struct.z3fold_header* %68)
  br label %70

70:                                               ; preds = %67, %20
  %71 = load i8*, i8** %7, align 8
  ret i8* %71
}

declare dso_local %struct.z3fold_header* @handle_to_z3fold_header(i64) #1

declare dso_local %struct.page* @virt_to_page(%struct.z3fold_header*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @z3fold_page_lock(%struct.z3fold_header*) #1

declare dso_local i32 @handle_to_buddy(i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @handle_to_chunks(i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @z3fold_page_unlock(%struct.z3fold_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
