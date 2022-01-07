; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_ptr_check_member.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_ptr_check_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32 }
%struct.btf_member = type { i32 }
%struct.btf_type = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Member is not byte aligned\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Member exceeds struct_size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.btf_type*, %struct.btf_member*, %struct.btf_type*)* @btf_ptr_check_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_ptr_check_member(%struct.btf_verifier_env* %0, %struct.btf_type* %1, %struct.btf_member* %2, %struct.btf_type* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btf_verifier_env*, align 8
  %7 = alloca %struct.btf_type*, align 8
  %8 = alloca %struct.btf_member*, align 8
  %9 = alloca %struct.btf_type*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %6, align 8
  store %struct.btf_type* %1, %struct.btf_type** %7, align 8
  store %struct.btf_member* %2, %struct.btf_member** %8, align 8
  store %struct.btf_type* %3, %struct.btf_type** %9, align 8
  %13 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %14 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %17 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @BITS_ROUNDDOWN_BYTES(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i64 @BITS_PER_BYTE_MASKED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %6, align 8
  %26 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %27 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %28 = call i32 @btf_verifier_log_member(%struct.btf_verifier_env* %25, %struct.btf_type* %26, %struct.btf_member* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %45

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %12, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %35, 8
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %6, align 8
  %39 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %40 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %41 = call i32 @btf_verifier_log_member(%struct.btf_verifier_env* %38, %struct.btf_type* %39, %struct.btf_member* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %37, %24
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @BITS_ROUNDDOWN_BYTES(i32) #1

declare dso_local i64 @BITS_PER_BYTE_MASKED(i32) #1

declare dso_local i32 @btf_verifier_log_member(%struct.btf_verifier_env*, %struct.btf_type*, %struct.btf_member*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
