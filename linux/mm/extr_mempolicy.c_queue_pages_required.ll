; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_queue_pages_required.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_queue_pages_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.queue_pages = type { i64, i32* }

@MPOL_MF_INVERT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.queue_pages*)* @queue_pages_required to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_pages_required(%struct.page* %0, %struct.queue_pages* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.queue_pages*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.queue_pages* %1, %struct.queue_pages** %4, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call i32 @page_to_nid(%struct.page* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.queue_pages*, %struct.queue_pages** %4, align 8
  %10 = getelementptr inbounds %struct.queue_pages, %struct.queue_pages* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.queue_pages*, %struct.queue_pages** %4, align 8
  %14 = getelementptr inbounds %struct.queue_pages, %struct.queue_pages* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @node_isset(i32 %12, i32 %16)
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @MPOL_MF_INVERT, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = icmp eq i32 %17, %23
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local i32 @node_isset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
