; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/s390x/extr_processor.c_vm_vcpu_add_default.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/s390x/extr_processor.c_vm_vcpu_add_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32, i32 }
%struct.kvm_regs = type { i64* }
%struct.kvm_sregs = type { i32* }
%struct.kvm_run = type { i32, i64 }

@DEFAULT_STACK_PGS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unsupported page size: 0x%x\00", align 1
@DEFAULT_GUEST_STACK_VADDR_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_vcpu_add_default(%struct.kvm_vm* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.kvm_vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.kvm_regs, align 8
  %10 = alloca %struct.kvm_sregs, align 8
  %11 = alloca %struct.kvm_run*, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i64, i64* @DEFAULT_STACK_PGS, align 8
  %13 = call i64 (...) @getpagesize()
  %14 = mul i64 %12, %13
  store i64 %14, i64* %7, align 8
  %15 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 4096
  %19 = zext i1 %18 to i32
  %20 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @TEST_ASSERT(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* @DEFAULT_GUEST_STACK_VADDR_MIN, align 4
  %27 = call i64 @vm_vaddr_alloc(%struct.kvm_vm* %24, i64 %25, i32 %26, i32 0, i32 0)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @vm_vcpu_add(%struct.kvm_vm* %28, i32 %29)
  %31 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @vcpu_regs_get(%struct.kvm_vm* %31, i32 %32, %struct.kvm_regs* %9)
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @DEFAULT_STACK_PGS, align 8
  %36 = call i64 (...) @getpagesize()
  %37 = mul i64 %35, %36
  %38 = add i64 %34, %37
  %39 = sub i64 %38, 160
  %40 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %9, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 15
  store i64 %39, i64* %42, align 8
  %43 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @vcpu_regs_set(%struct.kvm_vm* %43, i32 %44, %struct.kvm_regs* %9)
  %46 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @vcpu_sregs_get(%struct.kvm_vm* %46, i32 %47, %struct.kvm_sregs* %10)
  %49 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %10, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, 262144
  store i32 %53, i32* %51, align 4
  %54 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %55 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, 15
  %58 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %10, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @vcpu_sregs_set(%struct.kvm_vm* %61, i32 %62, %struct.kvm_sregs* %10)
  %64 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call %struct.kvm_run* @vcpu_state(%struct.kvm_vm* %64, i32 %65)
  store %struct.kvm_run* %66, %struct.kvm_run** %11, align 8
  %67 = load %struct.kvm_run*, %struct.kvm_run** %11, align 8
  %68 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %67, i32 0, i32 0
  store i32 -2147483648, i32* %68, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.kvm_run*, %struct.kvm_run** %11, align 8
  %72 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  ret void
}

declare dso_local i64 @getpagesize(...) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32) #1

declare dso_local i64 @vm_vaddr_alloc(%struct.kvm_vm*, i64, i32, i32, i32) #1

declare dso_local i32 @vm_vcpu_add(%struct.kvm_vm*, i32) #1

declare dso_local i32 @vcpu_regs_get(%struct.kvm_vm*, i32, %struct.kvm_regs*) #1

declare dso_local i32 @vcpu_regs_set(%struct.kvm_vm*, i32, %struct.kvm_regs*) #1

declare dso_local i32 @vcpu_sregs_get(%struct.kvm_vm*, i32, %struct.kvm_sregs*) #1

declare dso_local i32 @vcpu_sregs_set(%struct.kvm_vm*, i32, %struct.kvm_sregs*) #1

declare dso_local %struct.kvm_run* @vcpu_state(%struct.kvm_vm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
