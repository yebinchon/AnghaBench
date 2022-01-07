; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_df_check_member.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_df_check_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32 }
%struct.btf_member = type { i32 }
%struct.btf_type = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Unsupported check_member\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.btf_type*, %struct.btf_member*, %struct.btf_type*)* @btf_df_check_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_df_check_member(%struct.btf_verifier_env* %0, %struct.btf_type* %1, %struct.btf_member* %2, %struct.btf_type* %3) #0 {
  %5 = alloca %struct.btf_verifier_env*, align 8
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca %struct.btf_member*, align 8
  %8 = alloca %struct.btf_type*, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %5, align 8
  store %struct.btf_type* %1, %struct.btf_type** %6, align 8
  store %struct.btf_member* %2, %struct.btf_member** %7, align 8
  store %struct.btf_type* %3, %struct.btf_type** %8, align 8
  %9 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %10 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %11 = call i32 @btf_verifier_log_basic(%struct.btf_verifier_env* %9, %struct.btf_type* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  ret i32 %13
}

declare dso_local i32 @btf_verifier_log_basic(%struct.btf_verifier_env*, %struct.btf_type*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
