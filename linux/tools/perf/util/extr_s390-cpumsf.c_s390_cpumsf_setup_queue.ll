; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_setup_queue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_setup_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_cpumsf = type { i32 }
%struct.auxtrace_queue = type { i32, %struct.s390_cpumsf_queue*, i32 }
%struct.s390_cpumsf_queue = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s390_cpumsf*, %struct.auxtrace_queue*, i32, i32)* @s390_cpumsf_setup_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_cpumsf_setup_queue(%struct.s390_cpumsf* %0, %struct.auxtrace_queue* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.s390_cpumsf*, align 8
  %7 = alloca %struct.auxtrace_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.s390_cpumsf_queue*, align 8
  store %struct.s390_cpumsf* %0, %struct.s390_cpumsf** %6, align 8
  store %struct.auxtrace_queue* %1, %struct.auxtrace_queue** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %7, align 8
  %12 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %11, i32 0, i32 1
  %13 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %12, align 8
  store %struct.s390_cpumsf_queue* %13, %struct.s390_cpumsf_queue** %10, align 8
  %14 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %7, align 8
  %15 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %14, i32 0, i32 2
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %52

19:                                               ; preds = %4
  %20 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %10, align 8
  %21 = icmp eq %struct.s390_cpumsf_queue* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.s390_cpumsf_queue* @s390_cpumsf_alloc_queue(%struct.s390_cpumsf* %23, i32 %24)
  store %struct.s390_cpumsf_queue* %25, %struct.s390_cpumsf_queue** %10, align 8
  %26 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %10, align 8
  %27 = icmp ne %struct.s390_cpumsf_queue* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %52

31:                                               ; preds = %22
  %32 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %10, align 8
  %33 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %7, align 8
  %34 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %33, i32 0, i32 1
  store %struct.s390_cpumsf_queue* %32, %struct.s390_cpumsf_queue** %34, align 8
  %35 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %7, align 8
  %36 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %7, align 8
  %41 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %10, align 8
  %44 = getelementptr inbounds %struct.s390_cpumsf_queue, %struct.s390_cpumsf_queue* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %31
  br label %46

46:                                               ; preds = %45, %19
  %47 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %6, align 8
  %48 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %47, i32 0, i32 0
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @auxtrace_heap__add(i32* %48, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %46, %28, %18
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.s390_cpumsf_queue* @s390_cpumsf_alloc_queue(%struct.s390_cpumsf*, i32) #1

declare dso_local i32 @auxtrace_heap__add(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
