; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf_cpu.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf_cpu.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed counting cpus\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to allocate array\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"---- IPv4 UDP ----\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"---- IPv6 UDP ----\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"---- IPv4 TCP ----\0A\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"---- IPv6 TCP ----\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"SUCCESS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @_SC_NPROCESSORS_ONLN, align 4
  %5 = call i32 @sysconf(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @errno, align 4
  %10 = call i32 @error(i32 1, i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, i32* %3, align 4
  %13 = call i32* @calloc(i32 %12, i32 4)
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @AF_INET, align 4
  %24 = load i32, i32* @SOCK_DGRAM, align 4
  %25 = call i32 @test(i32* %21, i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @AF_INET6, align 4
  %31 = load i32, i32* @SOCK_DGRAM, align 4
  %32 = call i32 @test(i32* %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @AF_INET, align 4
  %38 = load i32, i32* @SOCK_STREAM, align 4
  %39 = call i32 @test(i32* %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %42 = load i32*, i32** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @AF_INET6, align 4
  %45 = load i32, i32* @SOCK_STREAM, align 4
  %46 = call i32 @test(i32* %42, i32 %43, i32 %44, i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @free(i32* %47)
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @test(i32*, i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
