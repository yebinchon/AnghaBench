; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_cache_lib.c_nfs_cache_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_cache_lib.c_nfs_cache_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i8* }

@nfs_cache_upcall.envp = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [7 x i8] c"HOME=/\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"TERM=linux\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"PATH=/sbin:/usr/sbin:/bin:/usr/bin\00", align 1
@nfs_cache_getent_prog = common dso_local global i8* null, align 8
@EACCES = common dso_local global i32 0, align 4
@UMH_WAIT_EXEC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_cache_upcall(%struct.cache_detail* %0, i8* %1) #0 {
  %3 = alloca %struct.cache_detail*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [4 x i8*], align 16
  %6 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %8 = load i8*, i8** @nfs_cache_getent_prog, align 8
  store i8* %8, i8** %7, align 8
  %9 = getelementptr inbounds i8*, i8** %7, i64 1
  %10 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %11 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %9, align 8
  %13 = getelementptr inbounds i8*, i8** %9, i64 1
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 1
  store i8* null, i8** %15, align 8
  %16 = load i32, i32* @EACCES, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  %18 = load i8*, i8** @nfs_cache_getent_prog, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %43

24:                                               ; preds = %2
  %25 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %26 = load i8*, i8** %25, align 16
  %27 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %28 = load i32, i32* @UMH_WAIT_EXEC, align 4
  %29 = call i32 @call_usermodehelper(i8* %26, i8** %27, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @nfs_cache_upcall.envp, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @EACCES, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %24
  %40 = load i8*, i8** @nfs_cache_getent_prog, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %46
  %50 = phi i32 [ 0, %46 ], [ %48, %47 ]
  ret i32 %50
}

declare dso_local i32 @call_usermodehelper(i8*, i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
