; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vm_vaddr_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vm_vaddr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i64, i64, i32 }

@KVM_UTIL_MIN_PFN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_vaddr_alloc(%struct.kvm_vm* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.kvm_vm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %17 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = lshr i64 %15, %18
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %22 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = urem i64 %20, %23
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = add i64 %19, %27
  store i64 %28, i64* %11, align 8
  %29 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @virt_pgd_alloc(%struct.kvm_vm* %29, i32 %30)
  %32 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @vm_vaddr_unused_gap(%struct.kvm_vm* %32, i64 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %66, %5
  %38 = load i64, i64* %11, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %37
  %41 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %42 = load i32, i32* @KVM_UTIL_MIN_PFN, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %45 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = mul i64 %43, %46
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @vm_phy_page_alloc(%struct.kvm_vm* %41, i32 %48, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @virt_pg_map(%struct.kvm_vm* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %57 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %61 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = ashr i32 %59, %63
  %65 = call i32 @sparsebit_set(i32 %58, i32 %64)
  br label %66

66:                                               ; preds = %40
  %67 = load i64, i64* %11, align 8
  %68 = add nsw i64 %67, -1
  store i64 %68, i64* %11, align 8
  %69 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %70 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %13, align 4
  br label %37

76:                                               ; preds = %37
  %77 = load i32, i32* %12, align 4
  ret i32 %77
}

declare dso_local i32 @virt_pgd_alloc(%struct.kvm_vm*, i32) #1

declare dso_local i32 @vm_vaddr_unused_gap(%struct.kvm_vm*, i64, i32) #1

declare dso_local i32 @vm_phy_page_alloc(%struct.kvm_vm*, i32, i32) #1

declare dso_local i32 @virt_pg_map(%struct.kvm_vm*, i32, i32, i32) #1

declare dso_local i32 @sparsebit_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
