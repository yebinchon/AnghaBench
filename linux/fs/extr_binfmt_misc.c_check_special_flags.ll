; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_binfmt_misc.c_check_special_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_binfmt_misc.c_check_special_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"register: flag: P (preserve argv0)\0A\00", align 1
@MISC_FMT_PRESERVE_ARGV0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"register: flag: O (open binary)\0A\00", align 1
@MISC_FMT_OPEN_BINARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"register: flag: C (preserve creds)\0A\00", align 1
@MISC_FMT_CREDENTIALS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"register: flag: F: open interpreter file now\0A\00", align 1
@MISC_FMT_OPEN_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.TYPE_3__*)* @check_special_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_special_flags(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  store i32 1, i32* %6, align 4
  br label %8

8:                                                ; preds = %54, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %55

11:                                               ; preds = %8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  switch i32 %14, label %53 [
    i32 80, label %15
    i32 79, label %24
    i32 67, label %33
    i32 70, label %44
  ]

15:                                               ; preds = %11
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %5, align 8
  %19 = load i32, i32* @MISC_FMT_PRESERVE_ARGV0, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %54

24:                                               ; preds = %11
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  %28 = load i32, i32* @MISC_FMT_OPEN_BINARY, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %54

33:                                               ; preds = %11
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  %37 = load i32, i32* @MISC_FMT_CREDENTIALS, align 4
  %38 = load i32, i32* @MISC_FMT_OPEN_BINARY, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %54

44:                                               ; preds = %11
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  %48 = load i32, i32* @MISC_FMT_OPEN_FILE, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %54

53:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %44, %33, %24, %15
  br label %8

55:                                               ; preds = %8
  %56 = load i8*, i8** %5, align 8
  ret i8* %56
}

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
