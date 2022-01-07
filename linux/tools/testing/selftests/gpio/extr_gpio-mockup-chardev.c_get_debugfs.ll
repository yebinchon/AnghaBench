; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/gpio/extr_gpio-mockup-chardev.c_get_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/gpio/extr_gpio-mockup-chardev.c_get_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libmnt_context = type { i32 }
%struct.libmnt_table = type { i32 }
%struct.libmnt_iter = type { i32 }
%struct.libmnt_fs = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"libmount context allocation failed\00", align 1
@MNT_ITER_FORWARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to initialize libmount iterator\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"failed to read mtab\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"debugfs\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s/gpio\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to format string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @get_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_debugfs(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.libmnt_context*, align 8
  %5 = alloca %struct.libmnt_table*, align 8
  %6 = alloca %struct.libmnt_iter*, align 8
  %7 = alloca %struct.libmnt_fs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.libmnt_iter* null, %struct.libmnt_iter** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = call %struct.libmnt_context* (...) @mnt_new_context()
  store %struct.libmnt_context* %11, %struct.libmnt_context** %4, align 8
  %12 = load %struct.libmnt_context*, %struct.libmnt_context** %4, align 8
  %13 = icmp ne %struct.libmnt_context* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EXIT_FAILURE, align 4
  %16 = call i32 @err(i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* @MNT_ITER_FORWARD, align 4
  %19 = call %struct.libmnt_iter* @mnt_new_iter(i32 %18)
  store %struct.libmnt_iter* %19, %struct.libmnt_iter** %6, align 8
  %20 = load %struct.libmnt_iter*, %struct.libmnt_iter** %6, align 8
  %21 = icmp ne %struct.libmnt_iter* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EXIT_FAILURE, align 4
  %24 = call i32 @err(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.libmnt_context*, %struct.libmnt_context** %4, align 8
  %27 = call i64 @mnt_context_get_mtab(%struct.libmnt_context* %26, %struct.libmnt_table** %5)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  %31 = call i32 @err(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %25
  br label %33

33:                                               ; preds = %45, %32
  %34 = load %struct.libmnt_table*, %struct.libmnt_table** %5, align 8
  %35 = load %struct.libmnt_iter*, %struct.libmnt_iter** %6, align 8
  %36 = call i64 @mnt_table_next_fs(%struct.libmnt_table* %34, %struct.libmnt_iter* %35, %struct.libmnt_fs** %7)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.libmnt_fs*, %struct.libmnt_fs** %7, align 8
  %40 = call i8* @mnt_fs_get_fstype(%struct.libmnt_fs* %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i32 1, i32* %8, align 4
  br label %46

45:                                               ; preds = %38
  br label %33

46:                                               ; preds = %44, %33
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i8**, i8*** %3, align 8
  %51 = load %struct.libmnt_fs*, %struct.libmnt_fs** %7, align 8
  %52 = call i32 @mnt_fs_get_target(%struct.libmnt_fs* %51)
  %53 = call i32 @asprintf(i8** %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* @EXIT_FAILURE, align 4
  %58 = call i32 @err(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %49
  br label %60

60:                                               ; preds = %59, %46
  %61 = load %struct.libmnt_iter*, %struct.libmnt_iter** %6, align 8
  %62 = call i32 @mnt_free_iter(%struct.libmnt_iter* %61)
  %63 = load %struct.libmnt_context*, %struct.libmnt_context** %4, align 8
  %64 = call i32 @mnt_free_context(%struct.libmnt_context* %63)
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  store i32 -1, i32* %2, align 4
  br label %69

68:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.libmnt_context* @mnt_new_context(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.libmnt_iter* @mnt_new_iter(i32) #1

declare dso_local i64 @mnt_context_get_mtab(%struct.libmnt_context*, %struct.libmnt_table**) #1

declare dso_local i64 @mnt_table_next_fs(%struct.libmnt_table*, %struct.libmnt_iter*, %struct.libmnt_fs**) #1

declare dso_local i8* @mnt_fs_get_fstype(%struct.libmnt_fs*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @mnt_fs_get_target(%struct.libmnt_fs*) #1

declare dso_local i32 @mnt_free_iter(%struct.libmnt_iter*) #1

declare dso_local i32 @mnt_free_context(%struct.libmnt_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
