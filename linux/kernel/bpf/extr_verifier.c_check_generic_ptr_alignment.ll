; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_generic_ptr_alignment.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_generic_ptr_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_reg_state = type { i64, i32 }
%struct.tnum = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"misaligned %saccess off %s+%d+%d size %d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i8*, i32, i32, i32)* @check_generic_ptr_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_generic_ptr_alignment(%struct.bpf_verifier_env* %0, %struct.bpf_reg_state* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_verifier_env*, align 8
  %9 = alloca %struct.bpf_reg_state*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tnum, align 4
  %15 = alloca %struct.tnum, align 4
  %16 = alloca [48 x i8], align 16
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %8, align 8
  store %struct.bpf_reg_state* %1, %struct.bpf_reg_state** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* %12, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %6
  store i32 0, i32* %7, align 4
  br label %61

23:                                               ; preds = %19
  %24 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %25 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %28 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = call i32 @tnum_const(i64 %32)
  %34 = call i32 @tnum_add(i32 %26, i32 %33)
  %35 = getelementptr inbounds %struct.tnum, %struct.tnum* %15, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = bitcast %struct.tnum* %14 to i8*
  %37 = bitcast %struct.tnum* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = load i32, i32* %12, align 4
  %39 = getelementptr inbounds %struct.tnum, %struct.tnum* %14, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @tnum_is_aligned(i32 %40, i32 %38)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %23
  %44 = getelementptr inbounds [48 x i8], [48 x i8]* %16, i64 0, i64 0
  %45 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %46 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @tnum_strn(i8* %44, i32 48, i32 %47)
  %49 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds [48 x i8], [48 x i8]* %16, i64 0, i64 0
  %52 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %53 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @verbose(%struct.bpf_verifier_env* %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %50, i8* %51, i64 %54, i32 %55, i32 %56)
  %58 = load i32, i32* @EACCES, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %61

60:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %43, %22
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @tnum_add(i32, i32) #1

declare dso_local i32 @tnum_const(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tnum_is_aligned(i32, i32) #1

declare dso_local i32 @tnum_strn(i8*, i32, i32) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i8*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
