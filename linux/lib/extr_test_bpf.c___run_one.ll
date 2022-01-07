; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bpf.c___run_one.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bpf.c___run_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_prog*, i8*, i32, i64*)* @__run_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__run_one(%struct.bpf_prog* %0, i8* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %11, align 4
  %13 = call i32 (...) @preempt_disable()
  %14 = call i64 (...) @ktime_get_ns()
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %23, %4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @BPF_PROG_RUN(%struct.bpf_prog* %20, i8* %21)
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %12, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %12, align 4
  br label %15

26:                                               ; preds = %15
  %27 = call i64 (...) @ktime_get_ns()
  store i64 %27, i64* %10, align 8
  %28 = call i32 (...) @preempt_enable()
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load i64*, i64** %8, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @do_div(i64 %34, i32 %35)
  %37 = load i32, i32* %11, align 4
  ret i32 %37
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @ktime_get_ns(...) #1

declare dso_local i32 @BPF_PROG_RUN(%struct.bpf_prog*, i8*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
