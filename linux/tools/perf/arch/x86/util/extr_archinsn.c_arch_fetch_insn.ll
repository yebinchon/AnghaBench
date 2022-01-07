; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_archinsn.c_arch_fetch_insn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_archinsn.c_arch_fetch_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i32, i32, i32 }
%struct.thread = type { i32 }
%struct.machine = type { i32 }
%struct.insn = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_fetch_insn(%struct.perf_sample* %0, %struct.thread* %1, %struct.machine* %2) #0 {
  %4 = alloca %struct.perf_sample*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.machine*, align 8
  %7 = alloca %struct.insn, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.perf_sample* %0, %struct.perf_sample** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  store %struct.machine* %2, %struct.machine** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %11 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %48

15:                                               ; preds = %3
  %16 = load %struct.thread*, %struct.thread** %5, align 8
  %17 = load %struct.machine*, %struct.machine** %6, align 8
  %18 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %19 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %22 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @thread__memcpy(%struct.thread* %16, %struct.machine* %17, i32 %20, i32 %23, i32 4, i32* %9)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %48

28:                                               ; preds = %15
  %29 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %30 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @insn_init(%struct.insn* %7, i32 %31, i32 %32, i32 %33)
  %35 = call i32 @insn_get_length(%struct.insn* %7)
  %36 = call i64 @insn_complete(%struct.insn* %7)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.insn, %struct.insn* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.insn, %struct.insn* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %47 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %14, %27, %43, %38, %28
  ret void
}

declare dso_local i32 @thread__memcpy(%struct.thread*, %struct.machine*, i32, i32, i32, i32*) #1

declare dso_local i32 @insn_init(%struct.insn*, i32, i32, i32) #1

declare dso_local i32 @insn_get_length(%struct.insn*) #1

declare dso_local i64 @insn_complete(%struct.insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
