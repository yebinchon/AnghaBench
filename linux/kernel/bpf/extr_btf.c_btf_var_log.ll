; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_var_log.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_var_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32 }
%struct.btf_type = type { i32 }
%struct.btf_var = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"type_id=%u linkage=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btf_verifier_env*, %struct.btf_type*)* @btf_var_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btf_var_log(%struct.btf_verifier_env* %0, %struct.btf_type* %1) #0 {
  %3 = alloca %struct.btf_verifier_env*, align 8
  %4 = alloca %struct.btf_type*, align 8
  %5 = alloca %struct.btf_var*, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %3, align 8
  store %struct.btf_type* %1, %struct.btf_type** %4, align 8
  %6 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %7 = call %struct.btf_var* @btf_type_var(%struct.btf_type* %6)
  store %struct.btf_var* %7, %struct.btf_var** %5, align 8
  %8 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %9 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %10 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.btf_var*, %struct.btf_var** %5, align 8
  %13 = getelementptr inbounds %struct.btf_var, %struct.btf_var* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @btf_verifier_log(%struct.btf_verifier_env* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  ret void
}

declare dso_local %struct.btf_var* @btf_type_var(%struct.btf_type*) #1

declare dso_local i32 @btf_verifier_log(%struct.btf_verifier_env*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
