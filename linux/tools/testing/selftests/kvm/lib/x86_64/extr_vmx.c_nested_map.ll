; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_vmx.c_nested_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_vmx.c_nested_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx_pages = type { i32 }
%struct.kvm_vm = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"Vaddr overflow\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Paddr overflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nested_map(%struct.vmx_pages* %0, %struct.kvm_vm* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.vmx_pages*, align 8
  %8 = alloca %struct.kvm_vm*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.vmx_pages* %0, %struct.vmx_pages** %7, align 8
  store %struct.kvm_vm* %1, %struct.kvm_vm** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.kvm_vm*, %struct.kvm_vm** %8, align 8
  %16 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %13, align 8
  %20 = udiv i64 %18, %19
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %11, align 8
  %23 = add i64 %21, %22
  %24 = load i64, i64* %9, align 8
  %25 = icmp ugt i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @TEST_ASSERT(i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = add i64 %28, %29
  %31 = load i64, i64* %10, align 8
  %32 = icmp ugt i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @TEST_ASSERT(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %39, %6
  %36 = load i64, i64* %14, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %14, align 8
  %38 = icmp ne i64 %36, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load %struct.vmx_pages*, %struct.vmx_pages** %7, align 8
  %41 = load %struct.kvm_vm*, %struct.kvm_vm** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @nested_pg_map(%struct.vmx_pages* %40, %struct.kvm_vm* %41, i64 %42, i64 %43, i32 %44)
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %10, align 8
  br label %35

52:                                               ; preds = %35
  ret void
}

declare dso_local i32 @TEST_ASSERT(i32, i8*) #1

declare dso_local i32 @nested_pg_map(%struct.vmx_pages*, %struct.kvm_vm*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
