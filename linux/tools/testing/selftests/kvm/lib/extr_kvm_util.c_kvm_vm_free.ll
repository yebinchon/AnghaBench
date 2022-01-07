; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_kvm_vm_free.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_kvm_vm_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32, i32, i32, i32, i32, %struct.kvm_vm*, %struct.kvm_vm*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.userspace_mem_region = type { i32, i32, i32, i32, i32, %struct.userspace_mem_region*, %struct.userspace_mem_region*, %struct.TYPE_2__, i32 }

@KVM_SET_USER_MEMORY_REGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"KVM_SET_USER_MEMORY_REGION IOCTL failed, rc: %i errno: %i\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"munmap failed, rc: %i errno: %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_vm_free(%struct.kvm_vm* %0) #0 {
  %2 = alloca %struct.kvm_vm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.userspace_mem_region*, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %2, align 8
  %5 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %6 = icmp eq %struct.kvm_vm* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %72

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %14, %8
  %10 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %11 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %10, i32 0, i32 6
  %12 = load %struct.kvm_vm*, %struct.kvm_vm** %11, align 8
  %13 = icmp ne %struct.kvm_vm* %12, null
  br i1 %13, label %14, label %59

14:                                               ; preds = %9
  %15 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %16 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %15, i32 0, i32 6
  %17 = load %struct.kvm_vm*, %struct.kvm_vm** %16, align 8
  %18 = bitcast %struct.kvm_vm* %17 to %struct.userspace_mem_region*
  store %struct.userspace_mem_region* %18, %struct.userspace_mem_region** %4, align 8
  %19 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %4, align 8
  %20 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %23 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @KVM_SET_USER_MEMORY_REGION, align 4
  %26 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %4, align 8
  %27 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %26, i32 0, i32 7
  %28 = call i32 @ioctl(i32 %24, i32 %25, %struct.TYPE_2__* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @TEST_ASSERT(i32 %31, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %4, align 8
  %36 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %35, i32 0, i32 5
  %37 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %36, align 8
  %38 = bitcast %struct.userspace_mem_region* %37 to %struct.kvm_vm*
  %39 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %40 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %39, i32 0, i32 6
  store %struct.kvm_vm* %38, %struct.kvm_vm** %40, align 8
  %41 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %4, align 8
  %42 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %41, i32 0, i32 4
  %43 = call i32 @sparsebit_free(i32* %42)
  %44 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %4, align 8
  %45 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %4, align 8
  %48 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @munmap(i32 %46, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @TEST_ASSERT(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %4, align 8
  %58 = call i32 @free(%struct.userspace_mem_region* %57)
  br label %9

59:                                               ; preds = %9
  %60 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %61 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %60, i32 0, i32 1
  %62 = call i32 @sparsebit_free(i32* %61)
  %63 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %64 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %63, i32 0, i32 0
  %65 = call i32 @sparsebit_free(i32* %64)
  %66 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %67 = bitcast %struct.kvm_vm* %66 to %struct.userspace_mem_region*
  %68 = call i32 @kvm_vm_release(%struct.userspace_mem_region* %67)
  %69 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %70 = bitcast %struct.kvm_vm* %69 to %struct.userspace_mem_region*
  %71 = call i32 @free(%struct.userspace_mem_region* %70)
  br label %72

72:                                               ; preds = %59, %7
  ret void
}

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32, i32) #1

declare dso_local i32 @sparsebit_free(i32*) #1

declare dso_local i32 @munmap(i32, i32) #1

declare dso_local i32 @free(%struct.userspace_mem_region*) #1

declare dso_local i32 @kvm_vm_release(%struct.userspace_mem_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
