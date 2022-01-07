; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_virt_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_virt_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"Vaddr overflow\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Paddr overflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @virt_map(%struct.kvm_vm* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.kvm_vm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %14 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %11, align 8
  %18 = udiv i64 %16, %17
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = add i64 %19, %20
  %22 = load i64, i64* %7, align 8
  %23 = icmp ugt i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @TEST_ASSERT(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = add i64 %26, %27
  %29 = load i64, i64* %8, align 8
  %30 = icmp ugt i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @TEST_ASSERT(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %37, %5
  %34 = load i64, i64* %12, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %12, align 8
  %36 = icmp ne i64 %34, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @virt_pg_map(%struct.kvm_vm* %38, i64 %39, i64 %40, i32 %41)
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %8, align 8
  br label %33

49:                                               ; preds = %33
  ret void
}

declare dso_local i32 @TEST_ASSERT(i32, i8*) #1

declare dso_local i32 @virt_pg_map(%struct.kvm_vm*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
