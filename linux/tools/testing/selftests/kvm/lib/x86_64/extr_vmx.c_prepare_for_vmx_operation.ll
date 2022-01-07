; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_vmx.c_prepare_for_vmx_operation.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_vmx.c_prepare_for_vmx_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx_pages = type { i32, i64 }

@MSR_IA32_VMX_CR0_FIXED1 = common dso_local global i32 0, align 4
@MSR_IA32_VMX_CR0_FIXED0 = common dso_local global i32 0, align 4
@MSR_IA32_VMX_CR4_FIXED1 = common dso_local global i32 0, align 4
@MSR_IA32_VMX_CR4_FIXED0 = common dso_local global i32 0, align 4
@X86_CR4_VMXE = common dso_local global i64 0, align 8
@FEATURE_CONTROL_VMXON_ENABLED_OUTSIDE_SMX = common dso_local global i32 0, align 4
@FEATURE_CONTROL_LOCKED = common dso_local global i32 0, align 4
@MSR_IA32_FEATURE_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_for_vmx_operation(%struct.vmx_pages* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmx_pages*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.vmx_pages* %0, %struct.vmx_pages** %3, align 8
  %8 = call i64 asm sideeffect "mov %cr0, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %8, i64* %6, align 8
  %9 = load i32, i32* @MSR_IA32_VMX_CR0_FIXED1, align 4
  %10 = call i64 @rdmsr(i32 %9)
  %11 = load i64, i64* %6, align 8
  %12 = and i64 %11, %10
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* @MSR_IA32_VMX_CR0_FIXED0, align 4
  %14 = call i64 @rdmsr(i32 %13)
  %15 = load i64, i64* %6, align 8
  %16 = or i64 %15, %14
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  call void asm sideeffect "mov $0, %cr0", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %17) #2, !srcloc !3
  %18 = call i64 asm sideeffect "mov %cr4, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* @MSR_IA32_VMX_CR4_FIXED1, align 4
  %20 = call i64 @rdmsr(i32 %19)
  %21 = load i64, i64* %7, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* @MSR_IA32_VMX_CR4_FIXED0, align 4
  %24 = call i64 @rdmsr(i32 %23)
  %25 = load i64, i64* %7, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* @X86_CR4_VMXE, align 8
  %28 = load i64, i64* %7, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  call void asm sideeffect "mov $0, %cr4", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %30) #2, !srcloc !5
  %31 = load i32, i32* @FEATURE_CONTROL_VMXON_ENABLED_OUTSIDE_SMX, align 4
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @FEATURE_CONTROL_LOCKED, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @MSR_IA32_FEATURE_CONTROL, align 4
  %36 = call i64 @rdmsr(i32 %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %1
  %44 = load i32, i32* @MSR_IA32_FEATURE_CONTROL, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @wrmsr(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %1
  %50 = call i32 (...) @vmcs_revision()
  %51 = load %struct.vmx_pages*, %struct.vmx_pages** %3, align 8
  %52 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  store i32 %50, i32* %54, align 4
  %55 = load %struct.vmx_pages*, %struct.vmx_pages** %3, align 8
  %56 = getelementptr inbounds %struct.vmx_pages, %struct.vmx_pages* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @vmxon(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %62

61:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @rdmsr(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @vmcs_revision(...) #1

declare dso_local i64 @vmxon(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 784}
!3 = !{i32 929}
!4 = !{i32 994}
!5 = !{i32 1162}
