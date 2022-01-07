; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_vmx.c_init_vmcs_control_fields.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_vmx.c_init_vmcs_control_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx_pages = type { i32, i32, i32, i32 }
%struct.eptPageTablePointer = type { i32, i32, i32, i32 }

@VIRTUAL_PROCESSOR_ID = common dso_local global i32 0, align 4
@POSTED_INTR_NV = common dso_local global i32 0, align 4
@PIN_BASED_VM_EXEC_CONTROL = common dso_local global i32 0, align 4
@MSR_IA32_VMX_TRUE_PINBASED_CTLS = common dso_local global i32 0, align 4
@MSR_IA32_VMX_EPT_VPID_CAP = common dso_local global i32 0, align 4
@VMX_EPT_VPID_CAP_AD_BITS = common dso_local global i32 0, align 4
@PAGE_SHIFT_4K = common dso_local global i32 0, align 4
@VMX_BASIC_MEM_TYPE_WB = common dso_local global i32 0, align 4
@EPT_POINTER = common dso_local global i32 0, align 4
@SECONDARY_EXEC_ENABLE_EPT = common dso_local global i32 0, align 4
@SECONDARY_VM_EXEC_CONTROL = common dso_local global i32 0, align 4
@CPU_BASED_VM_EXEC_CONTROL = common dso_local global i32 0, align 4
@MSR_IA32_VMX_TRUE_PROCBASED_CTLS = common dso_local global i32 0, align 4
@CPU_BASED_ACTIVATE_SECONDARY_CONTROLS = common dso_local global i32 0, align 4
@EXCEPTION_BITMAP = common dso_local global i32 0, align 4
@PAGE_FAULT_ERROR_CODE_MASK = common dso_local global i32 0, align 4
@PAGE_FAULT_ERROR_CODE_MATCH = common dso_local global i32 0, align 4
@CR3_TARGET_COUNT = common dso_local global i32 0, align 4
@VM_EXIT_CONTROLS = common dso_local global i32 0, align 4
@MSR_IA32_VMX_EXIT_CTLS = common dso_local global i32 0, align 4
@VM_EXIT_HOST_ADDR_SPACE_SIZE = common dso_local global i32 0, align 4
@VM_EXIT_MSR_STORE_COUNT = common dso_local global i32 0, align 4
@VM_EXIT_MSR_LOAD_COUNT = common dso_local global i32 0, align 4
@VM_ENTRY_CONTROLS = common dso_local global i32 0, align 4
@MSR_IA32_VMX_ENTRY_CTLS = common dso_local global i32 0, align 4
@VM_ENTRY_IA32E_MODE = common dso_local global i32 0, align 4
@VM_ENTRY_MSR_LOAD_COUNT = common dso_local global i32 0, align 4
@VM_ENTRY_INTR_INFO_FIELD = common dso_local global i32 0, align 4
@TPR_THRESHOLD = common dso_local global i32 0, align 4
@CR0_GUEST_HOST_MASK = common dso_local global i32 0, align 4
@CR4_GUEST_HOST_MASK = common dso_local global i32 0, align 4
@CR0_READ_SHADOW = common dso_local global i32 0, align 4
@CR4_READ_SHADOW = common dso_local global i32 0, align 4
@MSR_BITMAP = common dso_local global i32 0, align 4
@VMREAD_BITMAP = common dso_local global i32 0, align 4
@VMWRITE_BITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmx_pages*)* @init_vmcs_control_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_vmcs_control_fields(%struct.vmx_pages* %0) #0 {
  %2 = alloca %struct.vmx_pages*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.eptPageTablePointer, align 4
  store %struct.vmx_pages* %0, %struct.vmx_pages** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @VIRTUAL_PROCESSOR_ID, align 4
  %7 = call i32 @vmwrite(i32 %6, i32 0)
  %8 = load i32, i32* @POSTED_INTR_NV, align 4
  %9 = call i32 @vmwrite(i32 %8, i32 0)
  %10 = load i32, i32* @PIN_BASED_VM_EXEC_CONTROL, align 4
  %11 = load i32, i32* @MSR_IA32_VMX_TRUE_PINBASED_CTLS, align 4
  %12 = call i32 @rdmsr(i32 %11)
  %13 = call i32 @vmwrite(i32 %10, i32 %12)
  %14 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %15 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.eptPageTablePointer, %struct.eptPageTablePointer* %5, i32 0, i32 0
  store i32 3, i32* %19, align 4
  %20 = getelementptr inbounds %struct.eptPageTablePointer, %struct.eptPageTablePointer* %5, i32 0, i32 1
  %21 = load i32, i32* @MSR_IA32_VMX_EPT_VPID_CAP, align 4
  %22 = call i32 @rdmsr(i32 %21)
  %23 = load i32, i32* @VMX_EPT_VPID_CAP_AD_BITS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %20, align 4
  %29 = getelementptr inbounds %struct.eptPageTablePointer, %struct.eptPageTablePointer* %5, i32 0, i32 2
  %30 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %31 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PAGE_SHIFT_4K, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %29, align 4
  %35 = getelementptr inbounds %struct.eptPageTablePointer, %struct.eptPageTablePointer* %5, i32 0, i32 3
  %36 = load i32, i32* @VMX_BASIC_MEM_TYPE_WB, align 4
  store i32 %36, i32* %35, align 4
  %37 = call i32 @memcpy(i32* %4, %struct.eptPageTablePointer* %5, i32 4)
  %38 = load i32, i32* @EPT_POINTER, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @vmwrite(i32 %38, i32 %39)
  %41 = load i32, i32* @SECONDARY_EXEC_ENABLE_EPT, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %18, %1
  %45 = load i32, i32* @SECONDARY_VM_EXEC_CONTROL, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @vmwrite(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @CPU_BASED_VM_EXEC_CONTROL, align 4
  %51 = load i32, i32* @MSR_IA32_VMX_TRUE_PROCBASED_CTLS, align 4
  %52 = call i32 @rdmsr(i32 %51)
  %53 = load i32, i32* @CPU_BASED_ACTIVATE_SECONDARY_CONTROLS, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @vmwrite(i32 %50, i32 %54)
  br label %66

56:                                               ; preds = %44
  %57 = load i32, i32* @CPU_BASED_VM_EXEC_CONTROL, align 4
  %58 = load i32, i32* @MSR_IA32_VMX_TRUE_PROCBASED_CTLS, align 4
  %59 = call i32 @rdmsr(i32 %58)
  %60 = call i32 @vmwrite(i32 %57, i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @GUEST_ASSERT(i32 %64)
  br label %66

66:                                               ; preds = %56, %49
  %67 = load i32, i32* @EXCEPTION_BITMAP, align 4
  %68 = call i32 @vmwrite(i32 %67, i32 0)
  %69 = load i32, i32* @PAGE_FAULT_ERROR_CODE_MASK, align 4
  %70 = call i32 @vmwrite(i32 %69, i32 0)
  %71 = load i32, i32* @PAGE_FAULT_ERROR_CODE_MATCH, align 4
  %72 = call i32 @vmwrite(i32 %71, i32 -1)
  %73 = load i32, i32* @CR3_TARGET_COUNT, align 4
  %74 = call i32 @vmwrite(i32 %73, i32 0)
  %75 = load i32, i32* @VM_EXIT_CONTROLS, align 4
  %76 = load i32, i32* @MSR_IA32_VMX_EXIT_CTLS, align 4
  %77 = call i32 @rdmsr(i32 %76)
  %78 = load i32, i32* @VM_EXIT_HOST_ADDR_SPACE_SIZE, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @vmwrite(i32 %75, i32 %79)
  %81 = load i32, i32* @VM_EXIT_MSR_STORE_COUNT, align 4
  %82 = call i32 @vmwrite(i32 %81, i32 0)
  %83 = load i32, i32* @VM_EXIT_MSR_LOAD_COUNT, align 4
  %84 = call i32 @vmwrite(i32 %83, i32 0)
  %85 = load i32, i32* @VM_ENTRY_CONTROLS, align 4
  %86 = load i32, i32* @MSR_IA32_VMX_ENTRY_CTLS, align 4
  %87 = call i32 @rdmsr(i32 %86)
  %88 = load i32, i32* @VM_ENTRY_IA32E_MODE, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @vmwrite(i32 %85, i32 %89)
  %91 = load i32, i32* @VM_ENTRY_MSR_LOAD_COUNT, align 4
  %92 = call i32 @vmwrite(i32 %91, i32 0)
  %93 = load i32, i32* @VM_ENTRY_INTR_INFO_FIELD, align 4
  %94 = call i32 @vmwrite(i32 %93, i32 0)
  %95 = load i32, i32* @TPR_THRESHOLD, align 4
  %96 = call i32 @vmwrite(i32 %95, i32 0)
  %97 = load i32, i32* @CR0_GUEST_HOST_MASK, align 4
  %98 = call i32 @vmwrite(i32 %97, i32 0)
  %99 = load i32, i32* @CR4_GUEST_HOST_MASK, align 4
  %100 = call i32 @vmwrite(i32 %99, i32 0)
  %101 = load i32, i32* @CR0_READ_SHADOW, align 4
  %102 = call i32 (...) @get_cr0()
  %103 = call i32 @vmwrite(i32 %101, i32 %102)
  %104 = load i32, i32* @CR4_READ_SHADOW, align 4
  %105 = call i32 (...) @get_cr4()
  %106 = call i32 @vmwrite(i32 %104, i32 %105)
  %107 = load i32, i32* @MSR_BITMAP, align 4
  %108 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %109 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @vmwrite(i32 %107, i32 %110)
  %112 = load i32, i32* @VMREAD_BITMAP, align 4
  %113 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %114 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @vmwrite(i32 %112, i32 %115)
  %117 = load i32, i32* @VMWRITE_BITMAP, align 4
  %118 = load %struct.vmx_pages*, %struct.vmx_pages** %2, align 8
  %119 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @vmwrite(i32 %117, i32 %120)
  ret void
}

declare dso_local i32 @vmwrite(i32, i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.eptPageTablePointer*, i32) #1

declare dso_local i32 @GUEST_ASSERT(i32) #1

declare dso_local i32 @get_cr0(...) #1

declare dso_local i32 @get_cr4(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
