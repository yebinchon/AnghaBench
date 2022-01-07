; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_apply_to_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_apply_to_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_to_page_range(%struct.mm_struct* %0, i64 %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %14, align 8
  %21 = icmp uge i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %56

28:                                               ; preds = %5
  %29 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32* @pgd_offset(%struct.mm_struct* %29, i64 %30)
  store i32* %31, i32** %12, align 8
  br label %32

32:                                               ; preds = %47, %28
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i64 @pgd_addr_end(i64 %33, i64 %34)
  store i64 %35, i64* %13, align 8
  %36 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @apply_to_p4d_range(%struct.mm_struct* %36, i32* %37, i64 %38, i64 %39, i32 %40, i8* %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %54

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %12, align 8
  %50 = load i64, i64* %13, align 8
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %14, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %32, label %54

54:                                               ; preds = %47, %45
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %25
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i32 @apply_to_p4d_range(%struct.mm_struct*, i32*, i64, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
