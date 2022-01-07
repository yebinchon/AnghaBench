; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map__kmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map__kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmap = type { i32 }
%struct.map = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Internal error: map__kmap with a non-kernel map\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kmap* @map__kmap(%struct.map* %0) #0 {
  %2 = alloca %struct.map*, align 8
  %3 = alloca %struct.kmap*, align 8
  store %struct.map* %0, %struct.map** %2, align 8
  %4 = load %struct.map*, %struct.map** %2, align 8
  %5 = call %struct.kmap* @__map__kmap(%struct.map* %4)
  store %struct.kmap* %5, %struct.kmap** %3, align 8
  %6 = load %struct.kmap*, %struct.kmap** %3, align 8
  %7 = icmp ne %struct.kmap* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.kmap*, %struct.kmap** %3, align 8
  ret %struct.kmap* %11
}

declare dso_local %struct.kmap* @__map__kmap(%struct.map*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
