; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_kvm_vm_restart.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_kvm_vm_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32, %struct.userspace_mem_region*, i64 }
%struct.userspace_mem_region = type { %struct.TYPE_2__, %struct.userspace_mem_region* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@KVM_SET_USER_MEMORY_REGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [120 x i8] c"KVM_SET_USER_MEMORY_REGION IOCTL failed,\0A  rc: %i errno: %i\0A  slot: %u flags: 0x%x\0A  guest_phys_addr: 0x%lx size: 0x%lx\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_vm_restart(%struct.kvm_vm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.userspace_mem_region*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @vm_open(%struct.kvm_vm* %7, i32 %8)
  %10 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %16 = call i32 @vm_create_irqchip(%struct.kvm_vm* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %18, i32 0, i32 1
  %20 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %19, align 8
  store %struct.userspace_mem_region* %20, %struct.userspace_mem_region** %5, align 8
  br label %21

21:                                               ; preds = %54, %17
  %22 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %5, align 8
  %23 = icmp ne %struct.userspace_mem_region* %22, null
  br i1 %23, label %24, label %58

24:                                               ; preds = %21
  %25 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @KVM_SET_USER_MEMORY_REGION, align 4
  %29 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %5, align 8
  %30 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %29, i32 0, i32 0
  %31 = call i32 @ioctl(i32 %27, i32 %28, %struct.TYPE_2__* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %5, align 8
  %38 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %5, align 8
  %42 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %5, align 8
  %46 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %5, align 8
  %50 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @TEST_ASSERT(i32 %34, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %40, i32 %44, i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %24
  %55 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %5, align 8
  %56 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %55, i32 0, i32 1
  %57 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %56, align 8
  store %struct.userspace_mem_region* %57, %struct.userspace_mem_region** %5, align 8
  br label %21

58:                                               ; preds = %21
  ret void
}

declare dso_local i32 @vm_open(%struct.kvm_vm*, i32) #1

declare dso_local i32 @vm_create_irqchip(%struct.kvm_vm*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
