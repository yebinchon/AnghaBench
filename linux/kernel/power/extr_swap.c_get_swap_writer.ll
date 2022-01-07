; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_get_swap_writer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_get_swap_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_map_handle = type { i64, i64, i32, i64, %struct.swap_map_page* }
%struct.swap_map_page = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Cannot find swap device, try swapon -a\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@root_swap = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_map_handle*)* @get_swap_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_swap_writer(%struct.swap_map_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.swap_map_handle*, align 8
  %4 = alloca i32, align 4
  store %struct.swap_map_handle* %0, %struct.swap_map_handle** %3, align 8
  %5 = call i32 (...) @swsusp_swap_check()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ENOSPC, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp ne i32 %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %8
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %60

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64 @get_zeroed_page(i32 %18)
  %20 = inttoptr i64 %19 to %struct.swap_map_page*
  %21 = load %struct.swap_map_handle*, %struct.swap_map_handle** %3, align 8
  %22 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %21, i32 0, i32 4
  store %struct.swap_map_page* %20, %struct.swap_map_page** %22, align 8
  %23 = load %struct.swap_map_handle*, %struct.swap_map_handle** %3, align 8
  %24 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %23, i32 0, i32 4
  %25 = load %struct.swap_map_page*, %struct.swap_map_page** %24, align 8
  %26 = icmp ne %struct.swap_map_page* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %56

30:                                               ; preds = %17
  %31 = load i32, i32* @root_swap, align 4
  %32 = call i64 @alloc_swapdev_block(i32 %31)
  %33 = load %struct.swap_map_handle*, %struct.swap_map_handle** %3, align 8
  %34 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.swap_map_handle*, %struct.swap_map_handle** %3, align 8
  %36 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @ENOSPC, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %53

42:                                               ; preds = %30
  %43 = load %struct.swap_map_handle*, %struct.swap_map_handle** %3, align 8
  %44 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = call i32 (...) @reqd_free_pages()
  %46 = load %struct.swap_map_handle*, %struct.swap_map_handle** %3, align 8
  %47 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.swap_map_handle*, %struct.swap_map_handle** %3, align 8
  %49 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.swap_map_handle*, %struct.swap_map_handle** %3, align 8
  %52 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  store i32 0, i32* %2, align 4
  br label %60

53:                                               ; preds = %39
  %54 = load %struct.swap_map_handle*, %struct.swap_map_handle** %3, align 8
  %55 = call i32 @release_swap_writer(%struct.swap_map_handle* %54)
  br label %56

56:                                               ; preds = %53, %27
  %57 = load i32, i32* @FMODE_WRITE, align 4
  %58 = call i32 @swsusp_close(i32 %57)
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %42, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @swsusp_swap_check(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i64 @alloc_swapdev_block(i32) #1

declare dso_local i32 @reqd_free_pages(...) #1

declare dso_local i32 @release_swap_writer(%struct.swap_map_handle*) #1

declare dso_local i32 @swsusp_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
