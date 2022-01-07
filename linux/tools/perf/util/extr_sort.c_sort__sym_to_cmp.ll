; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__sym_to_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__sym_to_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.addr_map_symbol }
%struct.addr_map_symbol = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, %struct.hist_entry*)* @sort__sym_to_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort__sym_to_cmp(%struct.hist_entry* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca %struct.addr_map_symbol*, align 8
  %7 = alloca %struct.addr_map_symbol*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  %8 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %9 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %14 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %19 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %22 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = call i32 @cmp_null(%struct.TYPE_3__* %20, %struct.TYPE_3__* %23)
  store i32 %24, i32* %3, align 4
  br label %59

25:                                               ; preds = %12
  %26 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %27 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store %struct.addr_map_symbol* %29, %struct.addr_map_symbol** %6, align 8
  %30 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %31 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store %struct.addr_map_symbol* %33, %struct.addr_map_symbol** %7, align 8
  %34 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %6, align 8
  %35 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %25
  %39 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %7, align 8
  %40 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %6, align 8
  %45 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %7, align 8
  %48 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @_sort__addr_cmp(i32 %46, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %59

51:                                               ; preds = %38, %25
  %52 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %6, align 8
  %53 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %7, align 8
  %56 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @_sort__sym_cmp(i32 %54, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %51, %43, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @cmp_null(%struct.TYPE_3__*, %struct.TYPE_3__*) #1

declare dso_local i32 @_sort__addr_cmp(i32, i32) #1

declare dso_local i32 @_sort__sym_cmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
