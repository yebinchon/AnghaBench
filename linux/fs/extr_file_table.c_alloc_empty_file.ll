; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_file_table.c_alloc_empty_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_file_table.c_alloc_empty_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.file = type { i32 }
%struct.cred = type { i32 }

@alloc_empty_file.old_max = internal global i64 0, align 8
@files_stat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@nr_files = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"VFS: file-max limit %lu reached\0A\00", align 1
@ENFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @alloc_empty_file(i32 %0, %struct.cred* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.file*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cred* %1, %struct.cred** %5, align 8
  %7 = call i64 (...) @get_nr_files()
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @files_stat, i32 0, i32 0), align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %12 = call i32 @capable(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = call i64 @percpu_counter_sum_positive(i32* @nr_files)
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @files_stat, i32 0, i32 0), align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %31

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %10, %2
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.cred*, %struct.cred** %5, align 8
  %23 = call %struct.file* @__alloc_file(i32 %21, %struct.cred* %22)
  store %struct.file* %23, %struct.file** %6, align 8
  %24 = load %struct.file*, %struct.file** %6, align 8
  %25 = call i32 @IS_ERR(%struct.file* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = call i32 @percpu_counter_inc(i32* @nr_files)
  br label %29

29:                                               ; preds = %27, %20
  %30 = load %struct.file*, %struct.file** %6, align 8
  store %struct.file* %30, %struct.file** %3, align 8
  br label %43

31:                                               ; preds = %18
  %32 = call i64 (...) @get_nr_files()
  %33 = load i64, i64* @alloc_empty_file.old_max, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = call i32 (...) @get_max_files()
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = call i64 (...) @get_nr_files()
  store i64 %38, i64* @alloc_empty_file.old_max, align 8
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @ENFILE, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.file* @ERR_PTR(i32 %41)
  store %struct.file* %42, %struct.file** %3, align 8
  br label %43

43:                                               ; preds = %39, %29
  %44 = load %struct.file*, %struct.file** %3, align 8
  ret %struct.file* %44
}

declare dso_local i64 @get_nr_files(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @percpu_counter_sum_positive(i32*) #1

declare dso_local %struct.file* @__alloc_file(i32, %struct.cred*) #1

declare dso_local i32 @IS_ERR(%struct.file*) #1

declare dso_local i32 @percpu_counter_inc(i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @get_max_files(...) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
