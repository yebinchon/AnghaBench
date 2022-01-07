; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_kvm_userspace_memory_region_find.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_kvm_userspace_memory_region_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_userspace_memory_region = type { i32 }
%struct.kvm_vm = type { i32 }
%struct.userspace_mem_region = type { %struct.kvm_userspace_memory_region }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm_userspace_memory_region* @kvm_userspace_memory_region_find(%struct.kvm_vm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_userspace_memory_region*, align 8
  %5 = alloca %struct.kvm_vm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.userspace_mem_region*, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.userspace_mem_region* @userspace_mem_region_find(%struct.kvm_vm* %9, i32 %10, i32 %11)
  store %struct.userspace_mem_region* %12, %struct.userspace_mem_region** %8, align 8
  %13 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %8, align 8
  %14 = icmp ne %struct.userspace_mem_region* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.kvm_userspace_memory_region* null, %struct.kvm_userspace_memory_region** %4, align 8
  br label %19

16:                                               ; preds = %3
  %17 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %8, align 8
  %18 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %17, i32 0, i32 0
  store %struct.kvm_userspace_memory_region* %18, %struct.kvm_userspace_memory_region** %4, align 8
  br label %19

19:                                               ; preds = %16, %15
  %20 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %4, align 8
  ret %struct.kvm_userspace_memory_region* %20
}

declare dso_local %struct.userspace_mem_region* @userspace_mem_region_find(%struct.kvm_vm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
