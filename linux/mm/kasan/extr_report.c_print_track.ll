; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_report.c_print_track.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_report.c_print_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kasan_track = type { i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s by task %u:\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"(stack is not available)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kasan_track*, i8*)* @print_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_track(%struct.kasan_track* %0, i8* %1) #0 {
  %3 = alloca %struct.kasan_track*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.kasan_track* %0, %struct.kasan_track** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load %struct.kasan_track*, %struct.kasan_track** %3, align 8
  %9 = getelementptr inbounds %struct.kasan_track, %struct.kasan_track* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %7, i32 %10)
  %12 = load %struct.kasan_track*, %struct.kasan_track** %3, align 8
  %13 = getelementptr inbounds %struct.kasan_track, %struct.kasan_track* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.kasan_track*, %struct.kasan_track** %3, align 8
  %18 = getelementptr inbounds %struct.kasan_track, %struct.kasan_track* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @stack_depot_fetch(i64 %19, i64** %5)
  store i32 %20, i32* %6, align 4
  %21 = load i64*, i64** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @stack_trace_print(i64* %21, i32 %22, i32 0)
  br label %26

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %16
  ret void
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @stack_depot_fetch(i64, i64**) #1

declare dso_local i32 @stack_trace_print(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
