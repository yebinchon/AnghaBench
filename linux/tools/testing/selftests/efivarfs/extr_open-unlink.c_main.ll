; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/efivarfs/extr_open-unlink.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/efivarfs/extr_open-unlink.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"usage: %s <path>\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"open(O_WRONLY)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"ioctl(FS_IOC_GETFLAGS)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"ioctl(FS_IOC_SETFLAGS)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"reading from an unlinked variable shouldn't be possible\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [5 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %18, i32* %3, align 4
  br label %97

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %24 = bitcast i8* %23 to i32*
  store i32 7, i32* %24, align 1
  %25 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 4
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @O_WRONLY, align 4
  %28 = load i32, i32* @O_CREAT, align 4
  %29 = or i32 %27, %28
  %30 = call i32 (i8*, i32, ...) @open(i8* %26, i32 %29, i32 384)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %35, i32* %3, align 4
  br label %97

36:                                               ; preds = %19
  %37 = load i32, i32* %8, align 4
  %38 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %39 = call i32 @write(i32 %37, i8* %38, i32 5)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 5
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %45, i32* %3, align 4
  br label %97

46:                                               ; preds = %36
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @close(i32 %47)
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @get_immutable(i8* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %55, i32* %3, align 4
  br label %97

56:                                               ; preds = %46
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @set_immutable(i8* %60, i32 0)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %66, i32* %3, align 4
  br label %97

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %56
  br label %69

69:                                               ; preds = %68
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* @O_RDONLY, align 4
  %72 = call i32 (i8*, i32, ...) @open(i8* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %77, i32* %3, align 4
  br label %97

78:                                               ; preds = %69
  %79 = load i8*, i8** %6, align 8
  %80 = call i64 @unlink(i8* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %84 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %84, i32* %3, align 4
  br label %97

85:                                               ; preds = %78
  %86 = load i32, i32* %8, align 4
  %87 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %88 = call i32 @read(i32 %86, i8* %87, i32 5)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i32, i32* @stderr, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  %94 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %94, i32* %3, align 4
  br label %97

95:                                               ; preds = %85
  %96 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %91, %82, %75, %64, %53, %43, %33, %12
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @get_immutable(i8*) #1

declare dso_local i32 @set_immutable(i8*, i32) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
