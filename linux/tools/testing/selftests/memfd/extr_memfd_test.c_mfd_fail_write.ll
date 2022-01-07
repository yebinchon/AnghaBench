; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_mfd_fail_write.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_mfd_fail_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"data\00", align 1
@EPERM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"expected EPERM on write(), but got %d: %m\0A\00", align 1
@mfd_def_size = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"mmap() didn't fail as expected\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"mmap()+mprotect() didn't fail as expected\0A\00", align 1
@FALLOC_FL_PUNCH_HOLE = common dso_local global i32 0, align 4
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"fallocate(PUNCH_HOLE) didn't fail as expected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mfd_fail_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfd_fail_write(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @write(i32 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @EPERM, align 8
  %10 = sub nsw i64 0, %9
  %11 = icmp ne i64 %8, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = call i32 (...) @abort() #3
  unreachable

17:                                               ; preds = %1
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
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 (...) @abort() #3
  unreachable

31:                                               ; preds = %17
  %32 = load i32, i32* @mfd_def_size, align 4
  %33 = load i32, i32* @PROT_WRITE, align 4
  %34 = load i32, i32* @MAP_SHARED, align 4
  %35 = load i32, i32* %2, align 4
  %36 = call i8* @mmap(i32* null, i32 %32, i32 %33, i32 %34, i32 %35, i32 0)
  store i8* %36, i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** @MAP_FAILED, align 8
  %39 = icmp ne i8* %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 (...) @abort() #3
  unreachable

43:                                               ; preds = %31
  %44 = load i32, i32* @mfd_def_size, align 4
  %45 = load i32, i32* @PROT_READ, align 4
  %46 = load i32, i32* @MAP_SHARED, align 4
  %47 = load i32, i32* %2, align 4
  %48 = call i8* @mmap(i32* null, i32 %44, i32 %45, i32 %46, i32 %47, i32 0)
  store i8* %48, i8** %4, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** @MAP_FAILED, align 8
  %51 = icmp ne i8* %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %43
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* @mfd_def_size, align 4
  %55 = load i32, i32* @PROT_READ, align 4
  %56 = load i32, i32* @PROT_WRITE, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @mprotect(i8* %53, i32 %54, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 (...) @abort() #3
  unreachable

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %43
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %68 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @mfd_def_size, align 4
  %71 = call i32 @fallocate(i32 %66, i32 %69, i32 0, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %76 = call i32 (...) @abort() #3
  unreachable

77:                                               ; preds = %65
  ret void
}

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

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
