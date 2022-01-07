; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/s390x/extr_processor.c_vm_create_default.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/s390x/extr_processor.c_vm_create_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }

@VM_MODE_DEFAULT = common dso_local global i32 0, align 4
@DEFAULT_GUEST_PHY_PAGES = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@program_invocation_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm_vm* @vm_create_default(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_vm*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sdiv i32 %9, 256
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @VM_MODE_DEFAULT, align 4
  %13 = load i32, i32* @DEFAULT_GUEST_PHY_PAGES, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %13, %14
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = call %struct.kvm_vm* @vm_create(i32 %12, i32 %15, i32 %16)
  store %struct.kvm_vm* %17, %struct.kvm_vm** %8, align 8
  %18 = load %struct.kvm_vm*, %struct.kvm_vm** %8, align 8
  %19 = load i32, i32* @program_invocation_name, align 4
  %20 = call i32 @kvm_vm_elf_load(%struct.kvm_vm* %18, i32 %19, i32 0, i32 0)
  %21 = load %struct.kvm_vm*, %struct.kvm_vm** %8, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @vm_vcpu_add_default(%struct.kvm_vm* %21, i32 %22, i8* %23)
  %25 = load %struct.kvm_vm*, %struct.kvm_vm** %8, align 8
  ret %struct.kvm_vm* %25
}

declare dso_local %struct.kvm_vm* @vm_create(i32, i32, i32) #1

declare dso_local i32 @kvm_vm_elf_load(%struct.kvm_vm*, i32, i32, i32) #1

declare dso_local i32 @vm_vcpu_add_default(%struct.kvm_vm*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
