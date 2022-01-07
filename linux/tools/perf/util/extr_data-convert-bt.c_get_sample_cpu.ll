; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_get_sample_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_get_sample_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctf_writer = type { i32 }
%struct.perf_sample = type { i32 }
%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PERF_SAMPLE_CPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Event was recorded for CPU %d, limit is at %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctf_writer*, %struct.perf_sample*, %struct.evsel*)* @get_sample_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sample_cpu(%struct.ctf_writer* %0, %struct.perf_sample* %1, %struct.evsel* %2) #0 {
  %4 = alloca %struct.ctf_writer*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca i32, align 4
  store %struct.ctf_writer* %0, %struct.ctf_writer** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  store %struct.evsel* %2, %struct.evsel** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.evsel*, %struct.evsel** %6, align 8
  %9 = getelementptr inbounds %struct.evsel, %struct.evsel* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PERF_SAMPLE_CPU, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %18 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %23 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %29 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %26, %20
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
