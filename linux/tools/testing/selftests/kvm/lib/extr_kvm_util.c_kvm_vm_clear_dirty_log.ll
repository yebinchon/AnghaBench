; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_kvm_vm_clear_dirty_log.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_kvm_vm_clear_dirty_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.kvm_clear_dirty_log = type { i8*, i32, i32, i32 }

@KVM_CLEAR_DIRTY_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: KVM_CLEAR_DIRTY_LOG failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_vm_clear_dirty_log(%struct.kvm_vm* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.kvm_vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kvm_clear_dirty_log, align 8
  %12 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = getelementptr inbounds %struct.kvm_clear_dirty_log, %struct.kvm_clear_dirty_log* %11, i32 0, i32 0
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds %struct.kvm_clear_dirty_log, %struct.kvm_clear_dirty_log* %11, i32 0, i32 1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.kvm_clear_dirty_log, %struct.kvm_clear_dirty_log* %11, i32 0, i32 2
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.kvm_clear_dirty_log, %struct.kvm_clear_dirty_log* %11, i32 0, i32 3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %19, align 8
  %21 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %22 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @KVM_CLEAR_DIRTY_LOG, align 4
  %25 = call i32 @ioctl(i32 %23, i32 %24, %struct.kvm_clear_dirty_log* %11)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %12, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @strerror(i32 %30)
  %32 = call i32 @TEST_ASSERT(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %31)
  ret void
}

declare dso_local i32 @ioctl(i32, i32, %struct.kvm_clear_dirty_log*) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
