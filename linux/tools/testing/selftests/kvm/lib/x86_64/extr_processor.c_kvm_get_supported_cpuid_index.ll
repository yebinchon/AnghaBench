; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_kvm_get_supported_cpuid_index.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_kvm_get_supported_cpuid_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_cpuid_entry2 = type { i64, i64 }
%struct.kvm_cpuid2 = type { i32, %struct.kvm_cpuid_entry2* }

@.str = private unnamed_addr constant [47 x i8] c"Guest CPUID entry not found: (EAX=%x, ECX=%x).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm_cpuid_entry2* @kvm_get_supported_cpuid_index(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm_cpuid2*, align 8
  %6 = alloca %struct.kvm_cpuid_entry2*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.kvm_cpuid_entry2* null, %struct.kvm_cpuid_entry2** %6, align 8
  %8 = call %struct.kvm_cpuid2* (...) @kvm_get_supported_cpuid()
  store %struct.kvm_cpuid2* %8, %struct.kvm_cpuid2** %5, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %45, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %5, align 8
  %12 = getelementptr inbounds %struct.kvm_cpuid2, %struct.kvm_cpuid2* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %9
  %16 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_cpuid2, %struct.kvm_cpuid2* %16, i32 0, i32 1
  %18 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %18, i64 %20
  %22 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %15
  %27 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_cpuid2, %struct.kvm_cpuid2* %27, i32 0, i32 1
  %29 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %29, i64 %31
  %33 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.kvm_cpuid2*, %struct.kvm_cpuid2** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_cpuid2, %struct.kvm_cpuid2* %38, i32 0, i32 1
  %40 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %40, i64 %42
  store %struct.kvm_cpuid_entry2* %43, %struct.kvm_cpuid_entry2** %6, align 8
  br label %48

44:                                               ; preds = %26, %15
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %9

48:                                               ; preds = %37, %9
  %49 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %6, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @TEST_ASSERT(%struct.kvm_cpuid_entry2* %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %50, i64 %51)
  %53 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %6, align 8
  ret %struct.kvm_cpuid_entry2* %53
}

declare dso_local %struct.kvm_cpuid2* @kvm_get_supported_cpuid(...) #1

declare dso_local i32 @TEST_ASSERT(%struct.kvm_cpuid_entry2*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
