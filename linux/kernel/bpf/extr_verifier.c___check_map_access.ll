; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c___check_map_access.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c___check_map_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_reg_state = type { %struct.bpf_map* }
%struct.bpf_map = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"invalid access to map value, value_size=%d off=%d size=%d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i64, i32, i32, i32)* @__check_map_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__check_map_access(%struct.bpf_verifier_env* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_verifier_env*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_reg_state*, align 8
  %13 = alloca %struct.bpf_map*, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %15 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %14)
  store %struct.bpf_reg_state* %15, %struct.bpf_reg_state** %12, align 8
  %16 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %16, i64 %17
  %19 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %18, i32 0, i32 0
  %20 = load %struct.bpf_map*, %struct.bpf_map** %19, align 8
  store %struct.bpf_map* %20, %struct.bpf_map** %13, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %33, %34
  %36 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %37 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %32, %29, %23, %5
  %41 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %42 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %43 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @verbose(%struct.bpf_verifier_env* %41, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* @EACCES, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %51

50:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %40
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
