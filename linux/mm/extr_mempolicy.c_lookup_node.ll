; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_lookup_node.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_lookup_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64)* @lookup_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_node(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 1, i32* %7, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @PAGE_MASK, align 8
  %10 = and i64 %8, %9
  %11 = call i32 @get_user_pages_locked(i64 %10, i32 1, i32 0, %struct.page** %5, i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = call i32 @page_to_nid(%struct.page* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call i32 @put_page(%struct.page* %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %24 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %23, i32 0, i32 0
  %25 = call i32 @up_read(i32* %24)
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @get_user_pages_locked(i64, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
