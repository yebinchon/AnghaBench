; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_counter.c_page_counter_set_min.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_counter.c_page_counter_set_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_counter = type { i64, i32, %struct.page_counter* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_counter_set_min(%struct.page_counter* %0, i64 %1) #0 {
  %3 = alloca %struct.page_counter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.page_counter*, align 8
  store %struct.page_counter* %0, %struct.page_counter** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.page_counter*, %struct.page_counter** %3, align 8
  %8 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %7, i32 0, i32 0
  store i64 %6, i64* %8, align 8
  %9 = load %struct.page_counter*, %struct.page_counter** %3, align 8
  store %struct.page_counter* %9, %struct.page_counter** %5, align 8
  br label %10

10:                                               ; preds = %19, %2
  %11 = load %struct.page_counter*, %struct.page_counter** %5, align 8
  %12 = icmp ne %struct.page_counter* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load %struct.page_counter*, %struct.page_counter** %5, align 8
  %15 = load %struct.page_counter*, %struct.page_counter** %5, align 8
  %16 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %15, i32 0, i32 1
  %17 = call i32 @atomic_long_read(i32* %16)
  %18 = call i32 @propagate_protected_usage(%struct.page_counter* %14, i32 %17)
  br label %19

19:                                               ; preds = %13
  %20 = load %struct.page_counter*, %struct.page_counter** %5, align 8
  %21 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %20, i32 0, i32 2
  %22 = load %struct.page_counter*, %struct.page_counter** %21, align 8
  store %struct.page_counter* %22, %struct.page_counter** %5, align 8
  br label %10

23:                                               ; preds = %10
  ret void
}

declare dso_local i32 @propagate_protected_usage(%struct.page_counter*, i32) #1

declare dso_local i32 @atomic_long_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
