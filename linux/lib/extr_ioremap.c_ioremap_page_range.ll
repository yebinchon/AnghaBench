; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_ioremap.c_ioremap_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_ioremap.c_ioremap_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ioremap_page_range(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = call i32 (...) @might_sleep()
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp uge i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32* @pgd_offset_k(i64 %20)
  store i32* %21, i32** %9, align 8
  br label %22

22:                                               ; preds = %36, %4
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @pgd_addr_end(i64 %23, i64 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ioremap_p4d_range(i32* %26, i64 %27, i64 %28, i64 %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %48

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %9, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %5, align 8
  %41 = sub i64 %39, %40
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %11, align 8
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %22, label %48

48:                                               ; preds = %36, %34
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @flush_cache_vmap(i64 %49, i64 %50)
  %52 = load i32, i32* %12, align 4
  ret i32 %52
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i32 @ioremap_p4d_range(i32*, i64, i64, i64, i32) #1

declare dso_local i32 @flush_cache_vmap(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
