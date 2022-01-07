; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_time-utils.c_parse_timestr_sec_nsec.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_time-utils.c_parse_timestr_sec_nsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_time_interval = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_time_interval*, i8*, i8*)* @parse_timestr_sec_nsec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_timestr_sec_nsec(%struct.perf_time_interval* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_time_interval*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.perf_time_interval* %0, %struct.perf_time_interval** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.perf_time_interval*, %struct.perf_time_interval** %5, align 8
  %18 = getelementptr inbounds %struct.perf_time_interval, %struct.perf_time_interval* %17, i32 0, i32 1
  %19 = call i64 @parse_nsec_time(i8* %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %38

22:                                               ; preds = %15, %10, %3
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.perf_time_interval*, %struct.perf_time_interval** %5, align 8
  %33 = getelementptr inbounds %struct.perf_time_interval, %struct.perf_time_interval* %32, i32 0, i32 0
  %34 = call i64 @parse_nsec_time(i8* %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %38

37:                                               ; preds = %30, %25, %22
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %36, %21
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @parse_nsec_time(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
