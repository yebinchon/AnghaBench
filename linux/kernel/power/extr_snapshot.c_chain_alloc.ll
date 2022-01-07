; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_chain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_chain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chain_allocator = type { i32, %struct.linked_page*, i32, i64 }
%struct.linked_page = type { i8*, %struct.linked_page* }

@LINKED_PAGE_DATA_SIZE = common dso_local global i32 0, align 4
@PG_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.chain_allocator*, i32)* @chain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @chain_alloc(%struct.chain_allocator* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.chain_allocator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.linked_page*, align 8
  store %struct.chain_allocator* %0, %struct.chain_allocator** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @LINKED_PAGE_DATA_SIZE, align 4
  %9 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %10 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub i32 %8, %11
  %13 = load i32, i32* %5, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %2
  %16 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %17 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %22 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.linked_page* @__get_safe_page(i32 %23)
  br label %31

25:                                               ; preds = %15
  %26 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %27 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PG_ANY, align 4
  %30 = call %struct.linked_page* @get_image_page(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %20
  %32 = phi %struct.linked_page* [ %24, %20 ], [ %30, %25 ]
  store %struct.linked_page* %32, %struct.linked_page** %7, align 8
  %33 = load %struct.linked_page*, %struct.linked_page** %7, align 8
  %34 = icmp ne %struct.linked_page* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i8* null, i8** %3, align 8
  br label %64

36:                                               ; preds = %31
  %37 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %38 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %37, i32 0, i32 1
  %39 = load %struct.linked_page*, %struct.linked_page** %38, align 8
  %40 = load %struct.linked_page*, %struct.linked_page** %7, align 8
  %41 = getelementptr inbounds %struct.linked_page, %struct.linked_page* %40, i32 0, i32 1
  store %struct.linked_page* %39, %struct.linked_page** %41, align 8
  %42 = load %struct.linked_page*, %struct.linked_page** %7, align 8
  %43 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %44 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %43, i32 0, i32 1
  store %struct.linked_page* %42, %struct.linked_page** %44, align 8
  %45 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %46 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  br label %47

47:                                               ; preds = %36, %2
  %48 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %49 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %48, i32 0, i32 1
  %50 = load %struct.linked_page*, %struct.linked_page** %49, align 8
  %51 = getelementptr inbounds %struct.linked_page, %struct.linked_page* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %54 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = zext i32 %55 to i64
  %57 = getelementptr i8, i8* %52, i64 %56
  store i8* %57, i8** %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %60 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i8*, i8** %6, align 8
  store i8* %63, i8** %3, align 8
  br label %64

64:                                               ; preds = %47, %35
  %65 = load i8*, i8** %3, align 8
  ret i8* %65
}

declare dso_local %struct.linked_page* @__get_safe_page(i32) #1

declare dso_local %struct.linked_page* @get_image_page(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
