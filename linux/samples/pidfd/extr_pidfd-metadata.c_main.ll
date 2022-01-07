; ModuleID = '/home/carl/AnghaBench/linux/samples/pidfd/extr_pidfd-metadata.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/pidfd/extr_pidfd-metadata.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@CLONE_PIDFD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"CLONE_PIDFD\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"CLONE_PIDFD is not supported by the kernel\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %6, align 4
  %13 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %13, i32* %7, align 4
  %14 = bitcast [4096 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 4096, i1 false)
  %15 = load i32, i32* @CLONE_PIDFD, align 4
  %16 = call i64 @pidfd_clone(i32 %15, i32* %6)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @err(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %62

27:                                               ; preds = %22
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pidfd_metadata_fd(i64 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %62

36:                                               ; preds = %27
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @O_RDONLY, align 4
  %39 = load i32, i32* @O_CLOEXEC, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @openat(i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @close(i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %62

47:                                               ; preds = %36
  %48 = load i32, i32* %11, align 4
  %49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %50 = call i64 @read(i32 %48, i8* %49, i32 4096)
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32, i32* @STDOUT_FILENO, align 4
  %55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %56 = load i64, i64* %12, align 8
  %57 = call i64 @write(i32 %54, i8* %55, i64 %56)
  store i64 %57, i64* %12, align 8
  br label %58

58:                                               ; preds = %53, %47
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @close(i32 %59)
  %61 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %46, %35, %25
  %63 = call i32 @wait(i32* null)
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @exit(i32 %64) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @pidfd_clone(i32, i32*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i32 @pidfd_metadata_fd(i64, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @openat(i32, i8*, i32) #2

declare dso_local i64 @read(i32, i8*, i32) #2

declare dso_local i64 @write(i32, i8*, i64) #2

declare dso_local i32 @wait(i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
