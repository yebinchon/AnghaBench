; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_mnt_fs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_mnt_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@MS_PRIVATE = common dso_local global i32 0, align 4
@MS_REC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"mount --make-private %s failed: %s\00", align 1
@MS_BIND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"mount --bind %s %s failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"mode=0700\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"mount -t %s %s %s failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i64)* @mnt_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mnt_fs(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %46, %4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @MS_PRIVATE, align 4
  %14 = load i32, i32* @MS_REC, align 4
  %15 = or i32 %13, %14
  %16 = call i64 @mount(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %15, i8* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %11
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @EINVAL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22, %18
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* @errno, align 8
  %30 = call i8* @strerror(i64 %29)
  %31 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @snprintf(i8* %26, i64 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %28, i8* %30)
  store i32 -1, i32* %5, align 4
  br label %63

32:                                               ; preds = %22
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @MS_BIND, align 4
  %36 = call i64 @mount(i8* %33, i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %35, i8* null)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* @errno, align 8
  %44 = call i8* @strerror(i64 %43)
  %45 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @snprintf(i8* %39, i64 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %41, i8* %42, i8* %44)
  store i32 -1, i32* %5, align 4
  br label %63

46:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  br label %11

47:                                               ; preds = %11
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @mount(i8* %48, i8* %49, i8* %50, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* @errno, align 8
  %60 = call i8* @strerror(i64 %59)
  %61 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @snprintf(i8* %54, i64 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %56, i8* %57, i8* %58, i8* %60)
  store i32 -1, i32* %5, align 4
  br label %63

62:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %53, %38, %25
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @mount(i8*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
