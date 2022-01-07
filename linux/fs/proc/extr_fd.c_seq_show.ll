; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.files_struct = type { i32 }
%struct.file = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i32 (%struct.seq_file*, %struct.file*)* }
%struct.TYPE_4__ = type { i32 }
%struct.task_struct = type { i32 }
%struct.fdtable = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"pos:\09%lli\0Aflags:\090%o\0Amnt_id:\09%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.files_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fdtable*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.files_struct* null, %struct.files_struct** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  store %struct.file* null, %struct.file** %9, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %16 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.task_struct* @get_proc_task(i32 %17)
  store %struct.task_struct* %18, %struct.task_struct** %10, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %20 = icmp ne %struct.task_struct* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %114

24:                                               ; preds = %2
  %25 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %26 = call %struct.files_struct* @get_files_struct(%struct.task_struct* %25)
  store %struct.files_struct* %26, %struct.files_struct** %6, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %28 = call i32 @put_task_struct(%struct.task_struct* %27)
  %29 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %30 = icmp ne %struct.files_struct* %29, null
  br i1 %30, label %31, label %67

31:                                               ; preds = %24
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @proc_fd(i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %37 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call %struct.file* @fcheck_files(%struct.files_struct* %39, i32 %40)
  store %struct.file* %41, %struct.file** %9, align 8
  %42 = load %struct.file*, %struct.file** %9, align 8
  %43 = icmp ne %struct.file* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %31
  %45 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %46 = call %struct.fdtable* @files_fdtable(%struct.files_struct* %45)
  store %struct.fdtable* %46, %struct.fdtable** %12, align 8
  %47 = load %struct.file*, %struct.file** %9, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.fdtable*, %struct.fdtable** %12, align 8
  %52 = call i64 @close_on_exec(i32 %50, %struct.fdtable* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32, i32* @O_CLOEXEC, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %54, %44
  %59 = load %struct.file*, %struct.file** %9, align 8
  %60 = call i32 @get_file(%struct.file* %59)
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %31
  %62 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %63 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %66 = call i32 @put_files_struct(%struct.files_struct* %65)
  br label %67

67:                                               ; preds = %61, %24
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %114

72:                                               ; preds = %67
  %73 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %74 = load %struct.file*, %struct.file** %9, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.file*, %struct.file** %9, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.TYPE_6__* @real_mount(i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %76, i32 %77, i32 %84)
  %86 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %87 = load %struct.file*, %struct.file** %9, align 8
  %88 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %89 = call i32 @show_fd_locks(%struct.seq_file* %86, %struct.file* %87, %struct.files_struct* %88)
  %90 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %91 = call i64 @seq_has_overflowed(%struct.seq_file* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %72
  br label %111

94:                                               ; preds = %72
  %95 = load %struct.file*, %struct.file** %9, align 8
  %96 = getelementptr inbounds %struct.file, %struct.file* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32 (%struct.seq_file*, %struct.file*)*, i32 (%struct.seq_file*, %struct.file*)** %98, align 8
  %100 = icmp ne i32 (%struct.seq_file*, %struct.file*)* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %94
  %102 = load %struct.file*, %struct.file** %9, align 8
  %103 = getelementptr inbounds %struct.file, %struct.file* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32 (%struct.seq_file*, %struct.file*)*, i32 (%struct.seq_file*, %struct.file*)** %105, align 8
  %107 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %108 = load %struct.file*, %struct.file** %9, align 8
  %109 = call i32 %106(%struct.seq_file* %107, %struct.file* %108)
  br label %110

110:                                              ; preds = %101, %94
  br label %111

111:                                              ; preds = %110, %93
  %112 = load %struct.file*, %struct.file** %9, align 8
  %113 = call i32 @fput(%struct.file* %112)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %111, %70, %21
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.task_struct* @get_proc_task(i32) #1

declare dso_local %struct.files_struct* @get_files_struct(%struct.task_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @proc_fd(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.file* @fcheck_files(%struct.files_struct*, i32) #1

declare dso_local %struct.fdtable* @files_fdtable(%struct.files_struct*) #1

declare dso_local i64 @close_on_exec(i32, %struct.fdtable*) #1

declare dso_local i32 @get_file(%struct.file*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_files_struct(%struct.files_struct*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i32, i32) #1

declare dso_local %struct.TYPE_6__* @real_mount(i32) #1

declare dso_local i32 @show_fd_locks(%struct.seq_file*, %struct.file*, %struct.files_struct*) #1

declare dso_local i64 @seq_has_overflowed(%struct.seq_file*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
