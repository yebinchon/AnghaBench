; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_delete_from_page_cache_batch.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_delete_from_page_cache_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.pagevec = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_from_page_cache_batch(%struct.address_space* %0, %struct.pagevec* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.pagevec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.pagevec* %1, %struct.pagevec** %4, align 8
  %7 = load %struct.pagevec*, %struct.pagevec** %4, align 8
  %8 = call i32 @pagevec_count(%struct.pagevec* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %68

11:                                               ; preds = %2
  %12 = load %struct.address_space*, %struct.address_space** %3, align 8
  %13 = getelementptr inbounds %struct.address_space, %struct.address_space* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @xa_lock_irqsave(i32* %13, i64 %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %39, %11
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.pagevec*, %struct.pagevec** %4, align 8
  %19 = call i32 @pagevec_count(%struct.pagevec* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load %struct.pagevec*, %struct.pagevec** %4, align 8
  %23 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @trace_mm_filemap_delete_from_page_cache(i32 %28)
  %30 = load %struct.address_space*, %struct.address_space** %3, align 8
  %31 = load %struct.pagevec*, %struct.pagevec** %4, align 8
  %32 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @unaccount_page_cache_page(%struct.address_space* %30, i32 %37)
  br label %39

39:                                               ; preds = %21
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %16

42:                                               ; preds = %16
  %43 = load %struct.address_space*, %struct.address_space** %3, align 8
  %44 = load %struct.pagevec*, %struct.pagevec** %4, align 8
  %45 = call i32 @page_cache_delete_batch(%struct.address_space* %43, %struct.pagevec* %44)
  %46 = load %struct.address_space*, %struct.address_space** %3, align 8
  %47 = getelementptr inbounds %struct.address_space, %struct.address_space* %46, i32 0, i32 0
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @xa_unlock_irqrestore(i32* %47, i64 %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %65, %42
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.pagevec*, %struct.pagevec** %4, align 8
  %53 = call i32 @pagevec_count(%struct.pagevec* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.address_space*, %struct.address_space** %3, align 8
  %57 = load %struct.pagevec*, %struct.pagevec** %4, align 8
  %58 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @page_cache_free_page(%struct.address_space* %56, i32 %63)
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %50

68:                                               ; preds = %10, %50
  ret void
}

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @xa_lock_irqsave(i32*, i64) #1

declare dso_local i32 @trace_mm_filemap_delete_from_page_cache(i32) #1

declare dso_local i32 @unaccount_page_cache_page(%struct.address_space*, i32) #1

declare dso_local i32 @page_cache_delete_batch(%struct.address_space*, %struct.pagevec*) #1

declare dso_local i32 @xa_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @page_cache_free_page(%struct.address_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
