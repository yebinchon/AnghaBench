; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_recordmcount.c_mmap_file.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_recordmcount.c_mmap_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@fd_map = common dso_local global i32 0, align 4
@mmap_failed = common dso_local global i32 0, align 4
@file_map = common dso_local global i8* null, align 8
@file_ptr = common dso_local global i32* null, align 8
@file_updated = common dso_local global i64 0, align 8
@sb = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"not a regular file: %s\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@file_end = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @mmap_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mmap_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 -1, i32* @fd_map, align 4
  store i32 1, i32* @mmap_failed, align 4
  store i8* null, i8** @file_map, align 8
  store i32* null, i32** @file_ptr, align 8
  store i64 0, i64* @file_updated, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sb, i32 0, i32 0), align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i32, i32* @O_RDONLY, align 4
  %6 = call i32 @open(i8* %4, i32 %5)
  store i32 %6, i32* @fd_map, align 4
  %7 = load i32, i32* @fd_map, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @perror(i8* %10)
  store i8* null, i8** %2, align 8
  br label %68

12:                                               ; preds = %1
  %13 = load i32, i32* @fd_map, align 4
  %14 = call i64 @fstat(i32 %13, %struct.TYPE_3__* @sb)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @perror(i8* %17)
  br label %61

19:                                               ; preds = %12
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sb, i32 0, i32 1), align 8
  %21 = call i32 @S_ISREG(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %61

27:                                               ; preds = %19
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sb, i32 0, i32 0), align 8
  %29 = load i32, i32* @PROT_READ, align 4
  %30 = load i32, i32* @PROT_WRITE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MAP_PRIVATE, align 4
  %33 = load i32, i32* @fd_map, align 4
  %34 = call i8* @mmap(i32 0, i64 %28, i32 %31, i32 %32, i32 %33, i32 0)
  store i8* %34, i8** @file_map, align 8
  %35 = load i8*, i8** @file_map, align 8
  %36 = load i8*, i8** @MAP_FAILED, align 8
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %27
  store i32 1, i32* @mmap_failed, align 4
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sb, i32 0, i32 0), align 8
  %40 = call i8* @umalloc(i64 %39)
  store i8* %40, i8** @file_map, align 8
  %41 = load i8*, i8** @file_map, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @perror(i8* %44)
  br label %61

46:                                               ; preds = %38
  %47 = load i32, i32* @fd_map, align 4
  %48 = load i8*, i8** @file_map, align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sb, i32 0, i32 0), align 8
  %50 = call i64 @read(i32 %47, i8* %48, i64 %49)
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sb, i32 0, i32 0), align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @perror(i8* %54)
  %56 = load i8*, i8** @file_map, align 8
  %57 = call i32 @free(i8* %56)
  store i8* null, i8** @file_map, align 8
  br label %61

58:                                               ; preds = %46
  br label %60

59:                                               ; preds = %27
  store i32 0, i32* @mmap_failed, align 4
  br label %60

60:                                               ; preds = %59, %58
  br label %61

61:                                               ; preds = %60, %53, %43, %23, %16
  %62 = load i32, i32* @fd_map, align 4
  %63 = call i32 @close(i32 %62)
  store i32 -1, i32* @fd_map, align 4
  %64 = load i8*, i8** @file_map, align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sb, i32 0, i32 0), align 8
  %66 = getelementptr i8, i8* %64, i64 %65
  store i8* %66, i8** @file_end, align 8
  %67 = load i8*, i8** @file_map, align 8
  store i8* %67, i8** %2, align 8
  br label %68

68:                                               ; preds = %61, %9
  %69 = load i8*, i8** %2, align 8
  ret i8* %69
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @fstat(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @mmap(i32, i64, i32, i32, i32, i32) #1

declare dso_local i8* @umalloc(i64) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
