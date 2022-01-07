; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_util.c___page_mapcount.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_util.c___page_mapcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__page_mapcount(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = getelementptr inbounds %struct.page, %struct.page* %5, i32 0, i32 0
  %7 = call i32 @atomic_read(i32* %6)
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %4, align 4
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = call i32 @PageAnon(%struct.page* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = call i32 @PageHuge(%struct.page* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %35

18:                                               ; preds = %12, %1
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call %struct.page* @compound_head(%struct.page* %19)
  store %struct.page* %20, %struct.page** %3, align 8
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = call i32* @compound_mapcount_ptr(%struct.page* %21)
  %23 = call i32 @atomic_read(i32* %22)
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.page*, %struct.page** %3, align 8
  %28 = call i64 @PageDoubleMap(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %18
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %16
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @PageAnon(%struct.page*) #1

declare dso_local i32 @PageHuge(%struct.page*) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32* @compound_mapcount_ptr(%struct.page*) #1

declare dso_local i64 @PageDoubleMap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
