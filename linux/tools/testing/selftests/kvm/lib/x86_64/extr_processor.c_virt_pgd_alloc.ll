; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_virt_pgd_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_virt_pgd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i64, i32, i32 }

@VM_MODE_PXXV48_4K = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"Attempt to use unknown or unsupported guest mode, mode: 0x%x\00", align 1
@KVM_GUEST_PAGE_TABLE_MIN_PADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @virt_pgd_alloc(%struct.kvm_vm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VM_MODE_PXXV48_4K, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @TEST_ASSERT(i32 %11, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %22 = load i32, i32* @KVM_GUEST_PAGE_TABLE_MIN_PADDR, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @vm_phy_page_alloc(%struct.kvm_vm* %21, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %27 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %28, i32 0, i32 1
  store i32 1, i32* %29, align 8
  br label %30

30:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @TEST_ASSERT(i32, i8*, i64) #1

declare dso_local i32 @vm_phy_page_alloc(%struct.kvm_vm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
