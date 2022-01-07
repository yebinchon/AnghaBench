; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_swsusp_write.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_swsusp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_map_handle = type { i32 }
%struct.snapshot_handle = type { i32 }
%struct.swsusp_info = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Cannot get swap writer\0A\00", align 1
@SF_NOCOMPRESS_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Not enough free swap\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swsusp_write(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.swap_map_handle, align 4
  %5 = alloca %struct.snapshot_handle, align 4
  %6 = alloca %struct.swsusp_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = call i64 (...) @snapshot_get_image_size()
  store i64 %9, i64* %7, align 8
  %10 = call i32 @get_swap_writer(%struct.swap_map_handle* %4)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %2, align 4
  br label %74

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SF_NOCOMPRESS_MODE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @enough_swap(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %69

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %16
  %31 = call i32 @memset(%struct.snapshot_handle* %5, i32 0, i32 4)
  %32 = call i32 @snapshot_read_next(%struct.snapshot_handle* %5)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i64, i64* @PAGE_SIZE, align 8
  %35 = trunc i64 %34 to i32
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EFAULT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %37
  br label %69

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @data_of(i32 %46)
  %48 = inttoptr i64 %47 to %struct.swsusp_info*
  store %struct.swsusp_info* %48, %struct.swsusp_info** %6, align 8
  %49 = load %struct.swsusp_info*, %struct.swsusp_info** %6, align 8
  %50 = call i32 @swap_write_page(%struct.swap_map_handle* %4, %struct.swsusp_info* %49, i32* null)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @SF_NOCOMPRESS_MODE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i64, i64* %7, align 8
  %60 = sub i64 %59, 1
  %61 = call i32 @save_image(%struct.swap_map_handle* %4, %struct.snapshot_handle* %5, i64 %60)
  br label %66

62:                                               ; preds = %53
  %63 = load i64, i64* %7, align 8
  %64 = sub i64 %63, 1
  %65 = call i32 @save_image_lzo(%struct.swap_map_handle* %4, %struct.snapshot_handle* %5, i64 %64)
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i32 [ %61, %58 ], [ %65, %62 ]
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %66, %44
  br label %69

69:                                               ; preds = %68, %43, %25
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @swap_writer_finish(%struct.swap_map_handle* %4, i32 %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %69, %13
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @snapshot_get_image_size(...) #1

declare dso_local i32 @get_swap_writer(%struct.swap_map_handle*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @enough_swap(i64) #1

declare dso_local i32 @memset(%struct.snapshot_handle*, i32, i32) #1

declare dso_local i32 @snapshot_read_next(%struct.snapshot_handle*) #1

declare dso_local i64 @data_of(i32) #1

declare dso_local i32 @swap_write_page(%struct.swap_map_handle*, %struct.swsusp_info*, i32*) #1

declare dso_local i32 @save_image(%struct.swap_map_handle*, %struct.snapshot_handle*, i64) #1

declare dso_local i32 @save_image_lzo(%struct.swap_map_handle*, %struct.snapshot_handle*, i64) #1

declare dso_local i32 @swap_writer_finish(%struct.swap_map_handle*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
