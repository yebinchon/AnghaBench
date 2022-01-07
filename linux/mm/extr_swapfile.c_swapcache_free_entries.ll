; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swapcache_free_entries.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swapcache_free_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32 }

@nr_swapfiles = common dso_local global i32 0, align 4
@swp_entry_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swapcache_free_entries(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.swap_info_struct*, align 8
  %6 = alloca %struct.swap_info_struct*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %54

11:                                               ; preds = %2
  store %struct.swap_info_struct* null, %struct.swap_info_struct** %6, align 8
  store %struct.swap_info_struct* null, %struct.swap_info_struct** %5, align 8
  %12 = load i32, i32* @nr_swapfiles, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @swp_entry_cmp, align 4
  %18 = call i32 @sort(i32* %15, i32 %16, i32 4, i32 %17, i32* null)
  br label %19

19:                                               ; preds = %14, %11
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %44, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %31 = call %struct.swap_info_struct* @swap_info_get_cont(i32 %29, %struct.swap_info_struct* %30)
  store %struct.swap_info_struct* %31, %struct.swap_info_struct** %5, align 8
  %32 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %33 = icmp ne %struct.swap_info_struct* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @swap_entry_free(%struct.swap_info_struct* %35, i32 %40)
  br label %42

42:                                               ; preds = %34, %24
  %43 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  store %struct.swap_info_struct* %43, %struct.swap_info_struct** %6, align 8
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %20

47:                                               ; preds = %20
  %48 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %49 = icmp ne %struct.swap_info_struct* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %52 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  br label %54

54:                                               ; preds = %10, %50, %47
  ret void
}

declare dso_local i32 @sort(i32*, i32, i32, i32, i32*) #1

declare dso_local %struct.swap_info_struct* @swap_info_get_cont(i32, %struct.swap_info_struct*) #1

declare dso_local i32 @swap_entry_free(%struct.swap_info_struct*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
