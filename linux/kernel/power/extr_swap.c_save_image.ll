; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_save_image.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_save_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_map_handle = type { i32 }
%struct.snapshot_handle = type { i32 }
%struct.hib_bio_batch = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Saving image data pages (%u pages)...\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Image saving progress: %3d%%\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Image saving done\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Wrote\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_map_handle*, %struct.snapshot_handle*, i32)* @save_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_image(%struct.swap_map_handle* %0, %struct.snapshot_handle* %1, i32 %2) #0 {
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
  %14 = call i32 @hib_init_batch(%struct.hib_bio_batch* %11)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %15)
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
  store i32 0, i32* %9, align 4
  %23 = call i32 (...) @ktime_get()
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %22, %51
  %25 = load %struct.snapshot_handle*, %struct.snapshot_handle** %5, align 8
  %26 = call i32 @snapshot_read_next(%struct.snapshot_handle* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %54

30:                                               ; preds = %24
  %31 = load %struct.swap_map_handle*, %struct.swap_map_handle** %4, align 8
  %32 = load %struct.snapshot_handle*, %struct.snapshot_handle** %5, align 8
  %33 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @data_of(i32 %34)
  %36 = call i32 @swap_write_page(%struct.swap_map_handle* %31, i32 %35, %struct.hib_bio_batch* %11)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %54

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = urem i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = udiv i32 %46, %47
  %49 = mul i32 %48, 10
  %50 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %24

54:                                               ; preds = %39, %29
  %55 = call i32 @hib_wait_io(%struct.hib_bio_batch* %11)
  store i32 %55, i32* %10, align 4
  %56 = call i32 (...) @ktime_get()
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %54
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @swsusp_show_speed(i32 %67, i32 %68, i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32 @hib_init_batch(%struct.hib_bio_batch*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @snapshot_read_next(%struct.snapshot_handle*) #1

declare dso_local i32 @swap_write_page(%struct.swap_map_handle*, i32, %struct.hib_bio_batch*) #1

declare dso_local i32 @data_of(i32) #1

declare dso_local i32 @hib_wait_io(%struct.hib_bio_batch*) #1

declare dso_local i32 @swsusp_show_speed(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
