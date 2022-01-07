; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/aarch64/extr_ucall.c_get_ucall.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/aarch64/extr_ucall.c_get_ucall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.ucall = type { i64 }
%struct.kvm_run = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, %struct.ucall*, i64 }

@KVM_EXIT_MMIO = common dso_local global i64 0, align 8
@ucall_exit_mmio_addr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Unexpected ucall exit mmio address access\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_ucall(%struct.kvm_vm* %0, i32 %1, %struct.ucall* %2) #0 {
  %4 = alloca %struct.kvm_vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucall*, align 8
  %7 = alloca %struct.kvm_run*, align 8
  %8 = alloca %struct.ucall, align 8
  %9 = alloca %struct.ucall, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ucall* %2, %struct.ucall** %6, align 8
  %10 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.kvm_run* @vcpu_state(%struct.kvm_vm* %10, i32 %11)
  store %struct.kvm_run* %12, %struct.kvm_run** %7, align 8
  %13 = bitcast %struct.ucall* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %15 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KVM_EXIT_MMIO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %3
  %20 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %21 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ucall_exit_mmio_addr, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %19
  %27 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %28 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %34 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 8
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi i1 [ false, %26 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @TEST_ASSERT(i32 %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %43 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load %struct.ucall*, %struct.ucall** %44, align 8
  %46 = call i32 @memcpy(%struct.ucall* %9, %struct.ucall* %45, i32 8)
  %47 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %48 = getelementptr inbounds %struct.ucall, %struct.ucall* %9, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call %struct.ucall* @addr_gva2hva(%struct.kvm_vm* %47, i64 %49)
  %51 = call i32 @memcpy(%struct.ucall* %8, %struct.ucall* %50, i32 8)
  %52 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @vcpu_run_complete_io(%struct.kvm_vm* %52, i32 %53)
  %55 = load %struct.ucall*, %struct.ucall** %6, align 8
  %56 = icmp ne %struct.ucall* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %38
  %58 = load %struct.ucall*, %struct.ucall** %6, align 8
  %59 = call i32 @memcpy(%struct.ucall* %58, %struct.ucall* %8, i32 8)
  br label %60

60:                                               ; preds = %57, %38
  br label %61

61:                                               ; preds = %60, %19, %3
  %62 = getelementptr inbounds %struct.ucall, %struct.ucall* %8, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  ret i64 %63
}

declare dso_local %struct.kvm_run* @vcpu_state(%struct.kvm_vm*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @TEST_ASSERT(i32, i8*) #1

declare dso_local i32 @memcpy(%struct.ucall*, %struct.ucall*, i32) #1

declare dso_local %struct.ucall* @addr_gva2hva(%struct.kvm_vm*, i64) #1

declare dso_local i32 @vcpu_run_complete_io(%struct.kvm_vm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
