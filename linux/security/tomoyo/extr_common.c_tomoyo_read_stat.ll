; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_read_stat.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_read_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tomoyo_time = type { i32, i32, i32, i32, i32, i32 }

@TOMOYO_MAX_POLICY_STAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Policy %-30s %10u\00", align 1
@tomoyo_policy_headers = common dso_local global i32* null, align 8
@tomoyo_stat_updated = common dso_local global i32* null, align 8
@tomoyo_stat_modified = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c" (Last: %04u/%02u/%02u %02u:%02u:%02u)\00", align 1
@TOMOYO_MAX_MEMORY_STAT = common dso_local global i64 0, align 8
@tomoyo_memory_used = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Memory used by %-22s %10u\00", align 1
@tomoyo_memory_headers = common dso_local global i32* null, align 8
@tomoyo_memory_quota = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c" (Quota: %10u)\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Total memory used:                    %10u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tomoyo_io_buffer*)* @tomoyo_read_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tomoyo_read_stat(%struct.tomoyo_io_buffer* %0) #0 {
  %2 = alloca %struct.tomoyo_io_buffer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tomoyo_time, align 4
  %6 = alloca i32, align 4
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %103

13:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %57, %13
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @TOMOYO_MAX_POLICY_STAT, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %14
  %19 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %20 = load i32*, i32** @tomoyo_policy_headers, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** @tomoyo_stat_updated, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (%struct.tomoyo_io_buffer*, i8*, i32, ...) @tomoyo_io_printf(%struct.tomoyo_io_buffer* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27)
  %29 = load i64*, i64** @tomoyo_stat_modified, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %18
  %35 = load i64*, i64** @tomoyo_stat_modified, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @tomoyo_convert_time(i64 %38, %struct.tomoyo_time* %5)
  %40 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %41 = getelementptr inbounds %struct.tomoyo_time, %struct.tomoyo_time* %5, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.tomoyo_time, %struct.tomoyo_time* %5, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.tomoyo_time, %struct.tomoyo_time* %5, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.tomoyo_time, %struct.tomoyo_time* %5, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.tomoyo_time, %struct.tomoyo_time* %5, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.tomoyo_time, %struct.tomoyo_time* %5, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (%struct.tomoyo_io_buffer*, i8*, i32, ...) @tomoyo_io_printf(%struct.tomoyo_io_buffer* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %34, %18
  %55 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %56 = call i32 @tomoyo_set_lf(%struct.tomoyo_io_buffer* %55)
  br label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %3, align 8
  br label %14

60:                                               ; preds = %14
  store i64 0, i64* %3, align 8
  br label %61

61:                                               ; preds = %93, %60
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @TOMOYO_MAX_MEMORY_STAT, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %61
  %66 = load i32*, i32** @tomoyo_memory_used, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %4, align 4
  %72 = add i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %74 = load i32*, i32** @tomoyo_memory_headers, align 8
  %75 = load i64, i64* %3, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (%struct.tomoyo_io_buffer*, i8*, i32, ...) @tomoyo_io_printf(%struct.tomoyo_io_buffer* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32*, i32** @tomoyo_memory_quota, align 8
  %81 = load i64, i64* %3, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %65
  %87 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (%struct.tomoyo_io_buffer*, i8*, i32, ...) @tomoyo_io_printf(%struct.tomoyo_io_buffer* %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %86, %65
  %91 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %92 = call i32 @tomoyo_set_lf(%struct.tomoyo_io_buffer* %91)
  br label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %3, align 8
  br label %61

96:                                               ; preds = %61
  %97 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 (%struct.tomoyo_io_buffer*, i8*, i32, ...) @tomoyo_io_printf(%struct.tomoyo_io_buffer* %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %101 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %96, %12
  ret void
}

declare dso_local i32 @tomoyo_io_printf(%struct.tomoyo_io_buffer*, i8*, i32, ...) #1

declare dso_local i32 @tomoyo_convert_time(i64, %struct.tomoyo_time*) #1

declare dso_local i32 @tomoyo_set_lf(%struct.tomoyo_io_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
