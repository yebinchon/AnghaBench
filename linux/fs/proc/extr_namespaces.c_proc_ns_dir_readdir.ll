; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_namespaces.c_proc_ns_dir_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_namespaces.c_proc_ns_dir_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_ns_operations = type { i32 }
%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.task_struct = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ns_entries = common dso_local global %struct.proc_ns_operations** null, align 8
@proc_ns_instantiate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @proc_ns_dir_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_ns_dir_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.proc_ns_operations**, align 8
  %8 = alloca %struct.proc_ns_operations**, align 8
  %9 = alloca %struct.proc_ns_operations*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call i32 @file_inode(%struct.file* %10)
  %12 = call %struct.task_struct* @get_proc_task(i32 %11)
  store %struct.task_struct* %12, %struct.task_struct** %6, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %14 = icmp ne %struct.task_struct* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %80

18:                                               ; preds = %2
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %21 = call i32 @dir_emit_dots(%struct.file* %19, %struct.dir_context* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %77

24:                                               ; preds = %18
  %25 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %26 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** @ns_entries, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.proc_ns_operations** %28)
  %30 = add nsw i32 2, %29
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %77

33:                                               ; preds = %24
  %34 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** @ns_entries, align 8
  %35 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %36 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.proc_ns_operations*, %struct.proc_ns_operations** %34, i64 %39
  store %struct.proc_ns_operations** %40, %struct.proc_ns_operations*** %7, align 8
  %41 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** @ns_entries, align 8
  %42 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** @ns_entries, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.proc_ns_operations** %42)
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.proc_ns_operations*, %struct.proc_ns_operations** %41, i64 %45
  store %struct.proc_ns_operations** %46, %struct.proc_ns_operations*** %8, align 8
  br label %47

47:                                               ; preds = %69, %33
  %48 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** %7, align 8
  %49 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** %8, align 8
  %50 = icmp ule %struct.proc_ns_operations** %48, %49
  br i1 %50, label %51, label %76

51:                                               ; preds = %47
  %52 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** %7, align 8
  %53 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %52, align 8
  store %struct.proc_ns_operations* %53, %struct.proc_ns_operations** %9, align 8
  %54 = load %struct.file*, %struct.file** %4, align 8
  %55 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %56 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %9, align 8
  %57 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %9, align 8
  %60 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strlen(i32 %61)
  %63 = load i32, i32* @proc_ns_instantiate, align 4
  %64 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %65 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %9, align 8
  %66 = call i32 @proc_fill_cache(%struct.file* %54, %struct.dir_context* %55, i32 %58, i32 %62, i32 %63, %struct.task_struct* %64, %struct.proc_ns_operations* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %51
  br label %76

69:                                               ; preds = %51
  %70 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %71 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.proc_ns_operations**, %struct.proc_ns_operations*** %7, align 8
  %75 = getelementptr inbounds %struct.proc_ns_operations*, %struct.proc_ns_operations** %74, i32 1
  store %struct.proc_ns_operations** %75, %struct.proc_ns_operations*** %7, align 8
  br label %47

76:                                               ; preds = %68, %47
  br label %77

77:                                               ; preds = %76, %32, %23
  %78 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %79 = call i32 @put_task_struct(%struct.task_struct* %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %15
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.task_struct* @get_proc_task(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @dir_emit_dots(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.proc_ns_operations**) #1

declare dso_local i32 @proc_fill_cache(%struct.file*, %struct.dir_context*, i32, i32, i32, %struct.task_struct*, %struct.proc_ns_operations*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
