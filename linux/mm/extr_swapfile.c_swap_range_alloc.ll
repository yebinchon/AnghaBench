; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_range_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_range_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i64, i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swap_info_struct*, i64, i32)* @swap_range_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_range_alloc(%struct.swap_info_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = zext i32 %9 to i64
  %11 = add i64 %8, %10
  %12 = sub i64 %11, 1
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %16 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %23 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, %21
  store i64 %25, i64* %23, align 8
  br label %26

26:                                               ; preds = %19, %3
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %29 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %35 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sub i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %42 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %46 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %49 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %38
  %53 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %54 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = zext i32 %55 to i64
  %57 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %58 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %60 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %59, i32 0, i32 1
  store i32 0, i32* %60, align 8
  %61 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %62 = call i32 @del_from_avail_list(%struct.swap_info_struct* %61)
  br label %63

63:                                               ; preds = %52, %38
  ret void
}

declare dso_local i32 @del_from_avail_list(%struct.swap_info_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
