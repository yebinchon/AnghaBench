; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_trace_call_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_trace_call_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i32 }

@bpf_prog_active = common dso_local global i32 0, align 4
@BPF_PROG_RUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_call_bpf(%struct.trace_event_call* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_event_call*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.trace_event_call* %0, %struct.trace_event_call** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i64 (...) @in_nmi()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %31

10:                                               ; preds = %2
  %11 = call i32 (...) @preempt_disable()
  %12 = load i32, i32* @bpf_prog_active, align 4
  %13 = call i32 @__this_cpu_inc_return(i32 %12)
  %14 = icmp ne i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %26

19:                                               ; preds = %10
  %20 = load %struct.trace_event_call*, %struct.trace_event_call** %4, align 8
  %21 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @BPF_PROG_RUN, align 4
  %25 = call i32 @BPF_PROG_RUN_ARRAY_CHECK(i32 %22, i8* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %19, %18
  %27 = load i32, i32* @bpf_prog_active, align 4
  %28 = call i32 @__this_cpu_dec(i32 %27)
  %29 = call i32 (...) @preempt_enable()
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %26, %9
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @in_nmi(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__this_cpu_inc_return(i32) #1

declare dso_local i32 @BPF_PROG_RUN_ARRAY_CHECK(i32, i8*, i32) #1

declare dso_local i32 @__this_cpu_dec(i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
