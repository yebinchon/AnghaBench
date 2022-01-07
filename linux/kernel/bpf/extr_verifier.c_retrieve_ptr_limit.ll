; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_retrieve_ptr_limit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_retrieve_ptr_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_reg_state = type { i32, %struct.TYPE_4__*, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@BPF_ADD = common dso_local global i64 0, align 8
@BPF_SUB = common dso_local global i64 0, align 8
@MAX_BPF_STACK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_reg_state*, i64*, i64, i32)* @retrieve_ptr_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retrieve_ptr_limit(%struct.bpf_reg_state* %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_reg_state*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.bpf_reg_state* %0, %struct.bpf_reg_state** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @BPF_ADD, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15, %4
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @BPF_SUB, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ false, %18 ], [ %25, %22 ]
  br label %28

28:                                               ; preds = %26, %15
  %29 = phi i1 [ true, %15 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %32 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %84 [
    i32 128, label %34
    i32 129, label %55
  ]

34:                                               ; preds = %28
  %35 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %36 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %39 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %37, %41
  store i64 %42, i64* %11, align 8
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load i64, i64* @MAX_BPF_STACK, align 8
  %47 = load i64, i64* %11, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64*, i64** %7, align 8
  store i64 %48, i64* %49, align 8
  br label %54

50:                                               ; preds = %34
  %51 = load i64, i64* %11, align 8
  %52 = sub nsw i64 0, %51
  %53 = load i64*, i64** %7, align 8
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %45
  store i32 0, i32* %5, align 4
  br label %87

55:                                               ; preds = %28
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %60 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %63 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load i64*, i64** %7, align 8
  store i64 %65, i64* %66, align 8
  br label %83

67:                                               ; preds = %55
  %68 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %69 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %72 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  store i64 %74, i64* %11, align 8
  %75 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %76 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = sub nsw i64 %79, %80
  %82 = load i64*, i64** %7, align 8
  store i64 %81, i64* %82, align 8
  br label %83

83:                                               ; preds = %67, %58
  store i32 0, i32* %5, align 4
  br label %87

84:                                               ; preds = %28
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %84, %83, %54
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
