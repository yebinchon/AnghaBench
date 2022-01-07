; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/ir/extr_ir_loopback.c_lirc_open.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/ir/extr_ir_loopback.c_lirc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@SYSFS_PATH_MAX = common dso_local global i32 0, align 4
@DNAME_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"/sys/class/rc/%s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"cannot open %s: %m\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"lirc\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"cannot find lirc device for %s\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"cannot open: %s: %m\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lirc_open(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %9 = load i32, i32* @DNAME_PATH_MAX, align 4
  %10 = add nsw i32 %8, %9
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = trunc i64 %11 to i32
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = call i32* @opendir(i8* %13)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %22

22:                                               ; preds = %20, %1
  br label %23

23:                                               ; preds = %39, %22
  %24 = load i32*, i32** %6, align 8
  %25 = call %struct.dirent* @readdir(i32* %24)
  store %struct.dirent* %25, %struct.dirent** %3, align 8
  %26 = icmp ne %struct.dirent* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct.dirent*, %struct.dirent** %3, align 8
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = trunc i64 %11 to i32
  %35 = load %struct.dirent*, %struct.dirent** %3, align 8
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @snprintf(i8* %13, i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  br label %40

39:                                               ; preds = %27
  br label %23

40:                                               ; preds = %33, %23
  %41 = load %struct.dirent*, %struct.dirent** %3, align 8
  %42 = icmp ne %struct.dirent* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 @ksft_exit_skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @closedir(i32* %47)
  %49 = load i32, i32* @O_RDWR, align 4
  %50 = load i32, i32* @O_NONBLOCK, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @open(i8* %13, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %13)
  br label %57

57:                                               ; preds = %55, %46
  %58 = load i32, i32* %7, align 4
  %59 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %59)
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @ksft_exit_fail_msg(i8*, i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @ksft_exit_skip(i8*, i8*) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i32 @open(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
