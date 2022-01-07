; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_util.c_get_cmdline.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_util.c_get_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { i64, i64, i64, i64, i32 }

@FOLL_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_cmdline(%struct.task_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %14)
  store %struct.mm_struct* %15, %struct.mm_struct** %9, align 8
  %16 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %17 = icmp ne %struct.mm_struct* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %120

19:                                               ; preds = %3
  %20 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %117

25:                                               ; preds = %19
  %26 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %27 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %26, i32 0, i32 4
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %30 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  %32 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %33 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %36 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %12, align 8
  %38 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %39 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %13, align 8
  %41 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %42 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %41, i32 0, i32 4
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %10, align 8
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %25
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %25
  %54 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @FOLL_FORCE, align 4
  %59 = call i32 @access_process_vm(%struct.task_struct* %54, i64 %55, i8* %56, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %116

62:                                               ; preds = %53
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %116

71:                                               ; preds = %62
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %116

75:                                               ; preds = %71
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i8* @strnlen(i8* %76, i32 %77)
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %7, align 4
  br label %115

85:                                               ; preds = %75
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %12, align 8
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = sub nsw i32 %91, %92
  %94 = icmp ugt i32 %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = sub nsw i32 %96, %97
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %95, %85
  %100 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @FOLL_FORCE, align 4
  %108 = call i32 @access_process_vm(%struct.task_struct* %100, i64 %101, i8* %105, i32 %106, i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %7, align 4
  %111 = load i8*, i8** %5, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i8* @strnlen(i8* %111, i32 %112)
  %114 = ptrtoint i8* %113 to i32
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %99, %83
  br label %116

116:                                              ; preds = %115, %71, %62, %53
  br label %117

117:                                              ; preds = %116, %24
  %118 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %119 = call i32 @mmput(%struct.mm_struct* %118)
  br label %120

120:                                              ; preds = %117, %18
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @access_process_vm(%struct.task_struct*, i64, i8*, i32, i32) #1

declare dso_local i8* @strnlen(i8*, i32) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
