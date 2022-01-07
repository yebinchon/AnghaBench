; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_rmqueue_pcplist.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_rmqueue_pcplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zone = type { i32 }
%struct.per_cpu_pages = type { %struct.list_head* }
%struct.list_head = type { i32 }
%struct.TYPE_2__ = type { %struct.per_cpu_pages }

@PGALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.zone*, %struct.zone*, i32, i32, i32)* @rmqueue_pcplist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @rmqueue_pcplist(%struct.zone* %0, %struct.zone* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.zone*, align 8
  %7 = alloca %struct.zone*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.per_cpu_pages*, align 8
  %12 = alloca %struct.list_head*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i64, align 8
  store %struct.zone* %0, %struct.zone** %6, align 8
  store %struct.zone* %1, %struct.zone** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @local_irq_save(i64 %15)
  %17 = load %struct.zone*, %struct.zone** %7, align 8
  %18 = getelementptr inbounds %struct.zone, %struct.zone* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_2__* @this_cpu_ptr(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.per_cpu_pages* %21, %struct.per_cpu_pages** %11, align 8
  %22 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %11, align 8
  %23 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %22, i32 0, i32 0
  %24 = load %struct.list_head*, %struct.list_head** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 %26
  store %struct.list_head* %27, %struct.list_head** %12, align 8
  %28 = load %struct.zone*, %struct.zone** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %11, align 8
  %32 = load %struct.list_head*, %struct.list_head** %12, align 8
  %33 = call %struct.page* @__rmqueue_pcplist(%struct.zone* %28, i32 %29, i32 %30, %struct.per_cpu_pages* %31, %struct.list_head* %32)
  store %struct.page* %33, %struct.page** %13, align 8
  %34 = load %struct.page*, %struct.page** %13, align 8
  %35 = icmp ne %struct.page* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %5
  %37 = load i32, i32* @PGALLOC, align 4
  %38 = load %struct.page*, %struct.page** %13, align 8
  %39 = call i32 @page_zonenum(%struct.page* %38)
  %40 = call i32 @__count_zid_vm_events(i32 %37, i32 %39, i32 1)
  %41 = load %struct.zone*, %struct.zone** %6, align 8
  %42 = load %struct.zone*, %struct.zone** %7, align 8
  %43 = call i32 @zone_statistics(%struct.zone* %41, %struct.zone* %42)
  br label %44

44:                                               ; preds = %36, %5
  %45 = load i64, i64* %14, align 8
  %46 = call i32 @local_irq_restore(i64 %45)
  %47 = load %struct.page*, %struct.page** %13, align 8
  ret %struct.page* %47
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.TYPE_2__* @this_cpu_ptr(i32) #1

declare dso_local %struct.page* @__rmqueue_pcplist(%struct.zone*, i32, i32, %struct.per_cpu_pages*, %struct.list_head*) #1

declare dso_local i32 @__count_zid_vm_events(i32, i32, i32) #1

declare dso_local i32 @page_zonenum(%struct.page*) #1

declare dso_local i32 @zone_statistics(%struct.zone*, %struct.zone*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
