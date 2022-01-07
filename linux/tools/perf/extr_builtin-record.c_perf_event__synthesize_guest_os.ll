; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_perf_event__synthesize_guest_os.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_perf_event__synthesize_guest_os.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.perf_tool = type { i32 }

@process_synthesized_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Couldn't record guest kernel [%d]'s reference relocation symbol.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.machine*, i8*)* @perf_event__synthesize_guest_os to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event__synthesize_guest_os(%struct.machine* %0, i8* %1) #0 {
  %3 = alloca %struct.machine*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_tool*, align 8
  store %struct.machine* %0, %struct.machine** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.perf_tool*
  store %struct.perf_tool* %8, %struct.perf_tool** %6, align 8
  %9 = load %struct.perf_tool*, %struct.perf_tool** %6, align 8
  %10 = load i32, i32* @process_synthesized_event, align 4
  %11 = load %struct.machine*, %struct.machine** %3, align 8
  %12 = call i32 @perf_event__synthesize_modules(%struct.perf_tool* %9, i32 %10, %struct.machine* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.machine*, %struct.machine** %3, align 8
  %17 = getelementptr inbounds %struct.machine, %struct.machine* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.perf_tool*, %struct.perf_tool** %6, align 8
  %22 = load i32, i32* @process_synthesized_event, align 4
  %23 = load %struct.machine*, %struct.machine** %3, align 8
  %24 = call i32 @perf_event__synthesize_kernel_mmap(%struct.perf_tool* %21, i32 %22, %struct.machine* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.machine*, %struct.machine** %3, align 8
  %29 = getelementptr inbounds %struct.machine, %struct.machine* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %20
  ret void
}

declare dso_local i32 @perf_event__synthesize_modules(%struct.perf_tool*, i32, %struct.machine*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @perf_event__synthesize_kernel_mmap(%struct.perf_tool*, i32, %struct.machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
