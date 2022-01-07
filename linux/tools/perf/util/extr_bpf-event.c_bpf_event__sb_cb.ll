; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-event.c_bpf_event__sb_cb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-event.c_bpf_event__sb_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.perf_env = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@PERF_RECORD_BPF_EVENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"unexpected bpf event type of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.perf_event*, i8*)* @bpf_event__sb_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_event__sb_cb(%union.perf_event* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.perf_event*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.perf_env*, align 8
  store %union.perf_event* %0, %union.perf_event** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.perf_env*
  store %struct.perf_env* %8, %struct.perf_env** %6, align 8
  %9 = load %union.perf_event*, %union.perf_event** %4, align 8
  %10 = bitcast %union.perf_event* %9 to %struct.TYPE_3__*
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PERF_RECORD_BPF_EVENT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load %union.perf_event*, %union.perf_event** %4, align 8
  %18 = bitcast %union.perf_event* %17 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %29 [
    i32 129, label %21
    i32 128, label %28
  ]

21:                                               ; preds = %16
  %22 = load %struct.perf_env*, %struct.perf_env** %6, align 8
  %23 = load %union.perf_event*, %union.perf_event** %4, align 8
  %24 = bitcast %union.perf_event* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @perf_env__add_bpf_info(%struct.perf_env* %22, i32 %26)
  br label %28

28:                                               ; preds = %16, %21
  br label %35

29:                                               ; preds = %16
  %30 = load %union.perf_event*, %union.perf_event** %4, align 8
  %31 = bitcast %union.perf_event* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %28
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @perf_env__add_bpf_info(%struct.perf_env*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
