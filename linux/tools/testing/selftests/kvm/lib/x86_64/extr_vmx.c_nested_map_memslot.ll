; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_vmx.c_nested_map_memslot.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_vmx.c_nested_map_memslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx_pages = type { i32 }
%struct.kvm_vm = type { i32 }
%struct.userspace_mem_region = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nested_map_memslot(%struct.vmx_pages* %0, %struct.kvm_vm* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vmx_pages*, align 8
  %6 = alloca %struct.kvm_vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.userspace_mem_region*, align 8
  store %struct.vmx_pages* %0, %struct.vmx_pages** %5, align 8
  store %struct.kvm_vm* %1, %struct.kvm_vm** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.userspace_mem_region* @memslot2region(%struct.kvm_vm* %12, i32 %13)
  store %struct.userspace_mem_region* %14, %struct.userspace_mem_region** %11, align 8
  %15 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %11, align 8
  %16 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %20 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %18, %21
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %11, align 8
  %26 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %30 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %28, %31
  %33 = add nsw i32 %24, %32
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %44, %4
  %35 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %11, align 8
  %36 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @sparsebit_next_clear(i32 %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %63

44:                                               ; preds = %34
  %45 = load %struct.vmx_pages*, %struct.vmx_pages** %5, align 8
  %46 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %49 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %47, %50
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %54 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %52, %55
  %57 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %58 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 1, %59
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @nested_map(%struct.vmx_pages* %45, %struct.kvm_vm* %46, i32 %51, i32 %56, i32 %60, i32 %61)
  br label %34

63:                                               ; preds = %43
  ret void
}

declare dso_local %struct.userspace_mem_region* @memslot2region(%struct.kvm_vm*, i32) #1

declare dso_local i32 @sparsebit_next_clear(i32, i32) #1

declare dso_local i32 @nested_map(%struct.vmx_pages*, %struct.kvm_vm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
