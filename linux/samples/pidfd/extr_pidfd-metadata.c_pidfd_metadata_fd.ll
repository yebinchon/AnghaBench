; ModuleID = '/home/carl/AnghaBench/linux/samples/pidfd/extr_pidfd-metadata.c_pidfd_metadata_fd.c'
source_filename = "/home/carl/AnghaBench/linux/samples/pidfd/extr_pidfd-metadata.c_pidfd_metadata_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"/proc/%d\00", align 1
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Failed to open %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to signal process\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pidfd_metadata_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidfd_metadata_fd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [100 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @snprintf(i8* %9, i32 100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %13 = load i32, i32* @O_DIRECTORY, align 4
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @O_CLOEXEC, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @open(i8* %12, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %23 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store i32 -1, i32* %3, align 4
  br label %39

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @sys_pidfd_send_signal(i32 %25, i32 0, i32* null, i32 0)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i32, i32* @errno, align 4
  switch i32 %30, label %32 [
    i32 128, label %31
  ]

31:                                               ; preds = %29
  br label %36

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @close(i32 %34)
  store i32 -1, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %31
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %21
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @sys_pidfd_send_signal(i32, i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
