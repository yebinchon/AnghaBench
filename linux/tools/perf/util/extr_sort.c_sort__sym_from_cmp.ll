; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__sym_from_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__sym_from_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.addr_map_symbol }
%struct.addr_map_symbol = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, %struct.hist_entry*)* @sort__sym_from_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort__sym_from_cmp(%struct.hist_entry* %0, %struct.hist_entry* %1) #0 {
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
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.addr_map_symbol* %11, %struct.addr_map_symbol** %6, align 8
  %12 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %13 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.addr_map_symbol* %15, %struct.addr_map_symbol** %7, align 8
  %16 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %17 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %22 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %27 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %30 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i32 @cmp_null(%struct.TYPE_3__* %28, %struct.TYPE_3__* %31)
  store i32 %32, i32* %3, align 4
  br label %67

33:                                               ; preds = %20
  %34 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %35 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store %struct.addr_map_symbol* %37, %struct.addr_map_symbol** %6, align 8
  %38 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %39 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store %struct.addr_map_symbol* %41, %struct.addr_map_symbol** %7, align 8
  %42 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %6, align 8
  %43 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %33
  %47 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %7, align 8
  %48 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %6, align 8
  %53 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %7, align 8
  %56 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @_sort__addr_cmp(i32 %54, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %67

59:                                               ; preds = %46, %33
  %60 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %6, align 8
  %61 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %7, align 8
  %64 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @_sort__sym_cmp(i32 %62, i32 %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %59, %51, %25
  %68 = load i32, i32* %3, align 4
  ret i32 %68
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
