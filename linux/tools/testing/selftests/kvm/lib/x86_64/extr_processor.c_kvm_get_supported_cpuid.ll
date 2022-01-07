; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_kvm_get_supported_cpuid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_kvm_get_supported_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_cpuid2 = type { i32 }

@kvm_get_supported_cpuid.cpuid = internal global %struct.kvm_cpuid2* null, align 8
@KVM_DEV_PATH = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@KSFT_SKIP = common dso_local global i32 0, align 4
@KVM_GET_SUPPORTED_CPUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"KVM_GET_SUPPORTED_CPUID failed %d %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm_cpuid2* @kvm_get_supported_cpuid() #0 {
  %1 = alloca %struct.kvm_cpuid2*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** @kvm_get_supported_cpuid.cpuid, align 8
  %5 = icmp ne %struct.kvm_cpuid2* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** @kvm_get_supported_cpuid.cpuid, align 8
  store %struct.kvm_cpuid2* %7, %struct.kvm_cpuid2** %1, align 8
  br label %32

8:                                                ; preds = %0
  %9 = call %struct.kvm_cpuid2* (...) @allocate_kvm_cpuid2()
  store %struct.kvm_cpuid2* %9, %struct.kvm_cpuid2** @kvm_get_supported_cpuid.cpuid, align 8
  %10 = load i32, i32* @KVM_DEV_PATH, align 4
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call i32 @open(i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i32, i32* @KSFT_SKIP, align 4
  %17 = call i32 @exit(i32 %16) #3
  unreachable

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @KVM_GET_SUPPORTED_CPUID, align 4
  %21 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** @kvm_get_supported_cpuid.cpuid, align 8
  %22 = call i32 @ioctl(i32 %19, i32 %20, %struct.kvm_cpuid2* %21)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @TEST_ASSERT(i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @close(i32 %29)
  %31 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** @kvm_get_supported_cpuid.cpuid, align 8
  store %struct.kvm_cpuid2* %31, %struct.kvm_cpuid2** %1, align 8
  br label %32

32:                                               ; preds = %18, %6
  %33 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %1, align 8
  ret %struct.kvm_cpuid2* %33
}

declare dso_local %struct.kvm_cpuid2* @allocate_kvm_cpuid2(...) #1

declare dso_local i32 @open(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.kvm_cpuid2*) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
