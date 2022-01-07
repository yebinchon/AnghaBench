; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vm_vaddr_unused_gap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vm_vaddr_unused_gap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"No vaddr of specified pages available, pages: 0x%lx\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"Unexpected, invalid virtual page index range,\0A  pgidx_start: 0x%lx\0A  pages: 0x%lx\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"Unexpected, pages already mapped,\0A  pgidx_start: 0x%lx\0A  pages: 0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vm*, i64, i32)* @vm_vaddr_unused_gap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_vaddr_unused_gap(%struct.kvm_vm* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %12 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %10, %13
  %15 = sub i64 %14, 1
  %16 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = lshr i64 %15, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  %27 = sub i64 %26, 1
  %28 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %29 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = lshr i64 %27, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %36 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = mul i64 %34, %37
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  br label %102

43:                                               ; preds = %3
  %44 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %45 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @sparsebit_is_set_num(i32 %46, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %43
  %52 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %53 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @sparsebit_next_set_num(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %51, %43
  br label %59

59:                                               ; preds = %98, %58
  %60 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %61 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @sparsebit_is_clear_num(i32 %62, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %105

68:                                               ; preds = %59
  %69 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %70 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @sparsebit_next_clear_num(i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %102

78:                                               ; preds = %68
  %79 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %80 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @sparsebit_is_set_num(i32 %81, i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %78
  %87 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %88 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @sparsebit_next_set_num(i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %102

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %78
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %59, label %101

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %101, %95, %77, %42
  %103 = load i32, i32* %8, align 4
  %104 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %103)
  store i32 -1, i32* %4, align 4
  br label %131

105:                                              ; preds = %67
  %106 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %107 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @sparsebit_is_set_num(i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %111, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %116 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @sparsebit_is_clear_num(i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %120, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %122)
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %127 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = mul i64 %125, %128
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %105, %102
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @sparsebit_is_set_num(i32, i32, i32) #1

declare dso_local i32 @sparsebit_next_set_num(i32, i32, i32) #1

declare dso_local i32 @sparsebit_is_clear_num(i32, i32, i32) #1

declare dso_local i32 @sparsebit_next_clear_num(i32, i32, i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
