; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_mfd_assert_write.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_mfd_assert_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hugetlbfs_test = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"write() failed: %m\0A\00", align 1
@mfd_def_size = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"mmap() failed: %m\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"mprotect() failed: %m\0A\00", align 1
@FALLOC_FL_PUNCH_HOLE = common dso_local global i32 0, align 4
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"fallocate(PUNCH_HOLE) failed: %m\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mfd_assert_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfd_assert_write(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @hugetlbfs_test, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @write(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 4
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 (...) @abort() #3
  unreachable

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i32, i32* @mfd_def_size, align 4
  %19 = load i32, i32* @PROT_READ, align 4
  %20 = load i32, i32* @PROT_WRITE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MAP_SHARED, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i8* @mmap(i32* null, i32 %18, i32 %21, i32 %22, i32 %23, i32 0)
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** @MAP_FAILED, align 8
  %27 = icmp eq i8* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 (...) @abort() #3
  unreachable

31:                                               ; preds = %17
  %32 = load i8*, i8** %4, align 8
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* @mfd_def_size, align 4
  %35 = call i32 @munmap(i8* %33, i32 %34)
  %36 = load i32, i32* @mfd_def_size, align 4
  %37 = load i32, i32* @PROT_WRITE, align 4
  %38 = load i32, i32* @MAP_SHARED, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i8* @mmap(i32* null, i32 %36, i32 %37, i32 %38, i32 %39, i32 0)
  store i8* %40, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i8*, i8** @MAP_FAILED, align 8
  %43 = icmp eq i8* %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 (...) @abort() #3
  unreachable

47:                                               ; preds = %31
  %48 = load i8*, i8** %4, align 8
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* @mfd_def_size, align 4
  %51 = call i32 @munmap(i8* %49, i32 %50)
  %52 = load i32, i32* @mfd_def_size, align 4
  %53 = load i32, i32* @PROT_READ, align 4
  %54 = load i32, i32* @MAP_SHARED, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i8* @mmap(i32* null, i32 %52, i32 %53, i32 %54, i32 %55, i32 0)
  store i8* %56, i8** %4, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i8*, i8** @MAP_FAILED, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %62 = call i32 (...) @abort() #3
  unreachable

63:                                               ; preds = %47
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* @mfd_def_size, align 4
  %66 = load i32, i32* @PROT_READ, align 4
  %67 = load i32, i32* @PROT_WRITE, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @mprotect(i8* %64, i32 %65, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %74 = call i32 (...) @abort() #3
  unreachable

75:                                               ; preds = %63
  %76 = load i8*, i8** %4, align 8
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* @mfd_def_size, align 4
  %79 = call i32 @munmap(i8* %77, i32 %78)
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %82 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @mfd_def_size, align 4
  %85 = call i32 @fallocate(i32 %80, i32 %83, i32 0, i32 %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %75
  %89 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %90 = call i32 (...) @abort() #3
  unreachable

91:                                               ; preds = %75
  ret void
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @mprotect(i8*, i32, i32) #1

declare dso_local i32 @fallocate(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
