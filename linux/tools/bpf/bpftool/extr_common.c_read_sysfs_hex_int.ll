; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_read_sysfs_hex_int.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_read_sysfs_hex_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Can't open %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Can't read %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Value in %s too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @read_sysfs_hex_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_sysfs_hex_int(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [8 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i32 @open(i8* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @strerror(i32 %14)
  %16 = call i32 (i8*, i8*, ...) @p_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %15)
  store i32 -1, i32* %2, align 4
  br label %42

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %20 = call i32 @read(i32 %18, i8* %19, i32 8)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @close(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = call i32 (i8*, i8*, ...) @p_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %28)
  store i32 -1, i32* %2, align 4
  br label %42

30:                                               ; preds = %17
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %31, 8
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 (i8*, i8*, ...) @p_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  store i32 -1, i32* %2, align 4
  br label %42

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 %38
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %41 = call i32 @strtol(i8* %40, i32* null, i32 0)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %36, %33, %25, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @p_err(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
