; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/s390x/extr_processor.c_virt_pgd_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/s390x/extr_processor.c_virt_pgd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Unsupported page size: 0x%x\00", align 1
@PAGES_PER_REGION = common dso_local global i32 0, align 4
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
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 4096
  %10 = zext i1 %9 to i32
  %11 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @TEST_ASSERT(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %40

20:                                               ; preds = %2
  %21 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %22 = load i32, i32* @PAGES_PER_REGION, align 4
  %23 = load i32, i32* @KVM_GUEST_PAGE_TABLE_MIN_PADDR, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @vm_phy_pages_alloc(%struct.kvm_vm* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @addr_gpa2hva(%struct.kvm_vm* %26, i32 %27)
  %29 = load i32, i32* @PAGES_PER_REGION, align 4
  %30 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %31 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = call i32 @memset(i32 %28, i32 255, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %37 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32) #1

declare dso_local i32 @vm_phy_pages_alloc(%struct.kvm_vm*, i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @addr_gpa2hva(%struct.kvm_vm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
