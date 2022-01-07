; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_kvm_vm_get_dirty_log.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_kvm_vm_get_dirty_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.kvm_dirty_log = type { i8*, i32 }

@KVM_GET_DIRTY_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: KVM_GET_DIRTY_LOG failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_vm_get_dirty_log(%struct.kvm_vm* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.kvm_vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kvm_dirty_log, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = getelementptr inbounds %struct.kvm_dirty_log, %struct.kvm_dirty_log* %7, i32 0, i32 0
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds %struct.kvm_dirty_log, %struct.kvm_dirty_log* %7, i32 0, i32 1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %11, align 8
  %13 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @KVM_GET_DIRTY_LOG, align 4
  %17 = call i32 @ioctl(i32 %15, i32 %16, %struct.kvm_dirty_log* %7)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @strerror(i32 %22)
  %24 = call i32 @TEST_ASSERT(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %23)
  ret void
}

declare dso_local i32 @ioctl(i32, i32, %struct.kvm_dirty_log*) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
