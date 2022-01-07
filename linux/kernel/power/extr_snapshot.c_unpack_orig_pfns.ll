; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_unpack_orig_pfns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_unpack_orig_pfns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_bitmap = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@BM_END_OF_MAP = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.memory_bitmap*)* @unpack_orig_pfns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_orig_pfns(i64* %0, %struct.memory_bitmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.memory_bitmap*, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store %struct.memory_bitmap* %1, %struct.memory_bitmap** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %60, %2
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = udiv i64 %11, 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %63

14:                                               ; preds = %7
  %15 = load i64*, i64** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BM_END_OF_MAP, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %63

26:                                               ; preds = %14
  %27 = load i64*, i64** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = call i32 @page_key_memorize(i64* %30)
  %32 = load i64*, i64** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @pfn_valid(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %26
  %40 = load %struct.memory_bitmap*, %struct.memory_bitmap** %5, align 8
  %41 = load i64*, i64** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @memory_bm_pfn_present(%struct.memory_bitmap* %40, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load %struct.memory_bitmap*, %struct.memory_bitmap** %5, align 8
  %50 = load i64*, i64** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @memory_bm_set_bit(%struct.memory_bitmap* %49, i64 %54)
  br label %59

56:                                               ; preds = %39, %26
  %57 = load i32, i32* @EFAULT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %64

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %7

63:                                               ; preds = %25, %7
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %56
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @page_key_memorize(i64*) #1

declare dso_local i64 @pfn_valid(i64) #1

declare dso_local i64 @memory_bm_pfn_present(%struct.memory_bitmap*, i64) #1

declare dso_local i32 @memory_bm_set_bit(%struct.memory_bitmap*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
