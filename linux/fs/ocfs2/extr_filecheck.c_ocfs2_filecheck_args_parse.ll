; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_filecheck.c_ocfs2_filecheck_args_parse.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_filecheck.c_ocfs2_filecheck_args_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_filecheck_args = type { i32, i32, i64 }

@OCFS2_FILECHECK_ARGS_LEN = common dso_local global i64 0, align 8
@OCFS2_FILECHECK_TYPE_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, %struct.ocfs2_filecheck_args*)* @ocfs2_filecheck_args_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_filecheck_args_parse(i8* %0, i8* %1, i64 %2, %struct.ocfs2_filecheck_args* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ocfs2_filecheck_args*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ocfs2_filecheck_args* %3, %struct.ocfs2_filecheck_args** %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ult i64 %12, 1
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @OCFS2_FILECHECK_ARGS_LEN, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %4
  store i32 1, i32* %5, align 4
  br label %51

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @ocfs2_filecheck_type_parse(i8* %20, i32* %11)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %51

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @ocfs2_filecheck_args_get_long(i8* %25, i64 %26, i64* %10)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %51

30:                                               ; preds = %24
  %31 = load i64, i64* %10, align 8
  %32 = icmp ule i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %51

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.ocfs2_filecheck_args*, %struct.ocfs2_filecheck_args** %9, align 8
  %37 = getelementptr inbounds %struct.ocfs2_filecheck_args, %struct.ocfs2_filecheck_args* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @OCFS2_FILECHECK_TYPE_SET, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i64, i64* %10, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.ocfs2_filecheck_args*, %struct.ocfs2_filecheck_args** %9, align 8
  %45 = getelementptr inbounds %struct.ocfs2_filecheck_args, %struct.ocfs2_filecheck_args* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %50

46:                                               ; preds = %34
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.ocfs2_filecheck_args*, %struct.ocfs2_filecheck_args** %9, align 8
  %49 = getelementptr inbounds %struct.ocfs2_filecheck_args, %struct.ocfs2_filecheck_args* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %41
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %33, %29, %23, %18
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @ocfs2_filecheck_type_parse(i8*, i32*) #1

declare dso_local i64 @ocfs2_filecheck_args_get_long(i8*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
