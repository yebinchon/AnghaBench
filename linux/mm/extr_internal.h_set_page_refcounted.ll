; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_internal.h_set_page_refcounted.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_internal.h_set_page_refcounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @set_page_refcounted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_page_refcounted(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %3 = load %struct.page*, %struct.page** %2, align 8
  %4 = call i32 @PageTail(%struct.page* %3)
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = call i32 @VM_BUG_ON_PAGE(i32 %4, %struct.page* %5)
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = call i32 @page_ref_count(%struct.page* %7)
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = call i32 @VM_BUG_ON_PAGE(i32 %8, %struct.page* %9)
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = call i32 @set_page_count(%struct.page* %11, i32 1)
  ret void
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageTail(%struct.page*) #1

declare dso_local i32 @page_ref_count(%struct.page*) #1

declare dso_local i32 @set_page_count(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
