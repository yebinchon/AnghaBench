; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vm_phy_pages_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vm_phy_pages_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i64, i64 }
%struct.userspace_mem_region = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Must allocate at least one page\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"Min physical address not divisible by page size.\0A  paddr_min: 0x%lx page_size: 0x%x\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"No guest physical page available, paddr_min: 0x%lx page_size: 0x%x memslot: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"---- vm dump ----\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_phy_pages_alloc(%struct.kvm_vm* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_vm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.userspace_mem_region*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = icmp ugt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = urem i64 %16, %19
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %22, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i64 %23, i64 %26)
  %28 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.userspace_mem_region* @memslot2region(%struct.kvm_vm* %28, i32 %29)
  store %struct.userspace_mem_region* %30, %struct.userspace_mem_region** %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = lshr i64 %31, %34
  store i64 %35, i64* %10, align 8
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %70, %4
  br label %37

37:                                               ; preds = %57, %36
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %39, %40
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %9, align 8
  %45 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @sparsebit_is_set(i32 %46, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  %51 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %9, align 8
  %52 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @sparsebit_next_set(i32 %53, i64 %54)
  store i64 %55, i64* %10, align 8
  store i64 %55, i64* %11, align 8
  br label %60

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %37

60:                                               ; preds = %50, %37
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %10, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %66, %67
  %69 = icmp ne i64 %65, %68
  br label %70

70:                                               ; preds = %64, %61
  %71 = phi i1 [ false, %61 ], [ %69, %64 ]
  br i1 %71, label %36, label %72

72:                                               ; preds = %70
  %73 = load i64, i64* %10, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load i32, i32* @stderr, align 4
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %79 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @fprintf(i32 %76, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i64 %77, i64 %80, i32 %81)
  %83 = load i32, i32* @stderr, align 4
  %84 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @stderr, align 4
  %86 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %87 = call i32 @vm_dump(i32 %85, %struct.kvm_vm* %86, i32 2)
  %88 = call i32 (...) @abort() #3
  unreachable

89:                                               ; preds = %72
  %90 = load i64, i64* %11, align 8
  store i64 %90, i64* %10, align 8
  br label %91

91:                                               ; preds = %103, %89
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %6, align 8
  %95 = add i64 %93, %94
  %96 = icmp ult i64 %92, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %9, align 8
  %99 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @sparsebit_clear(i32 %100, i64 %101)
  br label %103

103:                                              ; preds = %97
  %104 = load i64, i64* %10, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %10, align 8
  br label %91

106:                                              ; preds = %91
  %107 = load i64, i64* %11, align 8
  %108 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %109 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = mul i64 %107, %110
  ret i64 %111
}

declare dso_local i32 @TEST_ASSERT(i32, i8*, ...) #1

declare dso_local %struct.userspace_mem_region* @memslot2region(%struct.kvm_vm*, i32) #1

declare dso_local i32 @sparsebit_is_set(i32, i64) #1

declare dso_local i64 @sparsebit_next_set(i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @vm_dump(i32, %struct.kvm_vm*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @sparsebit_clear(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
