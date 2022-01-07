; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_raw_mode_ok.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_raw_mode_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_func_proto = type { i64, i64, i64, i64, i64 }

@ARG_PTR_TO_UNINIT_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_func_proto*)* @check_raw_mode_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_raw_mode_ok(%struct.bpf_func_proto* %0) #0 {
  %2 = alloca %struct.bpf_func_proto*, align 8
  %3 = alloca i32, align 4
  store %struct.bpf_func_proto* %0, %struct.bpf_func_proto** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %2, align 8
  %5 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ARG_PTR_TO_UNINIT_MEM, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %2, align 8
  %14 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ARG_PTR_TO_UNINIT_MEM, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %12
  %22 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %2, align 8
  %23 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ARG_PTR_TO_UNINIT_MEM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %2, align 8
  %32 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ARG_PTR_TO_UNINIT_MEM, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %2, align 8
  %41 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ARG_PTR_TO_UNINIT_MEM, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* %3, align 4
  %50 = icmp sle i32 %49, 1
  %51 = zext i1 %50 to i32
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
