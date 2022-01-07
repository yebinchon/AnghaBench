; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_counter.c_page_counter_charge.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_counter.c_page_counter_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_counter = type { i64, i32, %struct.page_counter* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_counter_charge(%struct.page_counter* %0, i64 %1) #0 {
  %3 = alloca %struct.page_counter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.page_counter*, align 8
  %6 = alloca i64, align 8
  store %struct.page_counter* %0, %struct.page_counter** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.page_counter*, %struct.page_counter** %3, align 8
  store %struct.page_counter* %7, %struct.page_counter** %5, align 8
  br label %8

8:                                                ; preds = %29, %2
  %9 = load %struct.page_counter*, %struct.page_counter** %5, align 8
  %10 = icmp ne %struct.page_counter* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.page_counter*, %struct.page_counter** %5, align 8
  %14 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %13, i32 0, i32 1
  %15 = call i64 @atomic_long_add_return(i64 %12, i32* %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.page_counter*, %struct.page_counter** %3, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @propagate_protected_usage(%struct.page_counter* %16, i64 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.page_counter*, %struct.page_counter** %5, align 8
  %21 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %11
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.page_counter*, %struct.page_counter** %5, align 8
  %27 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %11
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.page_counter*, %struct.page_counter** %5, align 8
  %31 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %30, i32 0, i32 2
  %32 = load %struct.page_counter*, %struct.page_counter** %31, align 8
  store %struct.page_counter* %32, %struct.page_counter** %5, align 8
  br label %8

33:                                               ; preds = %8
  ret void
}

declare dso_local i64 @atomic_long_add_return(i64, i32*) #1

declare dso_local i32 @propagate_protected_usage(%struct.page_counter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
