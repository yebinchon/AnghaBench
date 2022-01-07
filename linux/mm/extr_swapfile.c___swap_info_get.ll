; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c___swap_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c___swap_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }

@SWP_USED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"swap_info_get: %s%08lx\0A\00", align 1
@Bad_offset = common dso_local global i32 0, align 4
@Unused_file = common dso_local global i32 0, align 4
@Bad_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.swap_info_struct* (i32)* @__swap_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.swap_info_struct* @__swap_info_get(i32 %0) #0 {
  %2 = alloca %struct.swap_info_struct*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %53

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.swap_info_struct* @swp_swap_info(i32 %13)
  store %struct.swap_info_struct* %14, %struct.swap_info_struct** %4, align 8
  %15 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %16 = icmp ne %struct.swap_info_struct* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %48

18:                                               ; preds = %11
  %19 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %20 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SWP_USED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %43

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @swp_offset(i32 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %32 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp uge i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %38

36:                                               ; preds = %26
  %37 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  store %struct.swap_info_struct* %37, %struct.swap_info_struct** %2, align 8
  br label %54

38:                                               ; preds = %35
  %39 = load i32, i32* @Bad_offset, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %41)
  br label %53

43:                                               ; preds = %25
  %44 = load i32, i32* @Unused_file, align 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %46)
  br label %53

48:                                               ; preds = %17
  %49 = load i32, i32* @Bad_file, align 4
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %48, %43, %38, %10
  store %struct.swap_info_struct* null, %struct.swap_info_struct** %2, align 8
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  ret %struct.swap_info_struct* %55
}

declare dso_local %struct.swap_info_struct* @swp_swap_info(i32) #1

declare dso_local i64 @swp_offset(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
