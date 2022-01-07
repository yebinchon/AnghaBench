; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_swapfile.c_iomap_swapfile_add_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_swapfile.c_iomap_swapfile_add_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iomap_swapfile_info = type { i32, i32, i64, i32, i32, %struct.iomap }
%struct.iomap = type { i64, i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iomap_swapfile_info*)* @iomap_swapfile_add_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iomap_swapfile_add_extent(%struct.iomap_swapfile_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iomap_swapfile_info*, align 8
  %4 = alloca %struct.iomap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iomap_swapfile_info* %0, %struct.iomap_swapfile_info** %3, align 8
  %10 = load %struct.iomap_swapfile_info*, %struct.iomap_swapfile_info** %3, align 8
  %11 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %10, i32 0, i32 5
  store %struct.iomap* %11, %struct.iomap** %4, align 8
  %12 = load %struct.iomap*, %struct.iomap** %4, align 8
  %13 = getelementptr inbounds %struct.iomap, %struct.iomap* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = call i32 @ALIGN(i64 %14, i32 %15)
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  %18 = ashr i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.iomap*, %struct.iomap** %4, align 8
  %20 = getelementptr inbounds %struct.iomap, %struct.iomap* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.iomap*, %struct.iomap** %4, align 8
  %23 = getelementptr inbounds %struct.iomap, %struct.iomap* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = call i32 @ALIGN_DOWN(i64 %25, i32 %26)
  %28 = load i32, i32* @PAGE_SHIFT, align 4
  %29 = ashr i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %94

34:                                               ; preds = %1
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %5, align 8
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %7, align 4
  %40 = load %struct.iomap*, %struct.iomap** %4, align 8
  %41 = getelementptr inbounds %struct.iomap, %struct.iomap* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %34
  %48 = load %struct.iomap_swapfile_info*, %struct.iomap_swapfile_info** %3, align 8
  %49 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.iomap_swapfile_info*, %struct.iomap_swapfile_info** %3, align 8
  %56 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %47
  %58 = load %struct.iomap_swapfile_info*, %struct.iomap_swapfile_info** %3, align 8
  %59 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load %struct.iomap_swapfile_info*, %struct.iomap_swapfile_info** %3, align 8
  %68 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %57
  %70 = load %struct.iomap_swapfile_info*, %struct.iomap_swapfile_info** %3, align 8
  %71 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iomap_swapfile_info*, %struct.iomap_swapfile_info** %3, align 8
  %74 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @add_swap_extent(i32 %72, i64 %75, i64 %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %2, align 4
  br label %94

83:                                               ; preds = %69
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.iomap_swapfile_info*, %struct.iomap_swapfile_info** %3, align 8
  %86 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load %struct.iomap_swapfile_info*, %struct.iomap_swapfile_info** %3, align 8
  %91 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, %89
  store i64 %93, i64* %91, align 8
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %83, %81, %33
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @ALIGN_DOWN(i64, i32) #1

declare dso_local i32 @add_swap_extent(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
