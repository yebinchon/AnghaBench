; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_set_sregs_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_set_sregs_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_sregs = type { i32 }
%struct.kvm_vm = type { i32 }

@stdout = common dso_local global i32 0, align 4
@VCPU_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Set IA32_APIC_BASE to %llx (invalid)\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Couldn't set IA32_APIC_BASE to %llx (valid)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.kvm_sregs, align 4
  %7 = alloca %struct.kvm_vm*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @setbuf(i32 %9, i32* null)
  %11 = load i32, i32* @VCPU_ID, align 4
  %12 = call %struct.kvm_vm* @vm_create_default(i32 %11, i32 0, i32* null)
  store %struct.kvm_vm* %12, %struct.kvm_vm** %7, align 8
  %13 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %14 = load i32, i32* @VCPU_ID, align 4
  %15 = call i32 @vcpu_sregs_get(%struct.kvm_vm* %13, i32 %14, %struct.kvm_sregs* %6)
  %16 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %6, i32 0, i32 0
  store i32 1024, i32* %16, align 4
  %17 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %18 = load i32, i32* @VCPU_ID, align 4
  %19 = call i32 @_vcpu_sregs_set(%struct.kvm_vm* %17, i32 %18, %struct.kvm_sregs* %6)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @TEST_ASSERT(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %6, i32 0, i32 0
  store i32 2048, i32* %24, align 4
  %25 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %26 = load i32, i32* @VCPU_ID, align 4
  %27 = call i32 @_vcpu_sregs_set(%struct.kvm_vm* %25, i32 %26, %struct.kvm_sregs* %6)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @TEST_ASSERT(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %36 = call i32 @kvm_vm_free(%struct.kvm_vm* %35)
  ret i32 0
}

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local %struct.kvm_vm* @vm_create_default(i32, i32, i32*) #1

declare dso_local i32 @vcpu_sregs_get(%struct.kvm_vm*, i32, %struct.kvm_sregs*) #1

declare dso_local i32 @_vcpu_sregs_set(%struct.kvm_vm*, i32, %struct.kvm_sregs*) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32) #1

declare dso_local i32 @kvm_vm_free(%struct.kvm_vm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
