; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_process_tracing_data.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_process_tracing_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.feat_fd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.feat_fd*, i8*)* @process_tracing_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_tracing_data(%struct.feat_fd* %0, i8* %1) #0 {
  %3 = alloca %struct.feat_fd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.feat_fd* %0, %struct.feat_fd** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.feat_fd*, %struct.feat_fd** %3, align 8
  %7 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @trace_report(i32 %8, i8* %9, i32 0)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 -1, i32 0
  ret i32 %14
}

declare dso_local i64 @trace_report(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
