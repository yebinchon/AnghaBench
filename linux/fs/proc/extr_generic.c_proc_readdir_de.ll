; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_readdir_de.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_readdir_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.proc_dir_entry = type { i32, i32, i32, i32 }

@proc_subdir_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_readdir_de(%struct.file* %0, %struct.dir_context* %1, %struct.proc_dir_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dir_context*, align 8
  %7 = alloca %struct.proc_dir_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc_dir_entry*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.dir_context* %1, %struct.dir_context** %6, align 8
  store %struct.proc_dir_entry* %2, %struct.proc_dir_entry** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %12 = call i32 @dir_emit_dots(%struct.file* %10, %struct.dir_context* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %77

15:                                               ; preds = %3
  %16 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %17 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 2
  store i32 %19, i32* %8, align 4
  %20 = call i32 @read_lock(i32* @proc_subdir_lock)
  %21 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %22 = call %struct.proc_dir_entry* @pde_subdir_first(%struct.proc_dir_entry* %21)
  store %struct.proc_dir_entry* %22, %struct.proc_dir_entry** %7, align 8
  br label %23

23:                                               ; preds = %32, %15
  %24 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %25 = icmp ne %struct.proc_dir_entry* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 @read_unlock(i32* @proc_subdir_lock)
  store i32 0, i32* %4, align 4
  br label %77

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %37

32:                                               ; preds = %28
  %33 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %34 = call %struct.proc_dir_entry* @pde_subdir_next(%struct.proc_dir_entry* %33)
  store %struct.proc_dir_entry* %34, %struct.proc_dir_entry** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %8, align 4
  br label %23

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %72, %37
  %39 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %40 = call i32 @pde_get(%struct.proc_dir_entry* %39)
  %41 = call i32 @read_unlock(i32* @proc_subdir_lock)
  %42 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %43 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %44 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %47 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %50 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %53 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 12
  %56 = call i32 @dir_emit(%struct.dir_context* %42, i32 %45, i32 %48, i32 %51, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %38
  %59 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %60 = call i32 @pde_put(%struct.proc_dir_entry* %59)
  store i32 0, i32* %4, align 4
  br label %77

61:                                               ; preds = %38
  %62 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %63 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = call i32 @read_lock(i32* @proc_subdir_lock)
  %67 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %68 = call %struct.proc_dir_entry* @pde_subdir_next(%struct.proc_dir_entry* %67)
  store %struct.proc_dir_entry* %68, %struct.proc_dir_entry** %9, align 8
  %69 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %70 = call i32 @pde_put(%struct.proc_dir_entry* %69)
  %71 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  store %struct.proc_dir_entry* %71, %struct.proc_dir_entry** %7, align 8
  br label %72

72:                                               ; preds = %61
  %73 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %74 = icmp ne %struct.proc_dir_entry* %73, null
  br i1 %74, label %38, label %75

75:                                               ; preds = %72
  %76 = call i32 @read_unlock(i32* @proc_subdir_lock)
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %58, %26, %14
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @dir_emit_dots(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.proc_dir_entry* @pde_subdir_first(%struct.proc_dir_entry*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local %struct.proc_dir_entry* @pde_subdir_next(%struct.proc_dir_entry*) #1

declare dso_local i32 @pde_get(%struct.proc_dir_entry*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i32, i32, i32, i32) #1

declare dso_local i32 @pde_put(%struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
