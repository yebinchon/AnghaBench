; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_init_header.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_init_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swsusp_info = type { i32, i32, i32, i32 }

@nr_copy_pages = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swsusp_info*)* @init_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_header(%struct.swsusp_info* %0) #0 {
  %2 = alloca %struct.swsusp_info*, align 8
  store %struct.swsusp_info* %0, %struct.swsusp_info** %2, align 8
  %3 = load %struct.swsusp_info*, %struct.swsusp_info** %2, align 8
  %4 = call i32 @memset(%struct.swsusp_info* %3, i32 0, i32 16)
  %5 = call i32 (...) @get_num_physpages()
  %6 = load %struct.swsusp_info*, %struct.swsusp_info** %2, align 8
  %7 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @nr_copy_pages, align 4
  %9 = load %struct.swsusp_info*, %struct.swsusp_info** %2, align 8
  %10 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = call i32 (...) @snapshot_get_image_size()
  %12 = load %struct.swsusp_info*, %struct.swsusp_info** %2, align 8
  %13 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.swsusp_info*, %struct.swsusp_info** %2, align 8
  %15 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.swsusp_info*, %struct.swsusp_info** %2, align 8
  %18 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = load %struct.swsusp_info*, %struct.swsusp_info** %2, align 8
  %21 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.swsusp_info*, %struct.swsusp_info** %2, align 8
  %25 = call i32 @init_header_complete(%struct.swsusp_info* %24)
  ret i32 %25
}

declare dso_local i32 @memset(%struct.swsusp_info*, i32, i32) #1

declare dso_local i32 @get_num_physpages(...) #1

declare dso_local i32 @snapshot_get_image_size(...) #1

declare dso_local i32 @init_header_complete(%struct.swsusp_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
