; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__dso_daddr_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__dso_daddr_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.map* }
%struct.map = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, %struct.hist_entry*)* @sort__dso_daddr_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort__dso_daddr_cmp(%struct.hist_entry* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca %struct.hist_entry*, align 8
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %struct.map*, align 8
  %6 = alloca %struct.map*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %3, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %4, align 8
  store %struct.map* null, %struct.map** %5, align 8
  store %struct.map* null, %struct.map** %6, align 8
  %7 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %8 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %13 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.map*, %struct.map** %16, align 8
  store %struct.map* %17, %struct.map** %5, align 8
  br label %18

18:                                               ; preds = %11, %2
  %19 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %20 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %25 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.map*, %struct.map** %28, align 8
  store %struct.map* %29, %struct.map** %6, align 8
  br label %30

30:                                               ; preds = %23, %18
  %31 = load %struct.map*, %struct.map** %5, align 8
  %32 = load %struct.map*, %struct.map** %6, align 8
  %33 = call i32 @_sort__dso_cmp(%struct.map* %31, %struct.map* %32)
  ret i32 %33
}

declare dso_local i32 @_sort__dso_cmp(%struct.map*, %struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
