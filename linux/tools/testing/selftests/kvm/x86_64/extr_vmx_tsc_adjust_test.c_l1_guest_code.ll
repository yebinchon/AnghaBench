; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_tsc_adjust_test.c_l1_guest_code.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_tsc_adjust_test.c_l1_guest_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx_pages = type { i32 }

@TSC_ADJUST_VALUE = common dso_local global i32 0, align 4
@MSR_IA32_TSC = common dso_local global i32 0, align 4
@l2_guest_code = common dso_local global i32 0, align 4
@CPU_BASED_VM_EXEC_CONTROL = common dso_local global i32 0, align 4
@CPU_BASED_USE_MSR_BITMAPS = common dso_local global i64 0, align 8
@CPU_BASED_USE_TSC_OFFSETING = common dso_local global i64 0, align 8
@TSC_OFFSET = common dso_local global i32 0, align 4
@TSC_OFFSET_VALUE = common dso_local global i64 0, align 8
@GUEST_CR3 = common dso_local global i32 0, align 4
@VM_EXIT_REASON = common dso_local global i32 0, align 4
@EXIT_REASON_FAILED_VMENTRY = common dso_local global i64 0, align 8
@EXIT_REASON_INVALID_STATE = common dso_local global i64 0, align 8
@EXIT_REASON_VMCALL = common dso_local global i64 0, align 8
@L2_GUEST_STACK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmx_pages*)* @l1_guest_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l1_guest_code(%struct.vmx_pages* %0) #0 {
  %2 = alloca %struct.vmx_pages*, align 8
  %3 = alloca [64 x i64], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.vmx_pages* %0, %struct.vmx_pages** %2, align 8
  %6 = call i32 (...) @rdtsc()
  %7 = load i32, i32* @TSC_ADJUST_VALUE, align 4
  %8 = icmp slt i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @GUEST_ASSERT(i32 %9)
  %11 = load i32, i32* @MSR_IA32_TSC, align 4
  %12 = call i32 (...) @rdtsc()
  %13 = load i32, i32* @TSC_ADJUST_VALUE, align 4
  %14 = sub nsw i32 %12, %13
  %15 = call i32 @wrmsr(i32 %11, i32 %14)
  %16 = load i32, i32* @TSC_ADJUST_VALUE, align 4
  %17 = mul nsw i32 -1, %16
  %18 = call i32 @check_ia32_tsc_adjust(i32 %17)
  %19 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %20 = call i32 @prepare_for_vmx_operation(%struct.vmx_pages* %19)
  %21 = call i32 @GUEST_ASSERT(i32 %20)
  %22 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %23 = call i32 @load_vmcs(%struct.vmx_pages* %22)
  %24 = call i32 @GUEST_ASSERT(i32 %23)
  %25 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %26 = load i32, i32* @l2_guest_code, align 4
  %27 = getelementptr inbounds [64 x i64], [64 x i64]* %3, i64 0, i64 64
  %28 = call i32 @prepare_vmcs(%struct.vmx_pages* %25, i32 %26, i64* %27)
  %29 = load i32, i32* @CPU_BASED_VM_EXEC_CONTROL, align 4
  %30 = call i64 @vmreadz(i32 %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* @CPU_BASED_USE_MSR_BITMAPS, align 8
  %32 = load i64, i64* @CPU_BASED_USE_TSC_OFFSETING, align 8
  %33 = or i64 %31, %32
  %34 = load i64, i64* %4, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %4, align 8
  %36 = load i32, i32* @CPU_BASED_VM_EXEC_CONTROL, align 4
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @vmwrite(i32 %36, i64 %37)
  %39 = load i32, i32* @TSC_OFFSET, align 4
  %40 = load i64, i64* @TSC_OFFSET_VALUE, align 8
  %41 = call i32 @vmwrite(i32 %39, i64 %40)
  %42 = load i32, i32* @GUEST_CR3, align 4
  %43 = call i64 @vmreadz(i32 %42)
  store i64 %43, i64* %5, align 8
  %44 = load i32, i32* @GUEST_CR3, align 4
  %45 = call i32 @vmwrite(i32 %44, i64 -1)
  %46 = call i32 (...) @vmlaunch()
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @GUEST_ASSERT(i32 %49)
  %51 = load i32, i32* @VM_EXIT_REASON, align 4
  %52 = call i64 @vmreadz(i32 %51)
  %53 = load i64, i64* @EXIT_REASON_FAILED_VMENTRY, align 8
  %54 = load i64, i64* @EXIT_REASON_INVALID_STATE, align 8
  %55 = or i64 %53, %54
  %56 = icmp eq i64 %52, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @GUEST_ASSERT(i32 %57)
  %59 = load i32, i32* @TSC_ADJUST_VALUE, align 4
  %60 = mul nsw i32 -1, %59
  %61 = call i32 @check_ia32_tsc_adjust(i32 %60)
  %62 = load i32, i32* @GUEST_CR3, align 4
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @vmwrite(i32 %62, i64 %63)
  %65 = call i32 (...) @vmlaunch()
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @GUEST_ASSERT(i32 %68)
  %70 = load i32, i32* @VM_EXIT_REASON, align 4
  %71 = call i64 @vmreadz(i32 %70)
  %72 = load i64, i64* @EXIT_REASON_VMCALL, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @GUEST_ASSERT(i32 %74)
  %76 = load i32, i32* @TSC_ADJUST_VALUE, align 4
  %77 = mul nsw i32 -2, %76
  %78 = call i32 @check_ia32_tsc_adjust(i32 %77)
  %79 = call i32 (...) @GUEST_DONE()
  ret void
}

declare dso_local i32 @GUEST_ASSERT(i32) #1

declare dso_local i32 @rdtsc(...) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @check_ia32_tsc_adjust(i32) #1

declare dso_local i32 @prepare_for_vmx_operation(%struct.vmx_pages*) #1

declare dso_local i32 @load_vmcs(%struct.vmx_pages*) #1

declare dso_local i32 @prepare_vmcs(%struct.vmx_pages*, i32, i64*) #1

declare dso_local i64 @vmreadz(i32) #1

declare dso_local i32 @vmwrite(i32, i64) #1

declare dso_local i32 @vmlaunch(...) #1

declare dso_local i32 @GUEST_DONE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
