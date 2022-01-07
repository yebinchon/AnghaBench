; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c___access_remote_vm.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c___access_remote_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)* }
%struct.page = type { i32 }

@FOLL_WRITE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__access_remote_vm(%struct.task_struct* %0, %struct.mm_struct* %1, i64 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vm_area_struct*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.page*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %8, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %22 = load i8*, i8** %11, align 8
  store i8* %22, i8** %15, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @FOLL_WRITE, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %16, align 4
  %26 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %27 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %26, i32 0, i32 0
  %28 = call i64 @down_read_killable(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %117

31:                                               ; preds = %6
  br label %32

32:                                               ; preds = %95, %31
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %107

35:                                               ; preds = %32
  store %struct.page* null, %struct.page** %21, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %37 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @get_user_pages_remote(%struct.task_struct* %36, %struct.mm_struct* %37, i64 %38, i32 1, i32 %39, %struct.page** %21, %struct.vm_area_struct** %14, i32* null)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %107

44:                                               ; preds = %35
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %17, align 4
  %46 = load i64, i64* %10, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = and i64 %46, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = load i32, i32* %19, align 4
  %55 = sub nsw i32 %53, %54
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %44
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = load i32, i32* %19, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %17, align 4
  br label %61

61:                                               ; preds = %57, %44
  %62 = load %struct.page*, %struct.page** %21, align 8
  %63 = call i8* @kmap(%struct.page* %62)
  store i8* %63, i8** %20, align 8
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %68 = load %struct.page*, %struct.page** %21, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i8*, i8** %20, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr i8, i8* %70, i64 %72
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @copy_to_user_page(%struct.vm_area_struct* %67, %struct.page* %68, i64 %69, i8* %73, i8* %74, i32 %75)
  %77 = load %struct.page*, %struct.page** %21, align 8
  %78 = call i32 @set_page_dirty_lock(%struct.page* %77)
  br label %90

79:                                               ; preds = %61
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %81 = load %struct.page*, %struct.page** %21, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = load i8*, i8** %20, align 8
  %85 = load i32, i32* %19, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr i8, i8* %84, i64 %86
  %88 = load i32, i32* %17, align 4
  %89 = call i32 @copy_from_user_page(%struct.vm_area_struct* %80, %struct.page* %81, i64 %82, i8* %83, i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %79, %66
  %91 = load %struct.page*, %struct.page** %21, align 8
  %92 = call i32 @kunmap(%struct.page* %91)
  %93 = load %struct.page*, %struct.page** %21, align 8
  %94 = call i32 @put_page(%struct.page* %93)
  br label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %12, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i8*, i8** %11, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr i8, i8* %100, i64 %101
  store i8* %102, i8** %11, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %10, align 8
  br label %32

107:                                              ; preds = %43, %32
  %108 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %109 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %108, i32 0, i32 0
  %110 = call i32 @up_read(i32* %109)
  %111 = load i8*, i8** %11, align 8
  %112 = load i8*, i8** %15, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %107, %30
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i64 @down_read_killable(i32*) #1

declare dso_local i32 @get_user_pages_remote(%struct.task_struct*, %struct.mm_struct*, i64, i32, i32, %struct.page**, %struct.vm_area_struct**, i32*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @copy_to_user_page(%struct.vm_area_struct*, %struct.page*, i64, i8*, i8*, i32) #1

declare dso_local i32 @set_page_dirty_lock(%struct.page*) #1

declare dso_local i32 @copy_from_user_page(%struct.vm_area_struct*, %struct.page*, i64, i8*, i8*, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
