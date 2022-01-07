; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_io.c_swap_writepage.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_io.c_swap_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.writeback_control = type { i32 }

@end_swap_bio_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swap_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.writeback_control*, align 8
  %5 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = call i64 @try_to_free_swap(%struct.page* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call i32 @unlock_page(%struct.page* %10)
  br label %28

12:                                               ; preds = %2
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = call i64 @frontswap_store(%struct.page* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @set_page_writeback(%struct.page* %17)
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i32 @unlock_page(%struct.page* %19)
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = call i32 @end_page_writeback(%struct.page* %21)
  br label %28

23:                                               ; preds = %12
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %26 = load i32, i32* @end_swap_bio_write, align 4
  %27 = call i32 @__swap_writepage(%struct.page* %24, %struct.writeback_control* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %23, %16, %9
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i64 @try_to_free_swap(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i64 @frontswap_store(%struct.page*) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

declare dso_local i32 @__swap_writepage(%struct.page*, %struct.writeback_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
