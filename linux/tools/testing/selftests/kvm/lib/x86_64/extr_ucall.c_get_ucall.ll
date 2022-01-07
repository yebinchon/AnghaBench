; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_ucall.c_get_ucall.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_ucall.c_get_ucall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.ucall = type { i32 }
%struct.kvm_run = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.kvm_regs = type { i64 }

@KVM_EXIT_IO = common dso_local global i64 0, align 8
@UCALL_PIO_PORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_ucall(%struct.kvm_vm* %0, i32 %1, %struct.ucall* %2) #0 {
  %4 = alloca %struct.kvm_vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucall*, align 8
  %7 = alloca %struct.kvm_run*, align 8
  %8 = alloca %struct.ucall, align 4
  %9 = alloca %struct.kvm_regs, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ucall* %2, %struct.ucall** %6, align 8
  %10 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.kvm_run* @vcpu_state(%struct.kvm_vm* %10, i32 %11)
  store %struct.kvm_run* %12, %struct.kvm_run** %7, align 8
  %13 = bitcast %struct.ucall* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %15 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KVM_EXIT_IO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  %20 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %21 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UCALL_PIO_PORT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %19
  %27 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @vcpu_regs_get(%struct.kvm_vm* %27, i32 %28, %struct.kvm_regs* %9)
  %30 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %9, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call %struct.ucall* @addr_gva2hva(%struct.kvm_vm* %30, i32 %33)
  %35 = call i32 @memcpy(%struct.ucall* %8, %struct.ucall* %34, i32 4)
  %36 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @vcpu_run_complete_io(%struct.kvm_vm* %36, i32 %37)
  %39 = load %struct.ucall*, %struct.ucall** %6, align 8
  %40 = icmp ne %struct.ucall* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %26
  %42 = load %struct.ucall*, %struct.ucall** %6, align 8
  %43 = call i32 @memcpy(%struct.ucall* %42, %struct.ucall* %8, i32 4)
  br label %44

44:                                               ; preds = %41, %26
  br label %45

45:                                               ; preds = %44, %19, %3
  %46 = getelementptr inbounds %struct.ucall, %struct.ucall* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  ret i32 %47
}

declare dso_local %struct.kvm_run* @vcpu_state(%struct.kvm_vm*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @vcpu_regs_get(%struct.kvm_vm*, i32, %struct.kvm_regs*) #1

declare dso_local i32 @memcpy(%struct.ucall*, %struct.ucall*, i32) #1

declare dso_local %struct.ucall* @addr_gva2hva(%struct.kvm_vm*, i32) #1

declare dso_local i32 @vcpu_run_complete_io(%struct.kvm_vm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
