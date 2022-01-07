; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_ksm.c_set_page_stable_node.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_ksm.c_set_page_stable_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i8* }
%struct.stable_node = type { i32 }

@PAGE_MAPPING_KSM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.stable_node*)* @set_page_stable_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_page_stable_node(%struct.page* %0, %struct.stable_node* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.stable_node*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.stable_node* %1, %struct.stable_node** %4, align 8
  %5 = load %struct.stable_node*, %struct.stable_node** %4, align 8
  %6 = ptrtoint %struct.stable_node* %5 to i64
  %7 = load i64, i64* @PAGE_MAPPING_KSM, align 8
  %8 = or i64 %6, %7
  %9 = inttoptr i64 %8 to i8*
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
