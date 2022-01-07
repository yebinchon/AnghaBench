; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_vmx.c_init_vmcs_host_state.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_vmx.c_init_vmcs_host_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.desc64 = type { i32 }

@VM_EXIT_CONTROLS = common dso_local global i32 0, align 4
@HOST_ES_SELECTOR = common dso_local global i32 0, align 4
@HOST_CS_SELECTOR = common dso_local global i32 0, align 4
@HOST_SS_SELECTOR = common dso_local global i32 0, align 4
@HOST_DS_SELECTOR = common dso_local global i32 0, align 4
@HOST_FS_SELECTOR = common dso_local global i32 0, align 4
@HOST_GS_SELECTOR = common dso_local global i32 0, align 4
@HOST_TR_SELECTOR = common dso_local global i32 0, align 4
@VM_EXIT_LOAD_IA32_PAT = common dso_local global i32 0, align 4
@HOST_IA32_PAT = common dso_local global i32 0, align 4
@MSR_IA32_CR_PAT = common dso_local global i32 0, align 4
@VM_EXIT_LOAD_IA32_EFER = common dso_local global i32 0, align 4
@HOST_IA32_EFER = common dso_local global i32 0, align 4
@MSR_EFER = common dso_local global i32 0, align 4
@VM_EXIT_LOAD_IA32_PERF_GLOBAL_CTRL = common dso_local global i32 0, align 4
@HOST_IA32_PERF_GLOBAL_CTRL = common dso_local global i32 0, align 4
@MSR_CORE_PERF_GLOBAL_CTRL = common dso_local global i32 0, align 4
@HOST_IA32_SYSENTER_CS = common dso_local global i32 0, align 4
@MSR_IA32_SYSENTER_CS = common dso_local global i32 0, align 4
@HOST_CR0 = common dso_local global i32 0, align 4
@HOST_CR3 = common dso_local global i32 0, align 4
@HOST_CR4 = common dso_local global i32 0, align 4
@HOST_FS_BASE = common dso_local global i32 0, align 4
@MSR_FS_BASE = common dso_local global i32 0, align 4
@HOST_GS_BASE = common dso_local global i32 0, align 4
@MSR_GS_BASE = common dso_local global i32 0, align 4
@HOST_TR_BASE = common dso_local global i32 0, align 4
@HOST_GDTR_BASE = common dso_local global i32 0, align 4
@HOST_IDTR_BASE = common dso_local global i32 0, align 4
@HOST_IA32_SYSENTER_ESP = common dso_local global i32 0, align 4
@MSR_IA32_SYSENTER_ESP = common dso_local global i32 0, align 4
@HOST_IA32_SYSENTER_EIP = common dso_local global i32 0, align 4
@MSR_IA32_SYSENTER_EIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_vmcs_host_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_vmcs_host_state() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @VM_EXIT_CONTROLS, align 4
  %3 = call i32 @vmreadz(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @HOST_ES_SELECTOR, align 4
  %5 = call i64 (...) @get_es()
  %6 = call i32 @vmwrite(i32 %4, i64 %5)
  %7 = load i32, i32* @HOST_CS_SELECTOR, align 4
  %8 = call i64 (...) @get_cs()
  %9 = call i32 @vmwrite(i32 %7, i64 %8)
  %10 = load i32, i32* @HOST_SS_SELECTOR, align 4
  %11 = call i64 (...) @get_ss()
  %12 = call i32 @vmwrite(i32 %10, i64 %11)
  %13 = load i32, i32* @HOST_DS_SELECTOR, align 4
  %14 = call i64 (...) @get_ds()
  %15 = call i32 @vmwrite(i32 %13, i64 %14)
  %16 = load i32, i32* @HOST_FS_SELECTOR, align 4
  %17 = call i64 (...) @get_fs()
  %18 = call i32 @vmwrite(i32 %16, i64 %17)
  %19 = load i32, i32* @HOST_GS_SELECTOR, align 4
  %20 = call i64 (...) @get_gs()
  %21 = call i32 @vmwrite(i32 %19, i64 %20)
  %22 = load i32, i32* @HOST_TR_SELECTOR, align 4
  %23 = call i64 (...) @get_tr()
  %24 = call i32 @vmwrite(i32 %22, i64 %23)
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @VM_EXIT_LOAD_IA32_PAT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %0
  %30 = load i32, i32* @HOST_IA32_PAT, align 4
  %31 = load i32, i32* @MSR_IA32_CR_PAT, align 4
  %32 = call i64 @rdmsr(i32 %31)
  %33 = call i32 @vmwrite(i32 %30, i64 %32)
  br label %34

34:                                               ; preds = %29, %0
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @VM_EXIT_LOAD_IA32_EFER, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @HOST_IA32_EFER, align 4
  %41 = load i32, i32* @MSR_EFER, align 4
  %42 = call i64 @rdmsr(i32 %41)
  %43 = call i32 @vmwrite(i32 %40, i64 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* @VM_EXIT_LOAD_IA32_PERF_GLOBAL_CTRL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @HOST_IA32_PERF_GLOBAL_CTRL, align 4
  %51 = load i32, i32* @MSR_CORE_PERF_GLOBAL_CTRL, align 4
  %52 = call i64 @rdmsr(i32 %51)
  %53 = call i32 @vmwrite(i32 %50, i64 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* @HOST_IA32_SYSENTER_CS, align 4
  %56 = load i32, i32* @MSR_IA32_SYSENTER_CS, align 4
  %57 = call i64 @rdmsr(i32 %56)
  %58 = call i32 @vmwrite(i32 %55, i64 %57)
  %59 = load i32, i32* @HOST_CR0, align 4
  %60 = call i64 (...) @get_cr0()
  %61 = call i32 @vmwrite(i32 %59, i64 %60)
  %62 = load i32, i32* @HOST_CR3, align 4
  %63 = call i64 (...) @get_cr3()
  %64 = call i32 @vmwrite(i32 %62, i64 %63)
  %65 = load i32, i32* @HOST_CR4, align 4
  %66 = call i64 (...) @get_cr4()
  %67 = call i32 @vmwrite(i32 %65, i64 %66)
  %68 = load i32, i32* @HOST_FS_BASE, align 4
  %69 = load i32, i32* @MSR_FS_BASE, align 4
  %70 = call i64 @rdmsr(i32 %69)
  %71 = call i32 @vmwrite(i32 %68, i64 %70)
  %72 = load i32, i32* @HOST_GS_BASE, align 4
  %73 = load i32, i32* @MSR_GS_BASE, align 4
  %74 = call i64 @rdmsr(i32 %73)
  %75 = call i32 @vmwrite(i32 %72, i64 %74)
  %76 = load i32, i32* @HOST_TR_BASE, align 4
  %77 = call i64 (...) @get_gdt_base()
  %78 = call i64 (...) @get_tr()
  %79 = add nsw i64 %77, %78
  %80 = inttoptr i64 %79 to %struct.desc64*
  %81 = call i64 @get_desc64_base(%struct.desc64* %80)
  %82 = call i32 @vmwrite(i32 %76, i64 %81)
  %83 = load i32, i32* @HOST_GDTR_BASE, align 4
  %84 = call i64 (...) @get_gdt_base()
  %85 = call i32 @vmwrite(i32 %83, i64 %84)
  %86 = load i32, i32* @HOST_IDTR_BASE, align 4
  %87 = call i64 (...) @get_idt_base()
  %88 = call i32 @vmwrite(i32 %86, i64 %87)
  %89 = load i32, i32* @HOST_IA32_SYSENTER_ESP, align 4
  %90 = load i32, i32* @MSR_IA32_SYSENTER_ESP, align 4
  %91 = call i64 @rdmsr(i32 %90)
  %92 = call i32 @vmwrite(i32 %89, i64 %91)
  %93 = load i32, i32* @HOST_IA32_SYSENTER_EIP, align 4
  %94 = load i32, i32* @MSR_IA32_SYSENTER_EIP, align 4
  %95 = call i64 @rdmsr(i32 %94)
  %96 = call i32 @vmwrite(i32 %93, i64 %95)
  ret void
}

declare dso_local i32 @vmreadz(i32) #1

declare dso_local i32 @vmwrite(i32, i64) #1

declare dso_local i64 @get_es(...) #1

declare dso_local i64 @get_cs(...) #1

declare dso_local i64 @get_ss(...) #1

declare dso_local i64 @get_ds(...) #1

declare dso_local i64 @get_fs(...) #1

declare dso_local i64 @get_gs(...) #1

declare dso_local i64 @get_tr(...) #1

declare dso_local i64 @rdmsr(i32) #1

declare dso_local i64 @get_cr0(...) #1

declare dso_local i64 @get_cr3(...) #1

declare dso_local i64 @get_cr4(...) #1

declare dso_local i64 @get_desc64_base(%struct.desc64*) #1

declare dso_local i64 @get_gdt_base(...) #1

declare dso_local i64 @get_idt_base(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
