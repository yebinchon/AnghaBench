; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__parent_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__parent_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.symbol* }
%struct.symbol = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, %struct.hist_entry*)* @sort__parent_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort__parent_cmp(%struct.hist_entry* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.symbol*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  %8 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %9 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %8, i32 0, i32 0
  %10 = load %struct.symbol*, %struct.symbol** %9, align 8
  store %struct.symbol* %10, %struct.symbol** %6, align 8
  %11 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %12 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %11, i32 0, i32 0
  %13 = load %struct.symbol*, %struct.symbol** %12, align 8
  store %struct.symbol* %13, %struct.symbol** %7, align 8
  %14 = load %struct.symbol*, %struct.symbol** %6, align 8
  %15 = icmp ne %struct.symbol* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.symbol*, %struct.symbol** %7, align 8
  %18 = icmp ne %struct.symbol* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.symbol*, %struct.symbol** %6, align 8
  %21 = load %struct.symbol*, %struct.symbol** %7, align 8
  %22 = call i32 @cmp_null(%struct.symbol* %20, %struct.symbol* %21)
  store i32 %22, i32* %3, align 4
  br label %31

23:                                               ; preds = %16
  %24 = load %struct.symbol*, %struct.symbol** %7, align 8
  %25 = getelementptr inbounds %struct.symbol, %struct.symbol* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.symbol*, %struct.symbol** %6, align 8
  %28 = getelementptr inbounds %struct.symbol, %struct.symbol* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcmp(i32 %26, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %23, %19
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @cmp_null(%struct.symbol*, %struct.symbol*) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
