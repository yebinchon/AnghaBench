; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_platform_info_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_platform_info_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }

@stdout = common dso_local global i32 0, align 4
@KVM_CAP_MSR_PLATFORM_INFO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"KVM_CAP_MSR_PLATFORM_INFO not supported, skip test\0A\00", align 1
@KSFT_SKIP = common dso_local global i32 0, align 4
@VCPU_ID = common dso_local global i32 0, align 4
@guest_code = common dso_local global i32 0, align 4
@MSR_PLATFORM_INFO = common dso_local global i32 0, align 4
@MSR_PLATFORM_INFO_MAX_TURBO_RATIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.kvm_vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @setbuf(i32 %9, i32* null)
  %11 = load i32, i32* @KVM_CAP_MSR_PLATFORM_INFO, align 4
  %12 = call i32 @kvm_check_cap(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @KSFT_SKIP, align 4
  %19 = call i32 @exit(i32 %18) #3
  unreachable

20:                                               ; preds = %2
  %21 = load i32, i32* @VCPU_ID, align 4
  %22 = load i32, i32* @guest_code, align 4
  %23 = call %struct.kvm_vm* @vm_create_default(i32 %21, i32 0, i32 %22)
  store %struct.kvm_vm* %23, %struct.kvm_vm** %6, align 8
  %24 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %25 = load i32, i32* @VCPU_ID, align 4
  %26 = load i32, i32* @MSR_PLATFORM_INFO, align 4
  %27 = call i32 @vcpu_get_msr(%struct.kvm_vm* %24, i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %29 = load i32, i32* @VCPU_ID, align 4
  %30 = load i32, i32* @MSR_PLATFORM_INFO, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @MSR_PLATFORM_INFO_MAX_TURBO_RATIO, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @vcpu_set_msr(%struct.kvm_vm* %28, i32 %29, i32 %30, i32 %33)
  %35 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %36 = call i32 @test_msr_platform_info_enabled(%struct.kvm_vm* %35)
  %37 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %38 = call i32 @test_msr_platform_info_disabled(%struct.kvm_vm* %37)
  %39 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %40 = load i32, i32* @VCPU_ID, align 4
  %41 = load i32, i32* @MSR_PLATFORM_INFO, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @vcpu_set_msr(%struct.kvm_vm* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %45 = call i32 @kvm_vm_free(%struct.kvm_vm* %44)
  ret i32 0
}

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i32 @kvm_check_cap(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.kvm_vm* @vm_create_default(i32, i32, i32) #1

declare dso_local i32 @vcpu_get_msr(%struct.kvm_vm*, i32, i32) #1

declare dso_local i32 @vcpu_set_msr(%struct.kvm_vm*, i32, i32, i32) #1

declare dso_local i32 @test_msr_platform_info_enabled(%struct.kvm_vm*) #1

declare dso_local i32 @test_msr_platform_info_disabled(%struct.kvm_vm*) #1

declare dso_local i32 @kvm_vm_free(%struct.kvm_vm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
