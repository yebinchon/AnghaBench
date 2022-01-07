; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_fuse_mnt.c_memfd_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_fuse_mnt.c_memfd_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_file_info = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@memfd_path = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32 (i8*, i8*, i32*, i32)*, i32, %struct.fuse_file_info*)* @memfd_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memfd_readdir(i8* %0, i8* %1, i32 (i8*, i8*, i32*, i32)* %2, i32 %3, %struct.fuse_file_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (i8*, i8*, i32*, i32)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fuse_file_info*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 (i8*, i8*, i32*, i32)* %2, i32 (i8*, i8*, i32*, i32)** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.fuse_file_info* %4, %struct.fuse_file_info** %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %30

18:                                               ; preds = %5
  %19 = load i32 (i8*, i8*, i32*, i32)*, i32 (i8*, i8*, i32*, i32)** %9, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 %19(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  %22 = load i32 (i8*, i8*, i32*, i32)*, i32 (i8*, i8*, i32*, i32)** %9, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 %22(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0)
  %25 = load i32 (i8*, i8*, i32*, i32)*, i32 (i8*, i8*, i32*, i32)** %9, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** @memfd_path, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = call i32 %25(i8* %26, i8* %28, i32* null, i32 0)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %18, %15
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
