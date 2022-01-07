; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vm_enable_cap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vm_enable_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.kvm_enable_cap = type { i32 }

@KVM_ENABLE_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"KVM_ENABLE_CAP IOCTL failed,\0A  rc: %i errno: %i\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_enable_cap(%struct.kvm_vm* %0, %struct.kvm_enable_cap* %1) #0 {
  %3 = alloca %struct.kvm_vm*, align 8
  %4 = alloca %struct.kvm_enable_cap*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %3, align 8
  store %struct.kvm_enable_cap* %1, %struct.kvm_enable_cap** %4, align 8
  %6 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @KVM_ENABLE_CAP, align 4
  %10 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %4, align 8
  %11 = call i32 @ioctl(i32 %8, i32 %9, %struct.kvm_enable_cap* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @TEST_ASSERT(i32 %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local i32 @ioctl(i32, i32, %struct.kvm_enable_cap*) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
