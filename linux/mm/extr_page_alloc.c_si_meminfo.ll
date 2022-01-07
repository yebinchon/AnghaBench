; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_si_meminfo.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_si_meminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinfo = type { i32, i32, i32, i32, i32, i32, i32 }

@NR_SHMEM = common dso_local global i32 0, align 4
@NR_FREE_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @si_meminfo(%struct.sysinfo* %0) #0 {
  %2 = alloca %struct.sysinfo*, align 8
  store %struct.sysinfo* %0, %struct.sysinfo** %2, align 8
  %3 = call i32 (...) @totalram_pages()
  %4 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %5 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %4, i32 0, i32 6
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @NR_SHMEM, align 4
  %7 = call i32 @global_node_page_state(i32 %6)
  %8 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %9 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @NR_FREE_PAGES, align 4
  %11 = call i32 @global_zone_page_state(i32 %10)
  %12 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %13 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = call i32 (...) @nr_blockdev_pages()
  %15 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %16 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = call i32 (...) @totalhigh_pages()
  %18 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %19 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = call i32 (...) @nr_free_highpages()
  %21 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %22 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %25 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local i32 @totalram_pages(...) #1

declare dso_local i32 @global_node_page_state(i32) #1

declare dso_local i32 @global_zone_page_state(i32) #1

declare dso_local i32 @nr_blockdev_pages(...) #1

declare dso_local i32 @totalhigh_pages(...) #1

declare dso_local i32 @nr_free_highpages(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
