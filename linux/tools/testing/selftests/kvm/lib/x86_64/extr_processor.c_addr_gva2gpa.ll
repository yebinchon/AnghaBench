; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_addr_gva2gpa.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_addr_gva2gpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i64, i32, i32, i32 }
%struct.pageMapL4Entry = type { i32, i32 }
%struct.pageDirectoryPointerEntry = type { i32, i32 }
%struct.pageDirectoryEntry = type { i32, i32 }
%struct.pageTableEntry = type { i32, i32 }

@VM_MODE_PXXV48_4K = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"Attempt to use unknown or unsupported guest mode, mode: 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"No mapping for vm virtual address, gva: 0x%lx\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_gva2gpa(%struct.kvm_vm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i64], align 16
  %6 = alloca %struct.pageMapL4Entry*, align 8
  %7 = alloca %struct.pageDirectoryPointerEntry*, align 8
  %8 = alloca %struct.pageDirectoryEntry*, align 8
  %9 = alloca %struct.pageTableEntry*, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VM_MODE_PXXV48_4K, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @TEST_ASSERT(i32 %15, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 12
  %23 = and i32 %22, 511
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  store i64 %24, i64* %25, align 16
  %26 = load i32, i32* %4, align 4
  %27 = ashr i32 %26, 21
  %28 = and i32 %27, 511
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1
  store i64 %29, i64* %30, align 8
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 30
  %33 = and i32 %32, 511
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2
  store i64 %34, i64* %35, align 16
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 39
  %38 = and i32 %37, 511
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3
  store i64 %39, i64* %40, align 8
  %41 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %42 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %2
  br label %141

46:                                               ; preds = %2
  %47 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %48 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %49 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @addr_gpa2hva(%struct.kvm_vm* %47, i32 %50)
  %52 = bitcast i8* %51 to %struct.pageMapL4Entry*
  store %struct.pageMapL4Entry* %52, %struct.pageMapL4Entry** %6, align 8
  %53 = load %struct.pageMapL4Entry*, %struct.pageMapL4Entry** %6, align 8
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.pageMapL4Entry, %struct.pageMapL4Entry* %53, i64 %55
  %57 = getelementptr inbounds %struct.pageMapL4Entry, %struct.pageMapL4Entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %46
  br label %141

61:                                               ; preds = %46
  %62 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %63 = load %struct.pageMapL4Entry*, %struct.pageMapL4Entry** %6, align 8
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.pageMapL4Entry, %struct.pageMapL4Entry* %63, i64 %65
  %67 = getelementptr inbounds %struct.pageMapL4Entry, %struct.pageMapL4Entry* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %70 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  %73 = call i8* @addr_gpa2hva(%struct.kvm_vm* %62, i32 %72)
  %74 = bitcast i8* %73 to %struct.pageDirectoryPointerEntry*
  store %struct.pageDirectoryPointerEntry* %74, %struct.pageDirectoryPointerEntry** %7, align 8
  %75 = load %struct.pageDirectoryPointerEntry*, %struct.pageDirectoryPointerEntry** %7, align 8
  %76 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2
  %77 = load i64, i64* %76, align 16
  %78 = getelementptr inbounds %struct.pageDirectoryPointerEntry, %struct.pageDirectoryPointerEntry* %75, i64 %77
  %79 = getelementptr inbounds %struct.pageDirectoryPointerEntry, %struct.pageDirectoryPointerEntry* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %61
  br label %141

83:                                               ; preds = %61
  %84 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %85 = load %struct.pageDirectoryPointerEntry*, %struct.pageDirectoryPointerEntry** %7, align 8
  %86 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2
  %87 = load i64, i64* %86, align 16
  %88 = getelementptr inbounds %struct.pageDirectoryPointerEntry, %struct.pageDirectoryPointerEntry* %85, i64 %87
  %89 = getelementptr inbounds %struct.pageDirectoryPointerEntry, %struct.pageDirectoryPointerEntry* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %92 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = call i8* @addr_gpa2hva(%struct.kvm_vm* %84, i32 %94)
  %96 = bitcast i8* %95 to %struct.pageDirectoryEntry*
  store %struct.pageDirectoryEntry* %96, %struct.pageDirectoryEntry** %8, align 8
  %97 = load %struct.pageDirectoryEntry*, %struct.pageDirectoryEntry** %8, align 8
  %98 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.pageDirectoryEntry, %struct.pageDirectoryEntry* %97, i64 %99
  %101 = getelementptr inbounds %struct.pageDirectoryEntry, %struct.pageDirectoryEntry* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %83
  br label %141

105:                                              ; preds = %83
  %106 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %107 = load %struct.pageDirectoryEntry*, %struct.pageDirectoryEntry** %8, align 8
  %108 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.pageDirectoryEntry, %struct.pageDirectoryEntry* %107, i64 %109
  %111 = getelementptr inbounds %struct.pageDirectoryEntry, %struct.pageDirectoryEntry* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %114 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %112, %115
  %117 = call i8* @addr_gpa2hva(%struct.kvm_vm* %106, i32 %116)
  %118 = bitcast i8* %117 to %struct.pageTableEntry*
  store %struct.pageTableEntry* %118, %struct.pageTableEntry** %9, align 8
  %119 = load %struct.pageTableEntry*, %struct.pageTableEntry** %9, align 8
  %120 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %121 = load i64, i64* %120, align 16
  %122 = getelementptr inbounds %struct.pageTableEntry, %struct.pageTableEntry* %119, i64 %121
  %123 = getelementptr inbounds %struct.pageTableEntry, %struct.pageTableEntry* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %105
  br label %141

127:                                              ; preds = %105
  %128 = load %struct.pageTableEntry*, %struct.pageTableEntry** %9, align 8
  %129 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %130 = load i64, i64* %129, align 16
  %131 = getelementptr inbounds %struct.pageTableEntry, %struct.pageTableEntry* %128, i64 %130
  %132 = getelementptr inbounds %struct.pageTableEntry, %struct.pageTableEntry* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %135 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %133, %136
  %138 = load i32, i32* %4, align 4
  %139 = and i32 %138, 4095
  %140 = add i32 %137, %139
  ret i32 %140

141:                                              ; preds = %126, %104, %82, %60, %45
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @TEST_ASSERT(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @EXIT_FAILURE, align 4
  %145 = call i32 @exit(i32 %144) #3
  unreachable
}

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32) #1

declare dso_local i8* @addr_gpa2hva(%struct.kvm_vm*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
