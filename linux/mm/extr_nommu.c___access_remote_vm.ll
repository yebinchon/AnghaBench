; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_nommu.c___access_remote_vm.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_nommu.c___access_remote_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i32 }

@FOLL_WRITE = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4

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
  %15 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %8, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* @FOLL_WRITE, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %15, align 4
  %19 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 0
  %21 = call i64 @down_read_killable(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %91

24:                                               ; preds = %6
  %25 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %25, i64 %26)
  store %struct.vm_area_struct* %27, %struct.vm_area_struct** %14, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %29 = icmp ne %struct.vm_area_struct* %28, null
  br i1 %29, label %30, label %85

30:                                               ; preds = %24
  %31 = load i64, i64* %10, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %31, %33
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp uge i64 %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %39, %30
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @VM_MAYWRITE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @copy_to_user_page(%struct.vm_area_struct* %57, i32* null, i64 %58, i8* %60, i8* %61, i32 %62)
  br label %84

64:                                               ; preds = %49, %46
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %64
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @VM_MAYREAD, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i64, i64* %10, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @copy_from_user_page(%struct.vm_area_struct* %75, i32* null, i64 %76, i8* %77, i8* %79, i32 %80)
  br label %83

82:                                               ; preds = %67, %64
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %82, %74
  br label %84

84:                                               ; preds = %83, %56
  br label %86

85:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %85, %84
  %87 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %88 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %87, i32 0, i32 0
  %89 = call i32 @up_read(i32* %88)
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %86, %23
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i64 @down_read_killable(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @copy_to_user_page(%struct.vm_area_struct*, i32*, i64, i8*, i8*, i32) #1

declare dso_local i32 @copy_from_user_page(%struct.vm_area_struct*, i32*, i64, i8*, i8*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
