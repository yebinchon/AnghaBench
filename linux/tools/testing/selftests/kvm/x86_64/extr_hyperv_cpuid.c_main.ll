; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_hyperv_cpuid.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_hyperv_cpuid.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.kvm_cpuid2 = type { i32 }

@stdout = common dso_local global i32 0, align 4
@KVM_CAP_HYPERV_CPUID = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"KVM_CAP_HYPERV_CPUID not supported, skip test\0A\00", align 1
@KSFT_SKIP = common dso_local global i32 0, align 4
@VCPU_ID = common dso_local global i32 0, align 4
@guest_code = common dso_local global i32 0, align 4
@KVM_CAP_HYPERV_ENLIGHTENED_VMCS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Enlightened VMCS is unsupported, skip related test\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.kvm_vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_cpuid2*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @setbuf(i32 %9, i32* null)
  %11 = load i32, i32* @KVM_CAP_HYPERV_CPUID, align 4
  %12 = call i32 @kvm_check_cap(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @KSFT_SKIP, align 4
  %19 = call i32 @exit(i32 %18) #3
  unreachable

20:                                               ; preds = %2
  %21 = load i32, i32* @VCPU_ID, align 4
  %22 = load i32, i32* @guest_code, align 4
  %23 = call %struct.kvm_vm* @vm_create_default(i32 %21, i32 0, i32 %22)
  store %struct.kvm_vm* %23, %struct.kvm_vm** %6, align 8
  %24 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %25 = call i32 @test_hv_cpuid_e2big(%struct.kvm_vm* %24)
  %26 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %27 = call %struct.kvm_cpuid2* @kvm_get_supported_hv_cpuid(%struct.kvm_vm* %26)
  store %struct.kvm_cpuid2* %27, %struct.kvm_cpuid2** %8, align 8
  %28 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %8, align 8
  %29 = icmp ne %struct.kvm_cpuid2* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %59

31:                                               ; preds = %20
  %32 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %8, align 8
  %33 = call i32 @test_hv_cpuid(%struct.kvm_cpuid2* %32, i32 0)
  %34 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %8, align 8
  %35 = call i32 @free(%struct.kvm_cpuid2* %34)
  %36 = load i32, i32* @KVM_CAP_HYPERV_ENLIGHTENED_VMCS, align 4
  %37 = call i32 @kvm_check_cap(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %56

42:                                               ; preds = %31
  %43 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %44 = load i32, i32* @VCPU_ID, align 4
  %45 = call i32 @vcpu_enable_evmcs(%struct.kvm_vm* %43, i32 %44)
  %46 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %47 = call %struct.kvm_cpuid2* @kvm_get_supported_hv_cpuid(%struct.kvm_vm* %46)
  store %struct.kvm_cpuid2* %47, %struct.kvm_cpuid2** %8, align 8
  %48 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %8, align 8
  %49 = icmp ne %struct.kvm_cpuid2* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %59

51:                                               ; preds = %42
  %52 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %8, align 8
  %53 = call i32 @test_hv_cpuid(%struct.kvm_cpuid2* %52, i32 1)
  %54 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %8, align 8
  %55 = call i32 @free(%struct.kvm_cpuid2* %54)
  br label %56

56:                                               ; preds = %51, %39
  %57 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %58 = call i32 @kvm_vm_free(%struct.kvm_vm* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %50, %30
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i32 @kvm_check_cap(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.kvm_vm* @vm_create_default(i32, i32, i32) #1

declare dso_local i32 @test_hv_cpuid_e2big(%struct.kvm_vm*) #1

declare dso_local %struct.kvm_cpuid2* @kvm_get_supported_hv_cpuid(%struct.kvm_vm*) #1

declare dso_local i32 @test_hv_cpuid(%struct.kvm_cpuid2*, i32) #1

declare dso_local i32 @free(%struct.kvm_cpuid2*) #1

declare dso_local i32 @vcpu_enable_evmcs(%struct.kvm_vm*, i32) #1

declare dso_local i32 @kvm_vm_free(%struct.kvm_vm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
