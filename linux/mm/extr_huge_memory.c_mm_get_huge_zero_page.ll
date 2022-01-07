; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_mm_get_huge_zero_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_mm_get_huge_zero_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mm_struct = type { i32 }

@MMF_HUGE_ZERO_PAGE = common dso_local global i32 0, align 4
@huge_zero_page = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @mm_get_huge_zero_page(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %4 = load i32, i32* @MMF_HUGE_ZERO_PAGE, align 4
  %5 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %6 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %5, i32 0, i32 0
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @huge_zero_page, align 4
  %11 = call %struct.page* @READ_ONCE(i32 %10)
  store %struct.page* %11, %struct.page** %2, align 8
  br label %27

12:                                               ; preds = %1
  %13 = call i32 (...) @get_huge_zero_page()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store %struct.page* null, %struct.page** %2, align 8
  br label %27

16:                                               ; preds = %12
  %17 = load i32, i32* @MMF_HUGE_ZERO_PAGE, align 4
  %18 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 0
  %20 = call i64 @test_and_set_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 (...) @put_huge_zero_page()
  br label %24

24:                                               ; preds = %22, %16
  %25 = load i32, i32* @huge_zero_page, align 4
  %26 = call %struct.page* @READ_ONCE(i32 %25)
  store %struct.page* %26, %struct.page** %2, align 8
  br label %27

27:                                               ; preds = %24, %15, %9
  %28 = load %struct.page*, %struct.page** %2, align 8
  ret %struct.page* %28
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.page* @READ_ONCE(i32) #1

declare dso_local i32 @get_huge_zero_page(...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @put_huge_zero_page(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
