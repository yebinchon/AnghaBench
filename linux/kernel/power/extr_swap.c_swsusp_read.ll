; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_swsusp_read.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_swsusp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_map_handle = type { i32 }
%struct.snapshot_handle = type { i32 }
%struct.swsusp_info = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@SF_NOCOMPRESS_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Image successfully loaded\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Error %d resuming\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swsusp_read(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.swap_map_handle, align 4
  %6 = alloca %struct.snapshot_handle, align 4
  %7 = alloca %struct.swsusp_info*, align 8
  store i32* %0, i32** %3, align 8
  %8 = call i32 @memset(%struct.snapshot_handle* %6, i32 0, i32 4)
  %9 = call i32 @snapshot_write_next(%struct.snapshot_handle* %6)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i64, i64* @PAGE_SIZE, align 8
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  br label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %18, %17 ], [ %21, %19 ]
  store i32 %23, i32* %2, align 4
  br label %75

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @data_of(i32 %26)
  %28 = inttoptr i64 %27 to %struct.swsusp_info*
  store %struct.swsusp_info* %28, %struct.swsusp_info** %7, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @get_swap_reader(%struct.swap_map_handle* %5, i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %65

34:                                               ; preds = %24
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load %struct.swsusp_info*, %struct.swsusp_info** %7, align 8
  %39 = call i32 @swap_read_page(%struct.swap_map_handle* %5, %struct.swsusp_info* %38, i32* null)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %63, label %43

43:                                               ; preds = %40
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SF_NOCOMPRESS_MODE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.swsusp_info*, %struct.swsusp_info** %7, align 8
  %51 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, 1
  %54 = call i32 @load_image(%struct.swap_map_handle* %5, %struct.snapshot_handle* %6, i64 %53)
  br label %61

55:                                               ; preds = %43
  %56 = load %struct.swsusp_info*, %struct.swsusp_info** %7, align 8
  %57 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, 1
  %60 = call i32 @load_image_lzo(%struct.swap_map_handle* %5, %struct.snapshot_handle* %6, i64 %59)
  br label %61

61:                                               ; preds = %55, %49
  %62 = phi i32 [ %54, %49 ], [ %60, %55 ]
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %40
  %64 = call i32 @swap_reader_finish(%struct.swap_map_handle* %5)
  br label %65

65:                                               ; preds = %63, %33
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %4, align 4
  %72 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %70, %68
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %22
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @memset(%struct.snapshot_handle*, i32, i32) #1

declare dso_local i32 @snapshot_write_next(%struct.snapshot_handle*) #1

declare dso_local i64 @data_of(i32) #1

declare dso_local i32 @get_swap_reader(%struct.swap_map_handle*, i32*) #1

declare dso_local i32 @swap_read_page(%struct.swap_map_handle*, %struct.swsusp_info*, i32*) #1

declare dso_local i32 @load_image(%struct.swap_map_handle*, %struct.snapshot_handle*, i64) #1

declare dso_local i32 @load_image_lzo(%struct.swap_map_handle*, %struct.snapshot_handle*, i64) #1

declare dso_local i32 @swap_reader_finish(%struct.swap_map_handle*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
