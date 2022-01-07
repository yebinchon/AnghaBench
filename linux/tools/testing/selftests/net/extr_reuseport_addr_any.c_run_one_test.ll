; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_addr_any.c_run_one_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_addr_any.c_run_one_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pass\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @run_one_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_one_test(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [10 x i32], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @AF_INET, align 4
  %12 = load i32, i32* %7, align 4
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %14 = call i32 @build_rcv_fd(i32 %11, i32 %12, i32* %13, i32 2, i8* null)
  %15 = load i32, i32* @AF_INET6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = call i32 @build_rcv_fd(i32 %15, i32 %16, i32* %18, i32 2, i8* null)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @build_rcv_fd(i32 %20, i32 %21, i32* %23, i32 1, i8* %24)
  %26 = load i32, i32* @AF_INET, align 4
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %29 = getelementptr inbounds i32, i32* %28, i64 5
  %30 = call i32 @build_rcv_fd(i32 %26, i32 %27, i32* %29, i32 2, i8* null)
  %31 = load i32, i32* @AF_INET6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %34 = getelementptr inbounds i32, i32* %33, i64 7
  %35 = call i32 @build_rcv_fd(i32 %31, i32 %32, i32* %34, i32 2, i8* null)
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 4
  %40 = load i32, i32* %39, align 16
  %41 = call i32 @test(i32* %36, i32 9, i32 %37, i32 %38, i32 %40)
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %51, %4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 9
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @close(i32 %49)
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %42

54:                                               ; preds = %42
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @build_rcv_fd(i32, i32, i32*, i32, i8*) #1

declare dso_local i32 @test(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
