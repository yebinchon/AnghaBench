; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_vcpu_get_msr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_vcpu_get_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.vcpu = type { i32 }
%struct.anon = type { %struct.kvm_msrs, %struct.kvm_msr_entry }
%struct.kvm_msrs = type { i32 }
%struct.kvm_msr_entry = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"vcpu not found, vcpuid: %u\00", align 1
@KVM_GET_MSRS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"KVM_GET_MSRS IOCTL failed,\0A  rc: %i errno: %i\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcpu_get_msr(%struct.kvm_vm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vcpu*, align 8
  %8 = alloca %struct.anon, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.vcpu* @vcpu_find(%struct.kvm_vm* %10, i32 %11)
  store %struct.vcpu* %12, %struct.vcpu** %7, align 8
  %13 = bitcast %struct.anon* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 12, i1 false)
  %14 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %15 = icmp ne %struct.vcpu* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %20 = getelementptr inbounds %struct.kvm_msrs, %struct.kvm_msrs* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  %23 = getelementptr inbounds %struct.kvm_msr_entry, %struct.kvm_msr_entry* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %25 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @KVM_GET_MSRS, align 4
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %29 = call i32 @ioctl(i32 %26, i32 %27, %struct.kvm_msrs* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 1
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  %37 = getelementptr inbounds %struct.kvm_msr_entry, %struct.kvm_msr_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  ret i32 %38
}

declare dso_local %struct.vcpu* @vcpu_find(%struct.kvm_vm*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32, ...) #1

declare dso_local i32 @ioctl(i32, i32, %struct.kvm_msrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
