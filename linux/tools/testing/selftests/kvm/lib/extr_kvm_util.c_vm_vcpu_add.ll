; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vm_vcpu_add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vm_vcpu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vm = type { %struct.vcpu*, i32 }
%struct.vcpu = type { i32, i64, %struct.vcpu*, %struct.vcpu*, %struct.kvm_run* }

@.str = private unnamed_addr constant [98 x i8] c"vcpu with the specified id already exists,\0A  requested vcpuid: %u\0A  existing vcpuid: %u state: %p\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Insufficient Memory\00", align 1
@KVM_CREATE_VCPU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"KVM_CREATE_VCPU failed, rc: %i errno: %i\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"vcpu mmap size smaller than expected, vcpu_mmap_sz: %i expected_min: %zi\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global %struct.kvm_run* null, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"mmap vcpu_state failed, vcpu id: %u errno: %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_vcpu_add(%struct.kvm_vm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcpu*, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.vcpu* @vcpu_find(%struct.kvm_vm* %6, i32 %7)
  store %struct.vcpu* %8, %struct.vcpu** %5, align 8
  %9 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %10 = icmp ne %struct.vcpu* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %14 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %17 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %16, i32 0, i32 4
  %18 = load %struct.kvm_run*, %struct.kvm_run** %17, align 8
  %19 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 0, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, %struct.kvm_run* %18)
  br label %20

20:                                               ; preds = %11, %2
  %21 = call %struct.vcpu* @calloc(i32 1, i32 40)
  store %struct.vcpu* %21, %struct.vcpu** %5, align 8
  %22 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %23 = icmp ne %struct.vcpu* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %28 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @KVM_CREATE_VCPU, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @ioctl(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %36 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %38 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %43 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %44, i32 %45)
  %47 = call i32 (...) @vcpu_mmap_sz()
  %48 = sext i32 %47 to i64
  %49 = icmp uge i64 %48, 4
  %50 = zext i1 %49 to i32
  %51 = call i32 (...) @vcpu_mmap_sz()
  %52 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %50, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %51, i64 4)
  %53 = load i32, i32* @PROT_READ, align 4
  %54 = load i32, i32* @PROT_WRITE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @MAP_SHARED, align 4
  %57 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %58 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i64 @mmap(i32* null, i32 4, i32 %55, i32 %56, i32 %60, i32 0)
  %62 = inttoptr i64 %61 to %struct.kvm_run*
  %63 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %64 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %63, i32 0, i32 4
  store %struct.kvm_run* %62, %struct.kvm_run** %64, align 8
  %65 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %66 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %65, i32 0, i32 4
  %67 = load %struct.kvm_run*, %struct.kvm_run** %66, align 8
  %68 = load %struct.kvm_run*, %struct.kvm_run** @MAP_FAILED, align 8
  %69 = icmp ne %struct.kvm_run* %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %75 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %74, i32 0, i32 0
  %76 = load %struct.vcpu*, %struct.vcpu** %75, align 8
  %77 = icmp ne %struct.vcpu* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %20
  %79 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %80 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %81 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %80, i32 0, i32 0
  %82 = load %struct.vcpu*, %struct.vcpu** %81, align 8
  %83 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %82, i32 0, i32 3
  store %struct.vcpu* %79, %struct.vcpu** %83, align 8
  br label %84

84:                                               ; preds = %78, %20
  %85 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %86 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %85, i32 0, i32 0
  %87 = load %struct.vcpu*, %struct.vcpu** %86, align 8
  %88 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %89 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %88, i32 0, i32 2
  store %struct.vcpu* %87, %struct.vcpu** %89, align 8
  %90 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %91 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %92 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %91, i32 0, i32 0
  store %struct.vcpu* %90, %struct.vcpu** %92, align 8
  ret void
}

declare dso_local %struct.vcpu* @vcpu_find(%struct.kvm_vm*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, ...) #1

declare dso_local %struct.vcpu* @calloc(i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @vcpu_mmap_sz(...) #1

declare dso_local i64 @mmap(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
