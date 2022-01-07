; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/extr_dax-dev.c_dax_pgoff_to_phys.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/extr_dax-dev.c_dax_pgoff_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_dax = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.resource }
%struct.resource = type { i64, i64 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dax_pgoff_to_phys(%struct.dev_dax* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dev_dax*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  store %struct.dev_dax* %0, %struct.dev_dax** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.dev_dax*, %struct.dev_dax** %5, align 8
  %12 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.resource* %14, %struct.resource** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = load %struct.resource*, %struct.resource** %8, align 8
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %18, %21
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.resource*, %struct.resource** %8, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %3
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.resource*, %struct.resource** %8, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ule i64 %29, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %28
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %35, %36
  %38 = sub i64 %37, 1
  %39 = load %struct.resource*, %struct.resource** %8, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ule i64 %38, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %34
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @get_nfit_res(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load %struct.dev_dax*, %struct.dev_dax** %5, align 8
  %49 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i64 -1, i64* %4, align 8
  br label %67

56:                                               ; preds = %47
  %57 = load i64, i64* %9, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = call %struct.page* @vmalloc_to_page(i8* %58)
  store %struct.page* %59, %struct.page** %10, align 8
  %60 = load %struct.page*, %struct.page** %10, align 8
  %61 = call i32 @page_to_pfn(%struct.page* %60)
  %62 = call i64 @PFN_PHYS(i32 %61)
  store i64 %62, i64* %4, align 8
  br label %67

63:                                               ; preds = %43
  %64 = load i64, i64* %9, align 8
  store i64 %64, i64* %4, align 8
  br label %67

65:                                               ; preds = %34
  br label %66

66:                                               ; preds = %65, %28, %3
  store i64 -1, i64* %4, align 8
  br label %67

67:                                               ; preds = %66, %63, %56, %55
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i64 @get_nfit_res(i64) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local i64 @PFN_PHYS(i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
