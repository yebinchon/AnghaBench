; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record__adjust_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record__adjust_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mmap = type { i32 }

@PERF_AFFINITY_SYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.record*, %struct.mmap*)* @record__adjust_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record__adjust_affinity(%struct.record* %0, %struct.mmap* %1) #0 {
  %3 = alloca %struct.record*, align 8
  %4 = alloca %struct.mmap*, align 8
  store %struct.record* %0, %struct.record** %3, align 8
  store %struct.mmap* %1, %struct.mmap** %4, align 8
  %5 = load %struct.record*, %struct.record** %3, align 8
  %6 = getelementptr inbounds %struct.record, %struct.record* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PERF_AFFINITY_SYS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load %struct.record*, %struct.record** %3, align 8
  %13 = getelementptr inbounds %struct.record, %struct.record* %12, i32 0, i32 0
  %14 = load %struct.mmap*, %struct.mmap** %4, align 8
  %15 = getelementptr inbounds %struct.mmap, %struct.mmap* %14, i32 0, i32 0
  %16 = call i32 @CPU_EQUAL(i32* %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %11
  %19 = load %struct.record*, %struct.record** %3, align 8
  %20 = getelementptr inbounds %struct.record, %struct.record* %19, i32 0, i32 0
  %21 = call i32 @CPU_ZERO(i32* %20)
  %22 = load %struct.record*, %struct.record** %3, align 8
  %23 = getelementptr inbounds %struct.record, %struct.record* %22, i32 0, i32 0
  %24 = load %struct.record*, %struct.record** %3, align 8
  %25 = getelementptr inbounds %struct.record, %struct.record* %24, i32 0, i32 0
  %26 = load %struct.mmap*, %struct.mmap** %4, align 8
  %27 = getelementptr inbounds %struct.mmap, %struct.mmap* %26, i32 0, i32 0
  %28 = call i32 @CPU_OR(i32* %23, i32* %25, i32* %27)
  %29 = load %struct.record*, %struct.record** %3, align 8
  %30 = getelementptr inbounds %struct.record, %struct.record* %29, i32 0, i32 0
  %31 = call i32 @sched_setaffinity(i32 0, i32 4, i32* %30)
  br label %32

32:                                               ; preds = %18, %11, %2
  ret void
}

declare dso_local i32 @CPU_EQUAL(i32*, i32*) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_OR(i32*, i32*, i32*) #1

declare dso_local i32 @sched_setaffinity(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
