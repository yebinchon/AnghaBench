; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_recordmcount.c_write_file.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_recordmcount.c_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@file_updated = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.rc\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@sb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@fd_map = common dso_local global i64 0, align 8
@file_map = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@file_append_size = common dso_local global i64 0, align 8
@file_append = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @write_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = add nsw i32 %9, 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @file_updated, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %70

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @O_WRONLY, align 4
  %21 = load i32, i32* @O_TRUNC, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @O_CREAT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sb, i32 0, i32 1), align 8
  %26 = call i64 @open(i8* %13, i32 %24, i32 %25)
  store i64 %26, i64* @fd_map, align 8
  %27 = load i64, i64* @fd_map, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @perror(i8* %30)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %70

32:                                               ; preds = %17
  %33 = load i64, i64* @fd_map, align 8
  %34 = load i32, i32* @file_map, align 4
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sb, i32 0, i32 0), align 8
  %36 = call i64 @write(i64 %33, i32 %34, i64 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sb, i32 0, i32 0), align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i64, i64* @fd_map, align 8
  %43 = call i32 @close(i64 %42)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %70

44:                                               ; preds = %32
  %45 = load i64, i64* @file_append_size, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load i64, i64* @fd_map, align 8
  %49 = load i32, i32* @file_append, align 4
  %50 = load i64, i64* @file_append_size, align 8
  %51 = call i64 @write(i64 %48, i32 %49, i64 %50)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @file_append_size, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i64, i64* @fd_map, align 8
  %58 = call i32 @close(i64 %57)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %70

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %44
  %61 = load i64, i64* @fd_map, align 8
  %62 = call i32 @close(i64 %61)
  %63 = load i8*, i8** %3, align 8
  %64 = call i64 @rename(i8* %13, i8* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @perror(i8* %67)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %70

69:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %66, %55, %40, %29, %16
  %71 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i64 @open(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @write(i64, i32, i64) #1

declare dso_local i32 @close(i64) #1

declare dso_local i64 @rename(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
