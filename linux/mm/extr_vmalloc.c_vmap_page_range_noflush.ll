; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_vmap_page_range_noflush.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_vmap_page_range_noflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, %struct.page**)* @vmap_page_range_noflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmap_page_range_noflush(i64 %0, i64 %1, i32 %2, %struct.page** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.page** %3, %struct.page*** %9, align 8
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp uge i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i64, i64* %12, align 8
  %22 = call i32* @pgd_offset_k(i64 %21)
  store i32* %22, i32** %10, align 8
  br label %23

23:                                               ; preds = %38, %4
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @pgd_addr_end(i64 %24, i64 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.page**, %struct.page*** %9, align 8
  %32 = call i32 @vmap_p4d_range(i32* %27, i64 %28, i64 %29, i32 %30, %struct.page** %31, i32* %14)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %5, align 4
  br label %47

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37
  %39 = load i32*, i32** %10, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %10, align 8
  %41 = load i64, i64* %11, align 8
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %23, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %35
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i32 @vmap_p4d_range(i32*, i64, i64, i32, %struct.page**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
