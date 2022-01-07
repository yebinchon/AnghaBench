; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_sortextable.c_mmap_file.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_sortextable.c_mmap_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@O_RDWR = common dso_local global i32 0, align 4
@fd_map = common dso_local global i64 0, align 8
@sb = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"not a regular file: %s\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@mmap_failed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not mmap file: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @mmap_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mmap_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i32, i32* @O_RDWR, align 4
  %6 = call i64 @open(i8* %4, i32 %5)
  store i64 %6, i64* @fd_map, align 8
  %7 = load i64, i64* @fd_map, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* @fd_map, align 8
  %11 = call i64 @fstat(i64 %10, %struct.TYPE_3__* @sb)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %1
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @perror(i8* %14)
  %16 = call i32 (...) @fail_file()
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sb, i32 0, i32 1), align 4
  %19 = call i32 @S_ISREG(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = call i32 (...) @fail_file()
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sb, i32 0, i32 0), align 4
  %28 = load i32, i32* @PROT_READ, align 4
  %29 = load i32, i32* @PROT_WRITE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MAP_SHARED, align 4
  %32 = load i64, i64* @fd_map, align 8
  %33 = call i8* @mmap(i32 0, i32 %27, i32 %30, i32 %31, i64 %32, i32 0)
  store i8* %33, i8** %3, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = load i8*, i8** @MAP_FAILED, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  store i32 1, i32* @mmap_failed, align 4
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = call i32 (...) @fail_file()
  br label %42

42:                                               ; preds = %37, %26
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i64 @fstat(i64, %struct.TYPE_3__*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fail_file(...) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @mmap(i32, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
