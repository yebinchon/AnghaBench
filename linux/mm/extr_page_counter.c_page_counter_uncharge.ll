; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_counter.c_page_counter_uncharge.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_counter.c_page_counter_uncharge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_counter = type { %struct.page_counter* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_counter_uncharge(%struct.page_counter* %0, i64 %1) #0 {
  %3 = alloca %struct.page_counter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.page_counter*, align 8
  store %struct.page_counter* %0, %struct.page_counter** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.page_counter*, %struct.page_counter** %3, align 8
  store %struct.page_counter* %6, %struct.page_counter** %5, align 8
  br label %7

7:                                                ; preds = %14, %2
  %8 = load %struct.page_counter*, %struct.page_counter** %5, align 8
  %9 = icmp ne %struct.page_counter* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load %struct.page_counter*, %struct.page_counter** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @page_counter_cancel(%struct.page_counter* %11, i64 %12)
  br label %14

14:                                               ; preds = %10
  %15 = load %struct.page_counter*, %struct.page_counter** %5, align 8
  %16 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %15, i32 0, i32 0
  %17 = load %struct.page_counter*, %struct.page_counter** %16, align 8
  store %struct.page_counter* %17, %struct.page_counter** %5, align 8
  br label %7

18:                                               ; preds = %7
  ret void
}

declare dso_local i32 @page_counter_cancel(%struct.page_counter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
