; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_get_hwpoison_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_get_hwpoison_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Memory failure: %#lx: non anonymous thp\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Memory failure: %#lx cannot catch tail\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hwpoison_page(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = call %struct.page* @compound_head(%struct.page* %5)
  store %struct.page* %6, %struct.page** %4, align 8
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = call i32 @PageHuge(%struct.page* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call i64 @PageTransHuge(%struct.page* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i32 @PageAnon(%struct.page* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i32 @page_to_pfn(%struct.page* %19)
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %2, align 4
  br label %40

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %10, %1
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i64 @get_page_unless_zero(%struct.page* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = load %struct.page*, %struct.page** %3, align 8
  %30 = call %struct.page* @compound_head(%struct.page* %29)
  %31 = icmp eq %struct.page* %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %40

33:                                               ; preds = %27
  %34 = load %struct.page*, %struct.page** %3, align 8
  %35 = call i32 @page_to_pfn(%struct.page* %34)
  %36 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.page*, %struct.page** %4, align 8
  %38 = call i32 @put_page(%struct.page* %37)
  br label %39

39:                                               ; preds = %33, %23
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %32, %18
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32 @PageHuge(%struct.page*) #1

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @PageAnon(%struct.page*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i64 @get_page_unless_zero(%struct.page*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
