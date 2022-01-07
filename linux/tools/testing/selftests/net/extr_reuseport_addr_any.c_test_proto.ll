; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_addr_any.c_test_proto.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_addr_any.c_test_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCK_DCCP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"DCCP not supported: skipping DCCP tests\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to create a DCCP socket\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s IPv4 ... \00", align 1
@IP4_ADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"%s IPv6 ... \00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@IP6_ADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"%s IPv4 mapped to IPv6 ... \00", align 1
@IP4_MAPPED6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @test_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_proto(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @SOCK_DCCP, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load i32, i32* @AF_INET, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @socket(i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @ESOCKTNOSUPPORT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %54

22:                                               ; preds = %15
  %23 = load i64, i64* @errno, align 8
  %24 = call i32 @error(i32 1, i64 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %9
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @close(i32 %27)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @AF_INET, align 4
  %34 = load i32, i32* @AF_INET, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @IP4_ADDR, align 4
  %37 = call i32 @run_one_test(i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @AF_INET6, align 4
  %42 = load i32, i32* @AF_INET6, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @IP6_ADDR, align 4
  %45 = call i32 @run_one_test(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @stderr, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @AF_INET, align 4
  %50 = load i32, i32* @AF_INET6, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @IP4_MAPPED6, align 4
  %53 = call i32 @run_one_test(i32 %49, i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %29, %19
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @error(i32, i64, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @run_one_test(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
