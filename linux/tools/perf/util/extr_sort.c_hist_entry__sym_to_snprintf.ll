; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hist_entry__sym_to_snprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hist_entry__sym_to_snprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.addr_map_symbol }
%struct.addr_map_symbol = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%-*.*s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, i8*, i64, i32)* @hist_entry__sym_to_snprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_entry__sym_to_snprintf(%struct.hist_entry* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hist_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.addr_map_symbol*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %12 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %4
  %16 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %17 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.addr_map_symbol* %19, %struct.addr_map_symbol** %10, align 8
  %20 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %10, align 8
  %21 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %10, align 8
  %24 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %10, align 8
  %27 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %30 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @_hist_entry__sym_snprintf(i32 %22, i32 %25, i32 %28, i32 %31, i8* %32, i64 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %42

36:                                               ; preds = %4
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @repsep_snprintf(i8* %37, i64 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %36, %15
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @_hist_entry__sym_snprintf(i32, i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @repsep_snprintf(i8*, i64, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
