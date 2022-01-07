; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/s390x/extr_processor.c_addr_gva2gpa.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/s390x/extr_processor.c_addr_gva2gpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Unsupported page size: 0x%x\00", align 1
@REGION_ENTRY_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"No region mapping for vm virtual address 0x%lx\00", align 1
@REGION_ENTRY_ORIGIN = common dso_local global i32 0, align 4
@PAGE_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"No page mapping for vm virtual address 0x%lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_gva2gpa(%struct.kvm_vm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 4096
  %12 = zext i1 %11 to i32
  %13 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @TEST_ASSERT(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %18 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @addr_gpa2hva(%struct.kvm_vm* %17, i32 %20)
  store i32* %21, i32** %7, align 8
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %53, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %23, 4
  br i1 %24, label %25, label %56

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 11, %27
  %29 = sub nsw i32 64, %28
  %30 = ashr i32 %26, %29
  %31 = and i32 %30, 2047
  store i32 %31, i32* %6, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @REGION_ENTRY_INVALID, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @TEST_ASSERT(i32 %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @REGION_ENTRY_ORIGIN, align 4
  %51 = and i32 %49, %50
  %52 = call i32* @addr_gpa2hva(%struct.kvm_vm* %44, i32 %51)
  store i32* %52, i32** %7, align 8
  br label %53

53:                                               ; preds = %25
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %22

56:                                               ; preds = %22
  %57 = load i32, i32* %4, align 4
  %58 = ashr i32 %57, 12
  %59 = and i32 %58, 255
  store i32 %59, i32* %6, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PAGE_INVALID, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @TEST_ASSERT(i32 %69, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = and i64 %77, -4096
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = and i64 %80, 4095
  %82 = add i64 %78, %81
  %83 = trunc i64 %82 to i32
  ret i32 %83
}

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32) #1

declare dso_local i32* @addr_gpa2hva(%struct.kvm_vm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
