; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_machines__find_for_cpumode.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_machines__find_for_cpumode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.machines = type { %struct.machine }
%union.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.perf_sample = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@perf_guest = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_GUEST_KERNEL = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_GUEST_USER = common dso_local global i64 0, align 8
@PERF_RECORD_MMAP = common dso_local global i64 0, align 8
@PERF_RECORD_MMAP2 = common dso_local global i64 0, align 8
@DEFAULT_GUEST_KERNEL_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.machine* (%struct.machines*, %union.perf_event*, %struct.perf_sample*)* @machines__find_for_cpumode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.machine* @machines__find_for_cpumode(%struct.machines* %0, %union.perf_event* %1, %struct.perf_sample* %2) #0 {
  %4 = alloca %struct.machine*, align 8
  %5 = alloca %struct.machines*, align 8
  %6 = alloca %union.perf_event*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca %struct.machine*, align 8
  %9 = alloca i32, align 4
  store %struct.machines* %0, %struct.machines** %5, align 8
  store %union.perf_event* %1, %union.perf_event** %6, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %7, align 8
  %10 = load i64, i64* @perf_guest, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %59

12:                                               ; preds = %3
  %13 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %14 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PERF_RECORD_MISC_GUEST_KERNEL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %20 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PERF_RECORD_MISC_GUEST_USER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %18, %12
  %25 = load %union.perf_event*, %union.perf_event** %6, align 8
  %26 = bitcast %union.perf_event* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PERF_RECORD_MMAP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %union.perf_event*, %union.perf_event** %6, align 8
  %33 = bitcast %union.perf_event* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PERF_RECORD_MMAP2, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31, %24
  %39 = load %union.perf_event*, %union.perf_event** %6, align 8
  %40 = bitcast %union.perf_event* %39 to %struct.TYPE_3__*
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %9, align 4
  br label %47

43:                                               ; preds = %31
  %44 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %45 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.machines*, %struct.machines** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call %struct.machine* @machines__find(%struct.machines* %48, i32 %49)
  store %struct.machine* %50, %struct.machine** %8, align 8
  %51 = load %struct.machine*, %struct.machine** %8, align 8
  %52 = icmp ne %struct.machine* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load %struct.machines*, %struct.machines** %5, align 8
  %55 = load i32, i32* @DEFAULT_GUEST_KERNEL_ID, align 4
  %56 = call %struct.machine* @machines__findnew(%struct.machines* %54, i32 %55)
  store %struct.machine* %56, %struct.machine** %8, align 8
  br label %57

57:                                               ; preds = %53, %47
  %58 = load %struct.machine*, %struct.machine** %8, align 8
  store %struct.machine* %58, %struct.machine** %4, align 8
  br label %62

59:                                               ; preds = %18, %3
  %60 = load %struct.machines*, %struct.machines** %5, align 8
  %61 = getelementptr inbounds %struct.machines, %struct.machines* %60, i32 0, i32 0
  store %struct.machine* %61, %struct.machine** %4, align 8
  br label %62

62:                                               ; preds = %59, %57
  %63 = load %struct.machine*, %struct.machine** %4, align 8
  ret %struct.machine* %63
}

declare dso_local %struct.machine* @machines__find(%struct.machines*, i32) #1

declare dso_local %struct.machine* @machines__findnew(%struct.machines*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
