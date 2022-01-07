; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vm_open.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i64, i64, i32 }

@KVM_DEV_PATH = common dso_local global i32 0, align 4
@KSFT_SKIP = common dso_local global i32 0, align 4
@KVM_CAP_IMMEDIATE_EXIT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"immediate_exit not available, skipping test\0A\00", align 1
@KVM_CREATE_VM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"KVM_CREATE_VM ioctl failed, rc: %i errno: %i\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vm*, i32)* @vm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_open(%struct.kvm_vm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vm*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @KVM_DEV_PATH, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @open(i32 %5, i32 %6)
  %8 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @KSFT_SKIP, align 4
  %16 = call i32 @exit(i32 %15) #3
  unreachable

17:                                               ; preds = %2
  %18 = load i32, i32* @KVM_CAP_IMMEDIATE_EXIT, align 4
  %19 = call i32 @kvm_check_cap(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @KSFT_SKIP, align 4
  %25 = call i32 @exit(i32 %24) #3
  unreachable

26:                                               ; preds = %17
  %27 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @KVM_CREATE_VM, align 4
  %31 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %32 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @ioctl(i64 %29, i32 %30, i32 %33)
  %35 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %38 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %43 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @TEST_ASSERT(i32 %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %44, i32 %45)
  ret void
}

declare dso_local i64 @open(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @kvm_check_cap(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @ioctl(i64, i32, i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
