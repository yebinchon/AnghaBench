; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_event_ratelimit.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_event_ratelimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@THRESHOLDS_EVENTS_TARGET = common dso_local global i32 0, align 4
@SOFTLIMIT_EVENTS_TARGET = common dso_local global i32 0, align 4
@NUMAINFO_EVENTS_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_cgroup*, i32)* @mem_cgroup_event_ratelimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_event_ratelimit(%struct.mem_cgroup* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %9 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @__this_cpu_read(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %15 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @__this_cpu_read(i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub i64 %24, %25
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %45 [
    i32 128, label %30
    i32 129, label %35
    i32 130, label %40
  ]

30:                                               ; preds = %28
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @THRESHOLDS_EVENTS_TARGET, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %31, %33
  store i64 %34, i64* %7, align 8
  br label %46

35:                                               ; preds = %28
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @SOFTLIMIT_EVENTS_TARGET, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %36, %38
  store i64 %39, i64* %7, align 8
  br label %46

40:                                               ; preds = %28
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* @NUMAINFO_EVENTS_TARGET, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %41, %43
  store i64 %44, i64* %7, align 8
  br label %46

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45, %40, %35, %30
  %47 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %48 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @__this_cpu_write(i32 %55, i64 %56)
  store i32 1, i32* %3, align 4
  br label %59

58:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %46
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @__this_cpu_read(i32) #1

declare dso_local i32 @__this_cpu_write(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
