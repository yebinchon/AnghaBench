; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_audit.c_tomoyo_filetype.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_audit.c_tomoyo_filetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IFMT = common dso_local global i32 0, align 4
@tomoyo_condition_keyword = common dso_local global i8** null, align 8
@TOMOYO_TYPE_IS_FILE = common dso_local global i64 0, align 8
@TOMOYO_TYPE_IS_DIRECTORY = common dso_local global i64 0, align 8
@TOMOYO_TYPE_IS_SYMLINK = common dso_local global i64 0, align 8
@TOMOYO_TYPE_IS_FIFO = common dso_local global i64 0, align 8
@TOMOYO_TYPE_IS_SOCKET = common dso_local global i64 0, align 8
@TOMOYO_TYPE_IS_BLOCK_DEV = common dso_local global i64 0, align 8
@TOMOYO_TYPE_IS_CHAR_DEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @tomoyo_filetype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tomoyo_filetype(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @S_IFMT, align 4
  %6 = and i32 %4, %5
  switch i32 %6, label %42 [
    i32 129, label %7
    i32 0, label %7
    i32 132, label %12
    i32 130, label %17
    i32 131, label %22
    i32 128, label %27
    i32 134, label %32
    i32 133, label %37
  ]

7:                                                ; preds = %1, %1
  %8 = load i8**, i8*** @tomoyo_condition_keyword, align 8
  %9 = load i64, i64* @TOMOYO_TYPE_IS_FILE, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %2, align 8
  br label %43

12:                                               ; preds = %1
  %13 = load i8**, i8*** @tomoyo_condition_keyword, align 8
  %14 = load i64, i64* @TOMOYO_TYPE_IS_DIRECTORY, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %2, align 8
  br label %43

17:                                               ; preds = %1
  %18 = load i8**, i8*** @tomoyo_condition_keyword, align 8
  %19 = load i64, i64* @TOMOYO_TYPE_IS_SYMLINK, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %2, align 8
  br label %43

22:                                               ; preds = %1
  %23 = load i8**, i8*** @tomoyo_condition_keyword, align 8
  %24 = load i64, i64* @TOMOYO_TYPE_IS_FIFO, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %2, align 8
  br label %43

27:                                               ; preds = %1
  %28 = load i8**, i8*** @tomoyo_condition_keyword, align 8
  %29 = load i64, i64* @TOMOYO_TYPE_IS_SOCKET, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %2, align 8
  br label %43

32:                                               ; preds = %1
  %33 = load i8**, i8*** @tomoyo_condition_keyword, align 8
  %34 = load i64, i64* @TOMOYO_TYPE_IS_BLOCK_DEV, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %2, align 8
  br label %43

37:                                               ; preds = %1
  %38 = load i8**, i8*** @tomoyo_condition_keyword, align 8
  %39 = load i64, i64* @TOMOYO_TYPE_IS_CHAR_DEV, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %2, align 8
  br label %43

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %43

43:                                               ; preds = %42, %37, %32, %27, %22, %17, %12, %7
  %44 = load i8*, i8** %2, align 8
  ret i8* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
