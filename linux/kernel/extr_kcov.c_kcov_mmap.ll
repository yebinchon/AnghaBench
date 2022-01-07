; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kcov.c_kcov_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kcov.c_kcov_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.kcov* }
%struct.kcov = type { i32, i64, i32, i8* }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@KCOV_MODE_INIT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"vm_insert_page() failed\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @kcov_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcov_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kcov*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.page*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.kcov*, %struct.kcov** %15, align 8
  store %struct.kcov* %16, %struct.kcov** %8, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %19, %22
  %24 = call i8* @vmalloc_user(i64 %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %115

30:                                               ; preds = %2
  %31 = load %struct.kcov*, %struct.kcov** %8, align 8
  %32 = getelementptr inbounds %struct.kcov, %struct.kcov* %31, i32 0, i32 2
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.kcov*, %struct.kcov** %8, align 8
  %35 = getelementptr inbounds %struct.kcov, %struct.kcov* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  store i64 %38, i64* %9, align 8
  %39 = load %struct.kcov*, %struct.kcov** %8, align 8
  %40 = getelementptr inbounds %struct.kcov, %struct.kcov* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @KCOV_MODE_INIT, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %59, label %44

44:                                               ; preds = %30
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %52, %55
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %49, %44, %30
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %108

62:                                               ; preds = %49
  %63 = load %struct.kcov*, %struct.kcov** %8, align 8
  %64 = getelementptr inbounds %struct.kcov, %struct.kcov* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %107, label %67

67:                                               ; preds = %62
  %68 = load i8*, i8** %7, align 8
  %69 = load %struct.kcov*, %struct.kcov** %8, align 8
  %70 = getelementptr inbounds %struct.kcov, %struct.kcov* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @VM_DONTEXPAND, align 4
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.kcov*, %struct.kcov** %8, align 8
  %77 = getelementptr inbounds %struct.kcov, %struct.kcov* %76, i32 0, i32 2
  %78 = call i32 @spin_unlock(i32* %77)
  store i64 0, i64* %10, align 8
  br label %79

79:                                               ; preds = %102, %67
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %79
  %84 = load %struct.kcov*, %struct.kcov** %8, align 8
  %85 = getelementptr inbounds %struct.kcov, %struct.kcov* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr i8, i8* %86, i64 %87
  %89 = call %struct.page* @vmalloc_to_page(i8* %88)
  store %struct.page* %89, %struct.page** %11, align 8
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %93, %94
  %96 = load %struct.page*, %struct.page** %11, align 8
  %97 = call i64 @vm_insert_page(%struct.vm_area_struct* %90, i64 %95, %struct.page* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %83
  %100 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %83
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* @PAGE_SIZE, align 8
  %104 = load i64, i64* %10, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %10, align 8
  br label %79

106:                                              ; preds = %79
  store i32 0, i32* %3, align 4
  br label %115

107:                                              ; preds = %62
  br label %108

108:                                              ; preds = %107, %59
  %109 = load %struct.kcov*, %struct.kcov** %8, align 8
  %110 = getelementptr inbounds %struct.kcov, %struct.kcov* %109, i32 0, i32 2
  %111 = call i32 @spin_unlock(i32* %110)
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @vfree(i8* %112)
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %108, %106, %27
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i8* @vmalloc_user(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local i64 @vm_insert_page(%struct.vm_area_struct*, i64, %struct.page*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
