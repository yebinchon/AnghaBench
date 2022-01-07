; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/exec/extr_recursion-depth.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/exec/extr_recursion-depth.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLONE_NEWNS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"error: unshare, errno %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MS_PRIVATE = common dso_local global i32 0, align 4
@MS_REC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"error: mount '/', errno %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ramfs\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"error: mount ramfs, errno %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"/tmp/1\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"error: creat, errno %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"#!/tmp/1\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"error: write, errno %d\0A\00", align 1
@ELOOP = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"error: execve, rv %d, errno %d\0A\00", align 1
@FILENAME = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @CLONE_NEWNS, align 4
  %5 = call i32 @unshare(i32 %4)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %25

7:                                                ; preds = %0
  %8 = load i64, i64* @errno, align 8
  %9 = load i64, i64* @ENOSYS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* @errno, align 8
  %13 = load i64, i64* @EPERM, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11, %7
  %16 = load i32, i32* @stderr, align 4
  %17 = load i64, i64* @errno, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 4, i32* %1, align 4
  br label %80

20:                                               ; preds = %11
  %21 = load i32, i32* @stderr, align 4
  %22 = load i64, i64* @errno, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 1, i32* %1, align 4
  br label %80

25:                                               ; preds = %0
  %26 = load i32, i32* @MS_PRIVATE, align 4
  %27 = load i32, i32* @MS_REC, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @mount(i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* null, i32 %28, i32* null)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* @stderr, align 4
  %33 = load i64, i64* @errno, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 1, i32* %1, align 4
  br label %80

36:                                               ; preds = %25
  %37 = call i32 @mount(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* null)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = load i64, i64* @errno, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  store i32 1, i32* %1, align 4
  br label %80

44:                                               ; preds = %36
  %45 = call i32 @creat(i32 ptrtoint ([7 x i8]* @.str.6 to i32), i32 448)
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* @stderr, align 4
  %50 = load i64, i64* @errno, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %51)
  store i32 1, i32* %1, align 4
  br label %80

53:                                               ; preds = %44
  %54 = load i32, i32* %2, align 4
  %55 = call i64 @strlen(i32 ptrtoint ([10 x i8]* @.str.8 to i32))
  %56 = call i64 @write(i32 %54, i32 ptrtoint ([10 x i8]* @.str.8 to i32), i64 %55)
  %57 = call i64 @strlen(i32 ptrtoint ([10 x i8]* @.str.8 to i32))
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i32, i32* @stderr, align 4
  %61 = load i64, i64* @errno, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %62)
  store i32 1, i32* %1, align 4
  br label %80

64:                                               ; preds = %53
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @close(i32 %65)
  %67 = call i32 @execve(i32 ptrtoint ([7 x i8]* @.str.6 to i32), i32* null, i32* null)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i64, i64* @errno, align 8
  %72 = load i64, i64* @ELOOP, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, i32* %1, align 4
  br label %80

75:                                               ; preds = %70, %64
  %76 = load i32, i32* @stderr, align 4
  %77 = load i32, i32* %3, align 4
  %78 = load i64, i64* @errno, align 8
  %79 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %77, i64 %78)
  store i32 1, i32* %1, align 4
  br label %80

80:                                               ; preds = %75, %74, %59, %48, %39, %31, %20, %15
  %81 = load i32, i32* %1, align 4
  ret i32 %81
}

declare dso_local i32 @unshare(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @mount(i32*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @creat(i32, i32) #1

declare dso_local i64 @write(i32, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @execve(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
