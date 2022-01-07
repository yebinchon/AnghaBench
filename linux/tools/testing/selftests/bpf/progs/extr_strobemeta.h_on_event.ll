; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_strobemeta.h_on_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_strobemeta.h_on_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.strobelight_bpf_sample = type { i32, i32, i8*, i8*, i32, i32, i32 }
%struct.task_struct = type { i32 }

@sample_heap = common dso_local global i32 0, align 4
@TASK_COMM_LEN = common dso_local global i32 0, align 4
@STACK_TABLE_EPOCH_SHIFT = common dso_local global i32 0, align 4
@stacks_1 = common dso_local global i32 0, align 4
@BPF_F_USER_STACK = common dso_local global i32 0, align 4
@stacks_0 = common dso_local global i32 0, align 4
@samples = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @on_event(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.strobelight_bpf_sample*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %11 = call i32 (...) @bpf_get_current_pid_tgid()
  %12 = ashr i32 %11, 32
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %13 = call %struct.strobelight_bpf_sample* @bpf_map_lookup_elem(i32* @sample_heap, i32* %7)
  store %struct.strobelight_bpf_sample* %13, %struct.strobelight_bpf_sample** %5, align 8
  %14 = load %struct.strobelight_bpf_sample*, %struct.strobelight_bpf_sample** %5, align 8
  %15 = icmp ne %struct.strobelight_bpf_sample* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.strobelight_bpf_sample*, %struct.strobelight_bpf_sample** %5, align 8
  %20 = getelementptr inbounds %struct.strobelight_bpf_sample, %struct.strobelight_bpf_sample* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.strobelight_bpf_sample*, %struct.strobelight_bpf_sample** %5, align 8
  %22 = getelementptr inbounds %struct.strobelight_bpf_sample, %struct.strobelight_bpf_sample* %21, i32 0, i32 6
  %23 = load i32, i32* @TASK_COMM_LEN, align 4
  %24 = call i32 @bpf_get_current_comm(i32* %22, i32 %23)
  %25 = call i32 (...) @bpf_ktime_get_ns()
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.strobelight_bpf_sample*, %struct.strobelight_bpf_sample** %5, align 8
  %28 = getelementptr inbounds %struct.strobelight_bpf_sample, %struct.strobelight_bpf_sample* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = call i64 (...) @bpf_get_current_task()
  %30 = inttoptr i64 %29 to %struct.task_struct*
  store %struct.task_struct* %30, %struct.task_struct** %6, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %32 = load %struct.strobelight_bpf_sample*, %struct.strobelight_bpf_sample** %5, align 8
  %33 = getelementptr inbounds %struct.strobelight_bpf_sample, %struct.strobelight_bpf_sample* %32, i32 0, i32 4
  %34 = call i8* @read_strobe_meta(%struct.task_struct* %31, i32* %33)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  %37 = zext i1 %36 to i32
  %38 = load %struct.strobelight_bpf_sample*, %struct.strobelight_bpf_sample** %5, align 8
  %39 = getelementptr inbounds %struct.strobelight_bpf_sample, %struct.strobelight_bpf_sample* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %17
  br label %47

43:                                               ; preds = %17
  %44 = load %struct.strobelight_bpf_sample*, %struct.strobelight_bpf_sample** %5, align 8
  %45 = getelementptr inbounds %struct.strobelight_bpf_sample, %struct.strobelight_bpf_sample* %44, i32 0, i32 4
  %46 = bitcast i32* %45 to i8*
  br label %47

47:                                               ; preds = %43, %42
  %48 = phi i8* [ %40, %42 ], [ %46, %43 ]
  store i8* %48, i8** %9, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @STACK_TABLE_EPOCH_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %56 = call i8* @bpf_get_stackid(%struct.pt_regs* %55, i32* @stacks_1, i32 0)
  %57 = load %struct.strobelight_bpf_sample*, %struct.strobelight_bpf_sample** %5, align 8
  %58 = getelementptr inbounds %struct.strobelight_bpf_sample, %struct.strobelight_bpf_sample* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %60 = load i32, i32* @BPF_F_USER_STACK, align 4
  %61 = call i8* @bpf_get_stackid(%struct.pt_regs* %59, i32* @stacks_1, i32 %60)
  %62 = load %struct.strobelight_bpf_sample*, %struct.strobelight_bpf_sample** %5, align 8
  %63 = getelementptr inbounds %struct.strobelight_bpf_sample, %struct.strobelight_bpf_sample* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  br label %74

64:                                               ; preds = %47
  %65 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %66 = call i8* @bpf_get_stackid(%struct.pt_regs* %65, i32* @stacks_0, i32 0)
  %67 = load %struct.strobelight_bpf_sample*, %struct.strobelight_bpf_sample** %5, align 8
  %68 = getelementptr inbounds %struct.strobelight_bpf_sample, %struct.strobelight_bpf_sample* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %70 = load i32, i32* @BPF_F_USER_STACK, align 4
  %71 = call i8* @bpf_get_stackid(%struct.pt_regs* %69, i32* @stacks_0, i32 %70)
  %72 = load %struct.strobelight_bpf_sample*, %struct.strobelight_bpf_sample** %5, align 8
  %73 = getelementptr inbounds %struct.strobelight_bpf_sample, %struct.strobelight_bpf_sample* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %64, %54
  %75 = load i8*, i8** %9, align 8
  %76 = load %struct.strobelight_bpf_sample*, %struct.strobelight_bpf_sample** %5, align 8
  %77 = bitcast %struct.strobelight_bpf_sample* %76 to i8*
  %78 = ptrtoint i8* %75 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %83, 40
  br i1 %84, label %85, label %91

85:                                               ; preds = %74
  %86 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %87 = load %struct.strobelight_bpf_sample*, %struct.strobelight_bpf_sample** %5, align 8
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 1, %88
  %90 = call i32 @bpf_perf_event_output(%struct.pt_regs* %86, i32* @samples, i32 0, %struct.strobelight_bpf_sample* %87, i32 %89)
  br label %91

91:                                               ; preds = %85, %74
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %16
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @bpf_get_current_pid_tgid(...) #1

declare dso_local %struct.strobelight_bpf_sample* @bpf_map_lookup_elem(i32*, i32*) #1

declare dso_local i32 @bpf_get_current_comm(i32*, i32) #1

declare dso_local i32 @bpf_ktime_get_ns(...) #1

declare dso_local i64 @bpf_get_current_task(...) #1

declare dso_local i8* @read_strobe_meta(%struct.task_struct*, i32*) #1

declare dso_local i8* @bpf_get_stackid(%struct.pt_regs*, i32*, i32) #1

declare dso_local i32 @bpf_perf_event_output(%struct.pt_regs*, i32*, i32, %struct.strobelight_bpf_sample*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
