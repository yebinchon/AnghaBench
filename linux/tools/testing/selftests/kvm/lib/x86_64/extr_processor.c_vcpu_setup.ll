; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_vcpu_setup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_vcpu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32, i32 }
%struct.kvm_sregs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@X86_CR0_PE = common dso_local global i32 0, align 4
@X86_CR0_NE = common dso_local global i32 0, align 4
@X86_CR0_PG = common dso_local global i32 0, align 4
@X86_CR4_PAE = common dso_local global i32 0, align 4
@X86_CR4_OSFXSR = common dso_local global i32 0, align 4
@EFER_LME = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@EFER_NX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unknown guest mode, mode: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vm*, i32, i32, i32)* @vcpu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcpu_setup(%struct.kvm_vm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_vm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_sregs, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @vcpu_sregs_get(%struct.kvm_vm* %10, i32 %11, %struct.kvm_sregs* %9)
  %13 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %9, i32 0, i32 10
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %9, i32 0, i32 9
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @kvm_setup_gdt(%struct.kvm_vm* %15, i32* %16, i32 %17, i32 %18)
  %20 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %60 [
    i32 128, label %23
  ]

23:                                               ; preds = %4
  %24 = load i32, i32* @X86_CR0_PE, align 4
  %25 = load i32, i32* @X86_CR0_NE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @X86_CR0_PG, align 4
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %9, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @X86_CR4_PAE, align 4
  %31 = load i32, i32* @X86_CR4_OSFXSR, align 4
  %32 = or i32 %30, %31
  %33 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %9, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @EFER_LME, align 4
  %37 = load i32, i32* @EFER_LMA, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @EFER_NX, align 4
  %40 = or i32 %38, %39
  %41 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %9, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 8
  %44 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %9, i32 0, i32 8
  %45 = call i32 @kvm_seg_set_unusable(i32* %44)
  %46 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %47 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %9, i32 0, i32 7
  %48 = call i32 @kvm_seg_set_kernel_code_64bit(%struct.kvm_vm* %46, i32 8, i32* %47)
  %49 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %50 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %9, i32 0, i32 6
  %51 = call i32 @kvm_seg_set_kernel_data_64bit(%struct.kvm_vm* %49, i32 16, i32* %50)
  %52 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %53 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %9, i32 0, i32 5
  %54 = call i32 @kvm_seg_set_kernel_data_64bit(%struct.kvm_vm* %52, i32 16, i32* %53)
  %55 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %56 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %9, i32 0, i32 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @kvm_setup_tss_64bit(%struct.kvm_vm* %55, i32* %56, i32 24, i32 %57, i32 %58)
  br label %65

60:                                               ; preds = %4
  %61 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %62 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @TEST_ASSERT(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %23
  %66 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %67 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %9, i32 0, i32 3
  store i32 %68, i32* %69, align 4
  %70 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @vcpu_sregs_set(%struct.kvm_vm* %70, i32 %71, %struct.kvm_sregs* %9)
  ret void
}

declare dso_local i32 @vcpu_sregs_get(%struct.kvm_vm*, i32, %struct.kvm_sregs*) #1

declare dso_local i32 @kvm_setup_gdt(%struct.kvm_vm*, i32*, i32, i32) #1

declare dso_local i32 @kvm_seg_set_unusable(i32*) #1

declare dso_local i32 @kvm_seg_set_kernel_code_64bit(%struct.kvm_vm*, i32, i32*) #1

declare dso_local i32 @kvm_seg_set_kernel_data_64bit(%struct.kvm_vm*, i32, i32*) #1

declare dso_local i32 @kvm_setup_tss_64bit(%struct.kvm_vm*, i32*, i32, i32, i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32) #1

declare dso_local i32 @vcpu_sregs_set(%struct.kvm_vm*, i32, %struct.kvm_sregs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
