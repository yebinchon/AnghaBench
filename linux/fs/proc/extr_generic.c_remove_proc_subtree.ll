; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_remove_proc_subtree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_remove_proc_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i64, i32, %struct.proc_dir_entry*, i32, i32 }

@proc_subdir_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_proc_subtree(i8* %0, %struct.proc_dir_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca %struct.proc_dir_entry*, align 8
  %8 = alloca %struct.proc_dir_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.proc_dir_entry* %1, %struct.proc_dir_entry** %5, align 8
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %6, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %9, align 8
  %12 = call i32 @write_lock(i32* @proc_subdir_lock)
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @__xlate_proc_name(i8* %13, %struct.proc_dir_entry** %5, i8** %9)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i32 @write_unlock(i32* @proc_subdir_lock)
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %84

20:                                               ; preds = %2
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call %struct.proc_dir_entry* @pde_subdir_find(%struct.proc_dir_entry* %23, i8* %24, i32 %25)
  store %struct.proc_dir_entry* %26, %struct.proc_dir_entry** %6, align 8
  %27 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %28 = icmp ne %struct.proc_dir_entry* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = call i32 @write_unlock(i32* @proc_subdir_lock)
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %84

33:                                               ; preds = %20
  %34 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %35 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %34, i32 0, i32 4
  %36 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %37 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %36, i32 0, i32 3
  %38 = call i32 @rb_erase(i32* %35, i32* %37)
  %39 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  store %struct.proc_dir_entry* %39, %struct.proc_dir_entry** %7, align 8
  br label %40

40:                                               ; preds = %33, %45, %76
  %41 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %42 = call %struct.proc_dir_entry* @pde_subdir_first(%struct.proc_dir_entry* %41)
  store %struct.proc_dir_entry* %42, %struct.proc_dir_entry** %8, align 8
  %43 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %44 = icmp ne %struct.proc_dir_entry* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %47 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %46, i32 0, i32 4
  %48 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %49 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %48, i32 0, i32 3
  %50 = call i32 @rb_erase(i32* %47, i32* %49)
  %51 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  store %struct.proc_dir_entry* %51, %struct.proc_dir_entry** %7, align 8
  br label %40

52:                                               ; preds = %40
  %53 = call i32 @write_unlock(i32* @proc_subdir_lock)
  %54 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %55 = call i32 @proc_entry_rundown(%struct.proc_dir_entry* %54)
  %56 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %57 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %56, i32 0, i32 2
  %58 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %57, align 8
  store %struct.proc_dir_entry* %58, %struct.proc_dir_entry** %8, align 8
  %59 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %60 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @S_ISDIR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %66 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, -1
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %64, %52
  %70 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %71 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %73 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %74 = icmp eq %struct.proc_dir_entry* %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %81

76:                                               ; preds = %69
  %77 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %78 = call i32 @pde_put(%struct.proc_dir_entry* %77)
  %79 = call i32 @write_lock(i32* @proc_subdir_lock)
  %80 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  store %struct.proc_dir_entry* %80, %struct.proc_dir_entry** %7, align 8
  br label %40

81:                                               ; preds = %75
  %82 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %83 = call i32 @pde_put(%struct.proc_dir_entry* %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %29, %16
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i64 @__xlate_proc_name(i8*, %struct.proc_dir_entry**, i8**) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.proc_dir_entry* @pde_subdir_find(%struct.proc_dir_entry*, i8*, i32) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local %struct.proc_dir_entry* @pde_subdir_first(%struct.proc_dir_entry*) #1

declare dso_local i32 @proc_entry_rundown(%struct.proc_dir_entry*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @pde_put(%struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
