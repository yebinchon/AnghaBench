; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__set_bpf_map_syscalls.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__set_bpf_map_syscalls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"syscalls\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"syscalls_sys_enter\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"syscalls_sys_exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace*)* @trace__set_bpf_map_syscalls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace__set_bpf_map_syscalls(%struct.trace* %0) #0 {
  %2 = alloca %struct.trace*, align 8
  store %struct.trace* %0, %struct.trace** %2, align 8
  %3 = load %struct.trace*, %struct.trace** %2, align 8
  %4 = call i8* @trace__find_bpf_map_by_name(%struct.trace* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.trace*, %struct.trace** %2, align 8
  %6 = getelementptr inbounds %struct.trace, %struct.trace* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i8* %4, i8** %7, align 8
  %8 = load %struct.trace*, %struct.trace** %2, align 8
  %9 = call i8* @trace__find_bpf_map_by_name(%struct.trace* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.trace*, %struct.trace** %2, align 8
  %11 = getelementptr inbounds %struct.trace, %struct.trace* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i8* %9, i8** %13, align 8
  %14 = load %struct.trace*, %struct.trace** %2, align 8
  %15 = call i8* @trace__find_bpf_map_by_name(%struct.trace* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %16 = load %struct.trace*, %struct.trace** %2, align 8
  %17 = getelementptr inbounds %struct.trace, %struct.trace* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i8* %15, i8** %19, align 8
  ret void
}

declare dso_local i8* @trace__find_bpf_map_by_name(%struct.trace*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
