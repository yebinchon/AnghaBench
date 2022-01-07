; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_process_vm_access.c_process_vm_rw_single_vec.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_process_vm_access.c_process_vm_rw_single_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i32 }
%struct.page = type { i32 }
%struct.mm_struct = type { i32 }
%struct.task_struct = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PVM_MAX_KMALLOC_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@FOLL_WRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.iov_iter*, %struct.page**, %struct.mm_struct*, %struct.task_struct*, i32)* @process_vm_rw_single_vec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_vm_rw_single_vec(i64 %0, i64 %1, %struct.iov_iter* %2, %struct.page** %3, %struct.mm_struct* %4, %struct.task_struct* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iov_iter*, align 8
  %12 = alloca %struct.page**, align 8
  %13 = alloca %struct.mm_struct*, align 8
  %14 = alloca %struct.task_struct*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %11, align 8
  store %struct.page** %3, %struct.page*** %12, align 8
  store %struct.mm_struct* %4, %struct.mm_struct** %13, align 8
  store %struct.task_struct* %5, %struct.task_struct** %14, align 8
  store i32 %6, i32* %15, align 4
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @PAGE_MASK, align 8
  %27 = and i64 %25, %26
  store i64 %27, i64* %16, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %16, align 8
  %30 = sub i64 %28, %29
  store i64 %30, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %31 = load i32, i32* @PVM_MAX_KMALLOC_PAGES, align 4
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 8
  store i64 %33, i64* %20, align 8
  store i32 0, i32* %21, align 4
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %140

37:                                               ; preds = %7
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %38, %39
  %41 = sub i64 %40, 1
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = udiv i64 %41, %42
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = udiv i64 %44, %45
  %47 = sub i64 %43, %46
  %48 = add i64 %47, 1
  store i64 %48, i64* %18, align 8
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %37
  %52 = load i32, i32* @FOLL_WRITE, align 4
  %53 = load i32, i32* %21, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %21, align 4
  br label %55

55:                                               ; preds = %51, %37
  br label %56

56:                                               ; preds = %137, %55
  %57 = load i32, i32* %19, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %18, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.iov_iter*, %struct.iov_iter** %11, align 8
  %64 = call i64 @iov_iter_count(%struct.iov_iter* %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %62, %59, %56
  %67 = phi i1 [ false, %59 ], [ false, %56 ], [ %65, %62 ]
  br i1 %67, label %68, label %138

68:                                               ; preds = %66
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* %20, align 8
  %71 = call i32 @min(i64 %69, i64 %70)
  store i32 %71, i32* %22, align 4
  store i32 1, i32* %23, align 4
  %72 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %73 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %72, i32 0, i32 0
  %74 = call i32 @down_read(i32* %73)
  %75 = load %struct.task_struct*, %struct.task_struct** %14, align 8
  %76 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %77 = load i64, i64* %16, align 8
  %78 = load i32, i32* %22, align 4
  %79 = load i32, i32* %21, align 4
  %80 = load %struct.page**, %struct.page*** %12, align 8
  %81 = call i32 @get_user_pages_remote(%struct.task_struct* %75, %struct.mm_struct* %76, i64 %77, i32 %78, i32 %79, %struct.page** %80, i32* null, i32* %23)
  store i32 %81, i32* %22, align 4
  %82 = load i32, i32* %23, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %68
  %85 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %86 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %85, i32 0, i32 0
  %87 = call i32 @up_read(i32* %86)
  br label %88

88:                                               ; preds = %84, %68
  %89 = load i32, i32* %22, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* @EFAULT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %140

94:                                               ; preds = %88
  %95 = load i32, i32* %22, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* @PAGE_SIZE, align 8
  %98 = mul i64 %96, %97
  %99 = load i64, i64* %17, align 8
  %100 = sub i64 %98, %99
  store i64 %100, i64* %24, align 8
  %101 = load i64, i64* %24, align 8
  %102 = load i64, i64* %10, align 8
  %103 = icmp ugt i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i64, i64* %10, align 8
  store i64 %105, i64* %24, align 8
  br label %106

106:                                              ; preds = %104, %94
  %107 = load %struct.page**, %struct.page*** %12, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load i64, i64* %24, align 8
  %110 = load %struct.iov_iter*, %struct.iov_iter** %11, align 8
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @process_vm_rw_pages(%struct.page** %107, i64 %108, i64 %109, %struct.iov_iter* %110, i32 %111)
  store i32 %112, i32* %19, align 4
  %113 = load i64, i64* %24, align 8
  %114 = load i64, i64* %10, align 8
  %115 = sub i64 %114, %113
  store i64 %115, i64* %10, align 8
  store i64 0, i64* %17, align 8
  %116 = load i32, i32* %22, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %18, align 8
  %119 = sub i64 %118, %117
  store i64 %119, i64* %18, align 8
  %120 = load i32, i32* %22, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* @PAGE_SIZE, align 8
  %123 = mul i64 %121, %122
  %124 = load i64, i64* %16, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %16, align 8
  br label %126

126:                                              ; preds = %129, %106
  %127 = load i32, i32* %22, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load %struct.page**, %struct.page*** %12, align 8
  %131 = load i32, i32* %22, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %22, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.page*, %struct.page** %130, i64 %133
  %135 = load %struct.page*, %struct.page** %134, align 8
  %136 = call i32 @put_page(%struct.page* %135)
  br label %126

137:                                              ; preds = %126
  br label %56

138:                                              ; preds = %66
  %139 = load i32, i32* %19, align 4
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %138, %91, %36
  %141 = load i32, i32* %8, align 4
  ret i32 %141
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @get_user_pages_remote(%struct.task_struct*, %struct.mm_struct*, i64, i32, i32, %struct.page**, i32*, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @process_vm_rw_pages(%struct.page**, i64, i64, %struct.iov_iter*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
