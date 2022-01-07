; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_get_fd_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_get_fd_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"/proc/self/fd/%d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"can't read link type: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"can't read link type: path too long!\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"bpf-map\00", align 1
@BPF_OBJ_MAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"bpf-prog\00", align 1
@BPF_OBJ_PROG = common dso_local global i32 0, align 4
@BPF_OBJ_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_fd_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [512 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @PATH_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = trunc i64 %10 to i32
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @snprintf(i8* %12, i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %17 = call i32 @readlink(i8* %12, i8* %16, i32 512)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %45

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %26, %10
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %45

30:                                               ; preds = %24
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %32 = call i64 @strstr(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @BPF_OBJ_MAP, align 4
  store i32 %35, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %45

36:                                               ; preds = %30
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %38 = call i64 @strstr(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @BPF_OBJ_PROG, align 4
  store i32 %41, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %45

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* @BPF_OBJ_UNKNOWN, align 4
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %40, %34, %28, %20
  %46 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @readlink(i8*, i8*, i32) #2

declare dso_local i32 @p_err(i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i64 @strstr(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
