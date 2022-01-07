; ModuleID = '/home/carl/AnghaBench/linux/tools/iio/extr_lsiio.c_dump_channels.c'
source_filename = "/home/carl/AnghaBench/linux/tools/iio/extr_lsiio.c_dump_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"in_\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_raw\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"   %-10s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dump_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_channels(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dirent*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32* @opendir(i8* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @errno, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %53

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %42, %13
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.dirent* @readdir(i32* %15)
  store %struct.dirent* %16, %struct.dirent** %5, align 8
  %17 = load %struct.dirent*, %struct.dirent** %5, align 8
  %18 = icmp ne %struct.dirent* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  %20 = load %struct.dirent*, %struct.dirent** %5, align 8
  %21 = getelementptr inbounds %struct.dirent, %struct.dirent* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @check_prefix(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load %struct.dirent*, %struct.dirent** %5, align 8
  %27 = getelementptr inbounds %struct.dirent, %struct.dirent* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @check_postfix(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.dirent*, %struct.dirent** %5, align 8
  %33 = getelementptr inbounds %struct.dirent, %struct.dirent* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @check_postfix(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31, %25
  %38 = load %struct.dirent*, %struct.dirent** %5, align 8
  %39 = getelementptr inbounds %struct.dirent, %struct.dirent* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %37, %31, %19
  br label %14

43:                                               ; preds = %14
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @closedir(i32* %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @errno, align 4
  %49 = sub nsw i32 0, %48
  br label %51

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i32 [ %49, %47 ], [ 0, %50 ]
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %10
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @check_prefix(i8*, i8*) #1

declare dso_local i64 @check_postfix(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
