; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap.c_pagevec_remove_exceptionals.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap.c_pagevec_remove_exceptionals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pagevec = type { i32, %struct.page** }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pagevec_remove_exceptionals(%struct.pagevec* %0) #0 {
  %2 = alloca %struct.pagevec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  store %struct.pagevec* %0, %struct.pagevec** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %9 = call i32 @pagevec_count(%struct.pagevec* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %6
  %12 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %13 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %12, i32 0, i32 1
  %14 = load %struct.page**, %struct.page*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.page*, %struct.page** %14, i64 %16
  %18 = load %struct.page*, %struct.page** %17, align 8
  store %struct.page* %18, %struct.page** %5, align 8
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = call i32 @xa_is_value(%struct.page* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %11
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %25 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %24, i32 0, i32 1
  %26 = load %struct.page**, %struct.page*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 %29
  store %struct.page* %23, %struct.page** %30, align 8
  br label %31

31:                                               ; preds = %22, %11
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %6

35:                                               ; preds = %6
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %38 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  ret void
}

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @xa_is_value(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
