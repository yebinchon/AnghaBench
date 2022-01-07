; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall_arg__set_ret_scnprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall_arg__set_ret_scnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall_arg = type { i32 }
%struct.thread_trace = type { i64 (i8*, i64, %struct.syscall_arg.0*)* }
%struct.syscall_arg.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @syscall_arg__set_ret_scnprintf(%struct.syscall_arg* %0, i64 (i8*, i64, %struct.syscall_arg*)* %1) #0 {
  %3 = alloca %struct.syscall_arg*, align 8
  %4 = alloca i64 (i8*, i64, %struct.syscall_arg*)*, align 8
  %5 = alloca %struct.thread_trace*, align 8
  store %struct.syscall_arg* %0, %struct.syscall_arg** %3, align 8
  store i64 (i8*, i64, %struct.syscall_arg*)* %1, i64 (i8*, i64, %struct.syscall_arg*)** %4, align 8
  %6 = load %struct.syscall_arg*, %struct.syscall_arg** %3, align 8
  %7 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.thread_trace* @thread__priv(i32 %8)
  store %struct.thread_trace* %9, %struct.thread_trace** %5, align 8
  %10 = load i64 (i8*, i64, %struct.syscall_arg*)*, i64 (i8*, i64, %struct.syscall_arg*)** %4, align 8
  %11 = bitcast i64 (i8*, i64, %struct.syscall_arg*)* %10 to i64 (i8*, i64, %struct.syscall_arg.0*)*
  %12 = load %struct.thread_trace*, %struct.thread_trace** %5, align 8
  %13 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %12, i32 0, i32 0
  store i64 (i8*, i64, %struct.syscall_arg.0*)* %11, i64 (i8*, i64, %struct.syscall_arg.0*)** %13, align 8
  ret void
}

declare dso_local %struct.thread_trace* @thread__priv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
