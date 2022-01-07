; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_kimage_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_kimage_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32* }

@current = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (i32, i32)* @kimage_alloc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @kimage_alloc_pages(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @current, align 4
  %10 = call i64 @fatal_signal_pending(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.page* null, %struct.page** %3, align 8
  br label %71

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @__GFP_ZERO, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.page* @alloc_pages(i32 %17, i32 %18)
  store %struct.page* %19, %struct.page** %6, align 8
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %22, label %69

22:                                               ; preds = %13
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = getelementptr inbounds %struct.page, %struct.page* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @set_page_private(%struct.page* %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 1, %28
  store i32 %29, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %40, %22
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.page*, %struct.page** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.page, %struct.page* %35, i64 %37
  %39 = call i32 @SetPageReserved(%struct.page* %38)
  br label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %30

43:                                               ; preds = %30
  %44 = load %struct.page*, %struct.page** %6, align 8
  %45 = call i32 @page_address(%struct.page* %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @arch_kexec_post_alloc_pages(i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @__GFP_ZERO, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %64, %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load %struct.page*, %struct.page** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.page, %struct.page* %59, i64 %61
  %63 = call i32 @clear_highpage(%struct.page* %62)
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %54

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %43
  br label %69

69:                                               ; preds = %68, %13
  %70 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %70, %struct.page** %3, align 8
  br label %71

71:                                               ; preds = %69, %12
  %72 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %72
}

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @SetPageReserved(%struct.page*) #1

declare dso_local i32 @arch_kexec_post_alloc_pages(i32, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @clear_highpage(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
