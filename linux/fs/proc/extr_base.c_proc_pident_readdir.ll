; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pident_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pident_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.pid_entry = type { i32, i32 }
%struct.task_struct = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@proc_pident_instantiate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*, %struct.pid_entry*, i32)* @proc_pident_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_pident_readdir(%struct.file* %0, %struct.dir_context* %1, %struct.pid_entry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.dir_context*, align 8
  %8 = alloca %struct.pid_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca %struct.pid_entry*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.dir_context* %1, %struct.dir_context** %7, align 8
  store %struct.pid_entry* %2, %struct.pid_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = call i32 @file_inode(%struct.file* %12)
  %14 = call %struct.task_struct* @get_proc_task(i32 %13)
  store %struct.task_struct* %14, %struct.task_struct** %10, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %16 = icmp ne %struct.task_struct* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %76

20:                                               ; preds = %4
  %21 = load %struct.file*, %struct.file** %6, align 8
  %22 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %23 = call i32 @dir_emit_dots(%struct.file* %21, %struct.dir_context* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %73

26:                                               ; preds = %20
  %27 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %28 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add i32 %30, 2
  %32 = icmp uge i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %73

34:                                               ; preds = %26
  %35 = load %struct.pid_entry*, %struct.pid_entry** %8, align 8
  %36 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %37 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub i32 %38, 2
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %35, i64 %40
  store %struct.pid_entry* %41, %struct.pid_entry** %11, align 8
  br label %42

42:                                               ; preds = %69, %34
  %43 = load %struct.pid_entry*, %struct.pid_entry** %11, align 8
  %44 = load %struct.pid_entry*, %struct.pid_entry** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %44, i64 %46
  %48 = icmp ult %struct.pid_entry* %43, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %42
  %50 = load %struct.file*, %struct.file** %6, align 8
  %51 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %52 = load %struct.pid_entry*, %struct.pid_entry** %11, align 8
  %53 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pid_entry*, %struct.pid_entry** %11, align 8
  %56 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @proc_pident_instantiate, align 4
  %59 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %60 = load %struct.pid_entry*, %struct.pid_entry** %11, align 8
  %61 = call i32 @proc_fill_cache(%struct.file* %50, %struct.dir_context* %51, i32 %54, i32 %57, i32 %58, %struct.task_struct* %59, %struct.pid_entry* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %49
  br label %72

64:                                               ; preds = %49
  %65 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %66 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64
  %70 = load %struct.pid_entry*, %struct.pid_entry** %11, align 8
  %71 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %70, i32 1
  store %struct.pid_entry* %71, %struct.pid_entry** %11, align 8
  br label %42

72:                                               ; preds = %63, %42
  br label %73

73:                                               ; preds = %72, %33, %25
  %74 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %75 = call i32 @put_task_struct(%struct.task_struct* %74)
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %73, %17
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.task_struct* @get_proc_task(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @dir_emit_dots(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @proc_fill_cache(%struct.file*, %struct.dir_context*, i32, i32, i32, %struct.task_struct*, %struct.pid_entry*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
