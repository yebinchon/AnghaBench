; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_pkt_ptr_alignment.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_pkt_ptr_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_reg_state = type { i64, i32 }
%struct.tnum = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"misaligned packet access off %d+%s+%d+%d size %d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32, i32, i32)* @check_pkt_ptr_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pkt_ptr_alignment(%struct.bpf_verifier_env* %0, %struct.bpf_reg_state* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_verifier_env*, align 8
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tnum, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tnum, align 4
  %15 = alloca [48 x i8], align 16
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %7, align 8
  store %struct.bpf_reg_state* %1, %struct.bpf_reg_state** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %5
  store i32 0, i32* %6, align 4
  br label %63

22:                                               ; preds = %18
  store i32 2, i32* %13, align 4
  %23 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %24 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %29 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = call i32 @tnum_const(i64 %34)
  %36 = call i32 @tnum_add(i32 %25, i32 %35)
  %37 = getelementptr inbounds %struct.tnum, %struct.tnum* %14, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.tnum* %12 to i8*
  %39 = bitcast %struct.tnum* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load i32, i32* %10, align 4
  %41 = getelementptr inbounds %struct.tnum, %struct.tnum* %12, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @tnum_is_aligned(i32 %42, i32 %40)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %22
  %46 = getelementptr inbounds [48 x i8], [48 x i8]* %15, i64 0, i64 0
  %47 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %48 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @tnum_strn(i8* %46, i32 48, i32 %49)
  %51 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %52 = load i32, i32* %13, align 4
  %53 = getelementptr inbounds [48 x i8], [48 x i8]* %15, i64 0, i64 0
  %54 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %55 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @verbose(%struct.bpf_verifier_env* %51, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %52, i8* %53, i64 %56, i32 %57, i32 %58)
  %60 = load i32, i32* @EACCES, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %63

62:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %45, %21
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @tnum_add(i32, i32) #1

declare dso_local i32 @tnum_const(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tnum_is_aligned(i32, i32) #1

declare dso_local i32 @tnum_strn(i8*, i32, i32) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i32, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
