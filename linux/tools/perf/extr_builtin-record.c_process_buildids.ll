; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_process_buildids.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_process_buildids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.record = type { %struct.TYPE_3__, i32, i64, i32, %struct.perf_session* }
%struct.TYPE_3__ = type { i32* }
%struct.perf_session = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.record*)* @process_buildids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_buildids(%struct.record* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.record*, align 8
  %4 = alloca %struct.perf_session*, align 8
  store %struct.record* %0, %struct.record** %3, align 8
  %5 = load %struct.record*, %struct.record** %3, align 8
  %6 = getelementptr inbounds %struct.record, %struct.record* %5, i32 0, i32 4
  %7 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  store %struct.perf_session* %7, %struct.perf_session** %4, align 8
  %8 = load %struct.record*, %struct.record** %3, align 8
  %9 = getelementptr inbounds %struct.record, %struct.record* %8, i32 0, i32 3
  %10 = call i64 @perf_data__size(i32* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 4
  %14 = load %struct.record*, %struct.record** %3, align 8
  %15 = getelementptr inbounds %struct.record, %struct.record* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.record*, %struct.record** %3, align 8
  %20 = getelementptr inbounds %struct.record, %struct.record* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load %struct.record*, %struct.record** %3, align 8
  %25 = getelementptr inbounds %struct.record, %struct.record* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %23, %18, %13
  %28 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %29 = call i32 @perf_session__process_events(%struct.perf_session* %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %12
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @perf_data__size(i32*) #1

declare dso_local i32 @perf_session__process_events(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
