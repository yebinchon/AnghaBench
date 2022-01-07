; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/s390x/extr_ucall.c_get_ucall.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/s390x/extr_ucall.c_get_ucall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.ucall = type { i32 }
%struct.kvm_run = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@KVM_EXIT_S390_SIEIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_ucall(%struct.kvm_vm* %0, i32 %1, %struct.ucall* %2) #0 {
  %4 = alloca %struct.kvm_vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucall*, align 8
  %7 = alloca %struct.kvm_run*, align 8
  %8 = alloca %struct.ucall, align 4
  %9 = alloca i32, align 4
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
  %17 = load i64, i64* @KVM_EXIT_S390_SIEIC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %3
  %20 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %21 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %66

25:                                               ; preds = %19
  %26 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %27 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 8
  %31 = icmp eq i32 %30, 131
  br i1 %31, label %32, label %66

32:                                               ; preds = %25
  %33 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %34 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %36, 16
  %38 = icmp eq i32 %37, 1281
  br i1 %38, label %39, label %66

39:                                               ; preds = %32
  %40 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %41 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 15
  store i32 %44, i32* %9, align 4
  %45 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %46 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %47 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.ucall* @addr_gva2hva(%struct.kvm_vm* %45, i32 %54)
  %56 = call i32 @memcpy(%struct.ucall* %8, %struct.ucall* %55, i32 4)
  %57 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @vcpu_run_complete_io(%struct.kvm_vm* %57, i32 %58)
  %60 = load %struct.ucall*, %struct.ucall** %6, align 8
  %61 = icmp ne %struct.ucall* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %39
  %63 = load %struct.ucall*, %struct.ucall** %6, align 8
  %64 = call i32 @memcpy(%struct.ucall* %63, %struct.ucall* %8, i32 4)
  br label %65

65:                                               ; preds = %62, %39
  br label %66

66:                                               ; preds = %65, %32, %25, %19, %3
  %67 = getelementptr inbounds %struct.ucall, %struct.ucall* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  ret i32 %68
}

declare dso_local %struct.kvm_run* @vcpu_state(%struct.kvm_vm*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

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
