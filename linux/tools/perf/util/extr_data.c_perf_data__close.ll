; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_perf_data__close.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_perf_data__close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_data__close(%struct.perf_data* %0) #0 {
  %2 = alloca %struct.perf_data*, align 8
  store %struct.perf_data* %0, %struct.perf_data** %2, align 8
  %3 = load %struct.perf_data*, %struct.perf_data** %2, align 8
  %4 = call i64 @perf_data__is_dir(%struct.perf_data* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.perf_data*, %struct.perf_data** %2, align 8
  %8 = call i32 @perf_data__close_dir(%struct.perf_data* %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load %struct.perf_data*, %struct.perf_data** %2, align 8
  %11 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = call i32 @zfree(i32* %12)
  %14 = load %struct.perf_data*, %struct.perf_data** %2, align 8
  %15 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @close(i32 %17)
  ret void
}

declare dso_local i64 @perf_data__is_dir(%struct.perf_data*) #1

declare dso_local i32 @perf_data__close_dir(%struct.perf_data*) #1

declare dso_local i32 @zfree(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
