; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_cgroup_helpers.c_setup_cgroup_environment.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_cgroup_helpers.c_setup_cgroup_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CLONE_NEWNS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unshare\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MS_REC = common dso_local global i32 0, align 4
@MS_PRIVATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"mount fakeroot\00", align 1
@CGROUP_MOUNT_PATH = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"cgroup2\00", align 1
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"mount cgroup2\00", align 1
@EEXIST = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"mkdir cgroup work dir\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_cgroup_environment() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @PATH_MAX, align 4
  %6 = add nsw i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = call i32 @format_cgroup_path(i8* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @CLONE_NEWNS, align 4
  %12 = call i64 @unshare(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @log_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %49

16:                                               ; preds = %0
  %17 = load i32, i32* @MS_REC, align 4
  %18 = load i32, i32* @MS_PRIVATE, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @mount(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null, i32 %19, i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %49

24:                                               ; preds = %16
  %25 = load i8*, i8** @CGROUP_MOUNT_PATH, align 8
  %26 = call i64 @mount(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 0, i32* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EBUSY, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %49

34:                                               ; preds = %28, %24
  %35 = call i32 (...) @cleanup_cgroup_environment()
  %36 = call i64 @mkdir(i8* %9, i32 511)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @EEXIST, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @log_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %49

44:                                               ; preds = %38, %34
  %45 = call i64 @enable_all_controllers(i8* %9)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %49

48:                                               ; preds = %44
  store i32 0, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %47, %42, %32, %22, %14
  %50 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @format_cgroup_path(i8*, i8*) #2

declare dso_local i64 @unshare(i32) #2

declare dso_local i32 @log_err(i8*) #2

declare dso_local i64 @mount(i8*, i8*, i8*, i32, i32*) #2

declare dso_local i32 @cleanup_cgroup_environment(...) #2

declare dso_local i64 @mkdir(i8*, i32) #2

declare dso_local i64 @enable_all_controllers(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
