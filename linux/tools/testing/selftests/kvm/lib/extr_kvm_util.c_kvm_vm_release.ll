; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_kvm_vm_release.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_kvm_vm_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Close of vm fd failed,\0A  vmp->fd: %i rc: %i errno: %i\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Close of /dev/kvm fd failed,\0A  vmp->kvm_fd: %i rc: %i errno: %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_vm_release(%struct.kvm_vm* %0) #0 {
  %2 = alloca %struct.kvm_vm*, align 8
  %3 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %11 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %12 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @vm_vcpu_rm(%struct.kvm_vm* %10, i32 %15)
  br label %4

17:                                               ; preds = %4
  %18 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %19 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @close(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %26 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @TEST_ASSERT(i32 %24, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  %31 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %32 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @close(i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %39 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @TEST_ASSERT(i32 %37, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @vm_vcpu_rm(%struct.kvm_vm*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
