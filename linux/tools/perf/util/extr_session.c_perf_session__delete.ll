; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__delete.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_session__delete(%struct.perf_session* %0) #0 {
  %2 = alloca %struct.perf_session*, align 8
  store %struct.perf_session* %0, %struct.perf_session** %2, align 8
  %3 = load %struct.perf_session*, %struct.perf_session** %2, align 8
  %4 = icmp eq %struct.perf_session* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %37

6:                                                ; preds = %1
  %7 = load %struct.perf_session*, %struct.perf_session** %2, align 8
  %8 = call i32 @auxtrace__free(%struct.perf_session* %7)
  %9 = load %struct.perf_session*, %struct.perf_session** %2, align 8
  %10 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %9, i32 0, i32 3
  %11 = call i32 @auxtrace_index__free(i32* %10)
  %12 = load %struct.perf_session*, %struct.perf_session** %2, align 8
  %13 = call i32 @perf_session__destroy_kernel_maps(%struct.perf_session* %12)
  %14 = load %struct.perf_session*, %struct.perf_session** %2, align 8
  %15 = call i32 @perf_session__delete_threads(%struct.perf_session* %14)
  %16 = load %struct.perf_session*, %struct.perf_session** %2, align 8
  %17 = call i32 @perf_session__release_decomp_events(%struct.perf_session* %16)
  %18 = load %struct.perf_session*, %struct.perf_session** %2, align 8
  %19 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @perf_env__exit(i32* %20)
  %22 = load %struct.perf_session*, %struct.perf_session** %2, align 8
  %23 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %22, i32 0, i32 1
  %24 = call i32 @machines__exit(i32* %23)
  %25 = load %struct.perf_session*, %struct.perf_session** %2, align 8
  %26 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %6
  %30 = load %struct.perf_session*, %struct.perf_session** %2, align 8
  %31 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @perf_data__close(i64 %32)
  br label %34

34:                                               ; preds = %29, %6
  %35 = load %struct.perf_session*, %struct.perf_session** %2, align 8
  %36 = call i32 @free(%struct.perf_session* %35)
  br label %37

37:                                               ; preds = %34, %5
  ret void
}

declare dso_local i32 @auxtrace__free(%struct.perf_session*) #1

declare dso_local i32 @auxtrace_index__free(i32*) #1

declare dso_local i32 @perf_session__destroy_kernel_maps(%struct.perf_session*) #1

declare dso_local i32 @perf_session__delete_threads(%struct.perf_session*) #1

declare dso_local i32 @perf_session__release_decomp_events(%struct.perf_session*) #1

declare dso_local i32 @perf_env__exit(i32*) #1

declare dso_local i32 @machines__exit(i32*) #1

declare dso_local i32 @perf_data__close(i64) #1

declare dso_local i32 @free(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
