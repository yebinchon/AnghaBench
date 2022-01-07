; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_map_access_type.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_map_access_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_reg_state = type { %struct.bpf_map* }
%struct.bpf_map = type { i32 }

@BPF_WRITE = common dso_local global i32 0, align 4
@BPF_MAP_CAN_WRITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"write into map forbidden, value_size=%d off=%d size=%d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@BPF_READ = common dso_local global i32 0, align 4
@BPF_MAP_CAN_READ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"read from map forbidden, value_size=%d off=%d size=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i64, i32, i32, i32)* @check_map_access_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_map_access_type(%struct.bpf_verifier_env* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_verifier_env*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_reg_state*, align 8
  %13 = alloca %struct.bpf_map*, align 8
  %14 = alloca i64, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %16 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %15)
  store %struct.bpf_reg_state* %16, %struct.bpf_reg_state** %12, align 8
  %17 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %17, i64 %18
  %20 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %19, i32 0, i32 0
  %21 = load %struct.bpf_map*, %struct.bpf_map** %20, align 8
  store %struct.bpf_map* %21, %struct.bpf_map** %13, align 8
  %22 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %23 = call i64 @bpf_map_flags_to_cap(%struct.bpf_map* %22)
  store i64 %23, i64* %14, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @BPF_WRITE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %5
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* @BPF_MAP_CAN_WRITE, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %34 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %35 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @verbose(%struct.bpf_verifier_env* %33, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @EACCES, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %62

42:                                               ; preds = %27, %5
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @BPF_READ, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* @BPF_MAP_CAN_READ, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %53 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %54 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @verbose(%struct.bpf_verifier_env* %52, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* @EACCES, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %62

61:                                               ; preds = %46, %42
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %51, %32
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local i64 @bpf_map_flags_to_cap(%struct.bpf_map*) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
