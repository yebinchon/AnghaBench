; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_pid_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_pid_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_hpp_fmt = type { i32 }
%struct.perf_hpp = type { i32, i32 }
%struct.hist_entry = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%*d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_hpp_fmt*, %struct.perf_hpp*, %struct.hist_entry*)* @pid_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pid_entry(%struct.perf_hpp_fmt* %0, %struct.perf_hpp* %1, %struct.hist_entry* %2) #0 {
  %4 = alloca %struct.perf_hpp_fmt*, align 8
  %5 = alloca %struct.perf_hpp*, align 8
  %6 = alloca %struct.hist_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_hpp_fmt* %0, %struct.perf_hpp_fmt** %4, align 8
  store %struct.perf_hpp* %1, %struct.perf_hpp** %5, align 8
  store %struct.hist_entry* %2, %struct.hist_entry** %6, align 8
  %8 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %4, align 8
  %9 = load %struct.perf_hpp*, %struct.perf_hpp** %5, align 8
  %10 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %11 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @c2c_width(%struct.perf_hpp_fmt* %8, %struct.perf_hpp* %9, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.perf_hpp*, %struct.perf_hpp** %5, align 8
  %15 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.perf_hpp*, %struct.perf_hpp** %5, align 8
  %18 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %22 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @scnprintf(i32 %16, i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %25)
  ret i32 %26
}

declare dso_local i32 @c2c_width(%struct.perf_hpp_fmt*, %struct.perf_hpp*, i32) #1

declare dso_local i32 @scnprintf(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
