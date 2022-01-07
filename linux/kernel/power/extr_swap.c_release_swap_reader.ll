; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_release_swap_reader.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_release_swap_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_map_handle = type { i32*, %struct.swap_map_page_list* }
%struct.swap_map_page_list = type { %struct.swap_map_page_list*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swap_map_handle*)* @release_swap_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_swap_reader(%struct.swap_map_handle* %0) #0 {
  %2 = alloca %struct.swap_map_handle*, align 8
  %3 = alloca %struct.swap_map_page_list*, align 8
  store %struct.swap_map_handle* %0, %struct.swap_map_handle** %2, align 8
  br label %4

4:                                                ; preds = %23, %1
  %5 = load %struct.swap_map_handle*, %struct.swap_map_handle** %2, align 8
  %6 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %5, i32 0, i32 1
  %7 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %6, align 8
  %8 = icmp ne %struct.swap_map_page_list* %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %4
  %10 = load %struct.swap_map_handle*, %struct.swap_map_handle** %2, align 8
  %11 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %10, i32 0, i32 1
  %12 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %11, align 8
  %13 = getelementptr inbounds %struct.swap_map_page_list, %struct.swap_map_page_list* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load %struct.swap_map_handle*, %struct.swap_map_handle** %2, align 8
  %18 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %17, i32 0, i32 1
  %19 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %18, align 8
  %20 = getelementptr inbounds %struct.swap_map_page_list, %struct.swap_map_page_list* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @free_page(i64 %21)
  br label %23

23:                                               ; preds = %16, %9
  %24 = load %struct.swap_map_handle*, %struct.swap_map_handle** %2, align 8
  %25 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %24, i32 0, i32 1
  %26 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %25, align 8
  store %struct.swap_map_page_list* %26, %struct.swap_map_page_list** %3, align 8
  %27 = load %struct.swap_map_handle*, %struct.swap_map_handle** %2, align 8
  %28 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %27, i32 0, i32 1
  %29 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %28, align 8
  %30 = getelementptr inbounds %struct.swap_map_page_list, %struct.swap_map_page_list* %29, i32 0, i32 0
  %31 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %30, align 8
  %32 = load %struct.swap_map_handle*, %struct.swap_map_handle** %2, align 8
  %33 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %32, i32 0, i32 1
  store %struct.swap_map_page_list* %31, %struct.swap_map_page_list** %33, align 8
  %34 = load %struct.swap_map_page_list*, %struct.swap_map_page_list** %3, align 8
  %35 = call i32 @kfree(%struct.swap_map_page_list* %34)
  br label %4

36:                                               ; preds = %4
  %37 = load %struct.swap_map_handle*, %struct.swap_map_handle** %2, align 8
  %38 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  ret void
}

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.swap_map_page_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
