; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hist_entry__srcline_snprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hist_entry__srcline_snprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"%-.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, i8*, i64, i32)* @hist_entry__srcline_snprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_entry__srcline_snprintf(%struct.hist_entry* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hist_entry* %0, %struct.hist_entry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %10 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %15 = call i64 @hist_entry__srcline(%struct.hist_entry* %14)
  %16 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %17 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %13, %4
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %23 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @repsep_snprintf(i8* %19, i64 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %24)
  ret i32 %25
}

declare dso_local i64 @hist_entry__srcline(%struct.hist_entry*) #1

declare dso_local i32 @repsep_snprintf(i8*, i64, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
