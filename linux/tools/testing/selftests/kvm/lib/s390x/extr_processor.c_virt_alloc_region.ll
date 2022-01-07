; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/s390x/extr_processor.c_virt_alloc_region.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/s390x/extr_processor.c_virt_alloc_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }

@PAGES_PER_REGION = common dso_local global i32 0, align 4
@KVM_GUEST_PAGE_TABLE_MIN_PADDR = common dso_local global i32 0, align 4
@REGION_ENTRY_ORIGIN = common dso_local global i32 0, align 4
@REGION_ENTRY_TYPE = common dso_local global i32 0, align 4
@REGION_ENTRY_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vm*, i32, i32)* @virt_alloc_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virt_alloc_region(%struct.kvm_vm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @PAGES_PER_REGION, align 4
  br label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ 1, %13 ]
  %16 = load i32, i32* @KVM_GUEST_PAGE_TABLE_MIN_PADDR, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @vm_phy_pages_alloc(%struct.kvm_vm* %8, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @addr_gpa2hva(%struct.kvm_vm* %19, i32 %20)
  %22 = load i32, i32* @PAGES_PER_REGION, align 4
  %23 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = call i32 @memset(i32 %21, i32 255, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @REGION_ENTRY_ORIGIN, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 4, %31
  %33 = shl i32 %32, 2
  %34 = load i32, i32* @REGION_ENTRY_TYPE, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %30, %35
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %42

39:                                               ; preds = %14
  %40 = load i32, i32* @PAGES_PER_REGION, align 4
  %41 = sub nsw i32 %40, 1
  br label %43

42:                                               ; preds = %14
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i32 [ %41, %39 ], [ 0, %42 ]
  %45 = load i32, i32* @REGION_ENTRY_LENGTH, align 4
  %46 = and i32 %44, %45
  %47 = or i32 %36, %46
  ret i32 %47
}

declare dso_local i32 @vm_phy_pages_alloc(%struct.kvm_vm*, i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @addr_gpa2hva(%struct.kvm_vm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
