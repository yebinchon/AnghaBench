; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_filecheck.c_ocfs2_filecheck_error.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_filecheck.c_ocfs2_filecheck_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ocfs2_filecheck_errs = common dso_local global i8** null, align 8
@OCFS2_FILECHECK_ERR_START = common dso_local global i32 0, align 4
@OCFS2_FILECHECK_ERR_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @ocfs2_filecheck_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ocfs2_filecheck_error(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load i8**, i8*** @ocfs2_filecheck_errs, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8*, i8** %7, i64 %9
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %2, align 8
  br label %32

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @OCFS2_FILECHECK_ERR_START, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @OCFS2_FILECHECK_ERR_END, align 4
  %19 = icmp sgt i32 %17, %18
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ true, %12 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i8**, i8*** @ocfs2_filecheck_errs, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @OCFS2_FILECHECK_ERR_START, align 4
  %27 = sub nsw i32 %25, %26
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %24, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %2, align 8
  br label %32

32:                                               ; preds = %20, %6
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
