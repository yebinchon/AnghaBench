; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slub.c___ksize.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slub.c___ksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@ZERO_SIZE_PTR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__ksize(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.page*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** @ZERO_SIZE_PTR, align 8
  %7 = icmp eq i8* %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %36

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.page* @virt_to_head_page(i8* %13)
  store %struct.page* %14, %struct.page** %4, align 8
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i32 @PageSlab(%struct.page* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %12
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i32 @PageCompound(%struct.page* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = call i64 @page_size(%struct.page* %29)
  store i64 %30, i64* %2, align 8
  br label %36

31:                                               ; preds = %12
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = getelementptr inbounds %struct.page, %struct.page* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @slab_ksize(i32 %34)
  store i64 %35, i64* %2, align 8
  br label %36

36:                                               ; preds = %31, %22, %11
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i32 @PageSlab(%struct.page*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i64 @page_size(%struct.page*) #1

declare dso_local i64 @slab_ksize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
