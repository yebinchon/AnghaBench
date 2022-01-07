; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_swap_writer_finish.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_swap_writer_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_map_handle = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"|\0A\00", align 1
@root_swap = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_map_handle*, i32, i32)* @swap_writer_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_writer_finish(%struct.swap_map_handle* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.swap_map_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.swap_map_handle* %0, %struct.swap_map_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %11 = call i32 @flush_swap_writer(%struct.swap_map_handle* %10)
  %12 = call i32 @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @mark_swapfiles(%struct.swap_map_handle* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = call i32 @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %9, %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @root_swap, align 4
  %22 = call i32 @free_all_swap_pages(i32 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %25 = call i32 @release_swap_writer(%struct.swap_map_handle* %24)
  %26 = load i32, i32* @FMODE_WRITE, align 4
  %27 = call i32 @swsusp_close(i32 %26)
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @flush_swap_writer(%struct.swap_map_handle*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @mark_swapfiles(%struct.swap_map_handle*, i32) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @free_all_swap_pages(i32) #1

declare dso_local i32 @release_swap_writer(%struct.swap_map_handle*) #1

declare dso_local i32 @swsusp_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
