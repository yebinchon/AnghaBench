; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_hyperv_cpuid.c_kvm_get_supported_hv_cpuid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_hyperv_cpuid.c_kvm_get_supported_hv_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_cpuid2 = type { i32 }
%struct.kvm_vm = type { i32 }

@kvm_get_supported_hv_cpuid.cpuid = internal global %struct.kvm_cpuid2* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@VCPU_ID = common dso_local global i32 0, align 4
@KVM_GET_SUPPORTED_HV_CPUID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm_cpuid2* @kvm_get_supported_hv_cpuid(%struct.kvm_vm* %0) #0 {
  %2 = alloca %struct.kvm_vm*, align 8
  %3 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %2, align 8
  store i32 20, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = add i64 4, %6
  %8 = trunc i64 %7 to i32
  %9 = call %struct.kvm_cpuid2* @malloc(i32 %8)
  store %struct.kvm_cpuid2* %9, %struct.kvm_cpuid2** @kvm_get_supported_hv_cpuid.cpuid, align 8
  %10 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** @kvm_get_supported_hv_cpuid.cpuid, align 8
  %11 = icmp ne %struct.kvm_cpuid2* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (...) @abort() #3
  unreachable

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** @kvm_get_supported_hv_cpuid.cpuid, align 8
  %18 = getelementptr inbounds %struct.kvm_cpuid2, %struct.kvm_cpuid2* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %20 = load i32, i32* @VCPU_ID, align 4
  %21 = load i32, i32* @KVM_GET_SUPPORTED_HV_CPUID, align 4
  %22 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** @kvm_get_supported_hv_cpuid.cpuid, align 8
  %23 = call i32 @vcpu_ioctl(%struct.kvm_vm* %19, i32 %20, i32 %21, %struct.kvm_cpuid2* %22)
  %24 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** @kvm_get_supported_hv_cpuid.cpuid, align 8
  ret %struct.kvm_cpuid2* %24
}

declare dso_local %struct.kvm_cpuid2* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @vcpu_ioctl(%struct.kvm_vm*, i32, i32, %struct.kvm_cpuid2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
