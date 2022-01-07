; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_cmp_val_with_extended_s64.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_cmp_val_with_extended_s64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_reg_state = type { i64, i64 }

@S32_MAX = common dso_local global i64 0, align 8
@S32_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.bpf_reg_state*)* @cmp_val_with_extended_s64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_val_with_extended_s64(i64 %0, %struct.bpf_reg_state* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.bpf_reg_state*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.bpf_reg_state* %1, %struct.bpf_reg_state** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp sge i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %9 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %14 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @S32_MAX, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %34, label %18

18:                                               ; preds = %12, %7, %2
  %19 = load i64, i64* %3, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %23 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %28 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @S32_MIN, align 8
  %31 = icmp sge i64 %29, %30
  br label %32

32:                                               ; preds = %26, %21, %18
  %33 = phi i1 [ false, %21 ], [ false, %18 ], [ %31, %26 ]
  br label %34

34:                                               ; preds = %32, %12
  %35 = phi i1 [ true, %12 ], [ %33, %32 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
