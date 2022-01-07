; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_mkdir_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_mkdir_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32, i32*, i32*, i8* }

@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@proc_dir_operations = common dso_local global i32 0, align 4
@proc_dir_inode_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc_dir_entry* @proc_mkdir_data(i8* %0, i32 %1, %struct.proc_dir_entry* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc_dir_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.proc_dir_entry*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.proc_dir_entry* %2, %struct.proc_dir_entry** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i32, i32* @S_IRUGO, align 4
  %14 = load i32, i32* @S_IXUGO, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %12, %4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @S_IFDIR, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.proc_dir_entry* @__proc_create(%struct.proc_dir_entry** %7, i8* %17, i32 %20, i32 2)
  store %struct.proc_dir_entry* %21, %struct.proc_dir_entry** %9, align 8
  %22 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %23 = icmp ne %struct.proc_dir_entry* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %16
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %27 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %29 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %28, i32 0, i32 2
  store i32* @proc_dir_operations, i32** %29, align 8
  %30 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %31 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %30, i32 0, i32 1
  store i32* @proc_dir_inode_operations, i32** %31, align 8
  %32 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %33 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %37 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %38 = call %struct.proc_dir_entry* @proc_register(%struct.proc_dir_entry* %36, %struct.proc_dir_entry* %37)
  store %struct.proc_dir_entry* %38, %struct.proc_dir_entry** %9, align 8
  %39 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %40 = icmp ne %struct.proc_dir_entry* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %24
  %42 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %43 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %24
  br label %47

47:                                               ; preds = %46, %16
  %48 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  ret %struct.proc_dir_entry* %48
}

declare dso_local %struct.proc_dir_entry* @__proc_create(%struct.proc_dir_entry**, i8*, i32, i32) #1

declare dso_local %struct.proc_dir_entry* @proc_register(%struct.proc_dir_entry*, %struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
