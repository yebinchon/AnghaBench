; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_internal.h_mem_map_offset.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_internal.h_mem_map_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@MAX_ORDER_NR_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.page*, i32)* @mem_map_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @mem_map_offset(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MAX_ORDER_NR_PAGES, align 4
  %8 = icmp sge i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.page* @nth_page(%struct.page* %13, i32 %14)
  store %struct.page* %15, %struct.page** %3, align 8
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.page, %struct.page* %17, i64 %19
  store %struct.page* %20, %struct.page** %3, align 8
  br label %21

21:                                               ; preds = %16, %12
  %22 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %22
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @nth_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
