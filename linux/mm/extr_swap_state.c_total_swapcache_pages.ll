; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_state.c_total_swapcache_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_state.c_total_swapcache_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i64 }
%struct.swap_info_struct = type { i32 }

@MAX_SWAPFILES = common dso_local global i32 0, align 4
@nr_swapper_spaces = common dso_local global i32* null, align 8
@swapper_spaces = common dso_local global %struct.address_space** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @total_swapcache_pages() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.swap_info_struct*, align 8
  %7 = alloca i32, align 4
  store i64 0, i64* %4, align 8
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %55, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @MAX_SWAPFILES, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %8
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @swp_entry(i32 %13, i32 1)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @swp_swap_info(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %55

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.swap_info_struct* @get_swap_device(i32 %20)
  store %struct.swap_info_struct* %21, %struct.swap_info_struct** %6, align 8
  %22 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %23 = icmp ne %struct.swap_info_struct* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %55

25:                                               ; preds = %19
  %26 = load i32*, i32** @nr_swapper_spaces, align 8
  %27 = load i32, i32* %1, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  %31 = load %struct.address_space**, %struct.address_space*** @swapper_spaces, align 8
  %32 = load i32, i32* %1, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.address_space*, %struct.address_space** %31, i64 %33
  %35 = load %struct.address_space*, %struct.address_space** %34, align 8
  store %struct.address_space* %35, %struct.address_space** %5, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %49, %25
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.address_space*, %struct.address_space** %5, align 8
  %42 = load i32, i32* %2, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.address_space, %struct.address_space* %41, i64 %43
  %45 = getelementptr inbounds %struct.address_space, %struct.address_space* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %2, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %36

52:                                               ; preds = %36
  %53 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %54 = call i32 @put_swap_device(%struct.swap_info_struct* %53)
  br label %55

55:                                               ; preds = %52, %24, %18
  %56 = load i32, i32* %1, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %8

58:                                               ; preds = %8
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

declare dso_local i32 @swp_entry(i32, i32) #1

declare dso_local i32 @swp_swap_info(i32) #1

declare dso_local %struct.swap_info_struct* @get_swap_device(i32) #1

declare dso_local i32 @put_swap_device(%struct.swap_info_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
