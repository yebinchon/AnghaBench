; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_load_image.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_load_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_map_handle = type { i32 }
%struct.snapshot_handle = type { i64 }
%struct.hib_bio_batch = type { i32 }

@clean_pages_on_read = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Loading image data pages (%u pages)...\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Image loading progress: %3d%%\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Image loading done\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_map_handle*, %struct.snapshot_handle*, i32)* @load_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_image(%struct.swap_map_handle* %0, %struct.snapshot_handle* %1, i32 %2) #0 {
  %4 = alloca %struct.swap_map_handle*, align 8
  %5 = alloca %struct.snapshot_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hib_bio_batch, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.swap_map_handle* %0, %struct.swap_map_handle** %4, align 8
  store %struct.snapshot_handle* %1, %struct.snapshot_handle** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %14 = call i32 @hib_init_batch(%struct.hib_bio_batch* %11)
  store i32 1, i32* @clean_pages_on_read, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = udiv i32 %17, 10
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %3
  store i32 0, i32* %13, align 4
  %23 = call i32 (...) @ktime_get()
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %62, %22
  %25 = load %struct.snapshot_handle*, %struct.snapshot_handle** %5, align 8
  %26 = call i32 @snapshot_write_next(%struct.snapshot_handle* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %65

30:                                               ; preds = %24
  %31 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %32 = load %struct.snapshot_handle*, %struct.snapshot_handle** %5, align 8
  %33 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @data_of(i64 %34)
  %36 = call i32 @swap_read_page(%struct.swap_map_handle* %31, i32 %35, %struct.hib_bio_batch* %11)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %65

40:                                               ; preds = %30
  %41 = load %struct.snapshot_handle*, %struct.snapshot_handle** %5, align 8
  %42 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @hib_wait_io(%struct.hib_bio_batch* %11)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %65

51:                                               ; preds = %47
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %7, align 4
  %54 = urem i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %7, align 4
  %59 = udiv i32 %57, %58
  %60 = mul i32 %59, 10
  %61 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %51
  %63 = load i32, i32* %13, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %24

65:                                               ; preds = %50, %39, %29
  %66 = call i32 @hib_wait_io(%struct.hib_bio_batch* %11)
  store i32 %66, i32* %12, align 4
  %67 = call i32 (...) @ktime_get()
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %72
  %76 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.snapshot_handle*, %struct.snapshot_handle** %5, align 8
  %78 = call i32 @snapshot_write_finalize(%struct.snapshot_handle* %77)
  %79 = load %struct.snapshot_handle*, %struct.snapshot_handle** %5, align 8
  %80 = call i32 @snapshot_image_loaded(%struct.snapshot_handle* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @ENODATA, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %82, %75
  br label %86

86:                                               ; preds = %85, %72
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @swsusp_show_speed(i32 %87, i32 %88, i32 %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local i32 @hib_init_batch(%struct.hib_bio_batch*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @snapshot_write_next(%struct.snapshot_handle*) #1

declare dso_local i32 @swap_read_page(%struct.swap_map_handle*, i32, %struct.hib_bio_batch*) #1

declare dso_local i32 @data_of(i64) #1

declare dso_local i32 @hib_wait_io(%struct.hib_bio_batch*) #1

declare dso_local i32 @snapshot_write_finalize(%struct.snapshot_handle*) #1

declare dso_local i32 @snapshot_image_loaded(%struct.snapshot_handle*) #1

declare dso_local i32 @swsusp_show_speed(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
