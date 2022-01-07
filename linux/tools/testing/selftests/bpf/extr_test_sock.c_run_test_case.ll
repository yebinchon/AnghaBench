; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock.c_run_test_case.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock.c_run_test_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_test = type { i8*, i64, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Test case: %s .. \00", align 1
@LOAD_REJECT = common dso_local global i64 0, align 8
@ATTACH_REJECT = common dso_local global i64 0, align 8
@BIND_REJECT = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sock_test*)* @run_test_case to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test_case(i32 %0, %struct.sock_test* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.sock_test* %1, %struct.sock_test** %4, align 8
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.sock_test*, %struct.sock_test** %4, align 8
  %8 = getelementptr inbounds %struct.sock_test, %struct.sock_test* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load %struct.sock_test*, %struct.sock_test** %4, align 8
  %12 = getelementptr inbounds %struct.sock_test, %struct.sock_test* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sock_test*, %struct.sock_test** %4, align 8
  %15 = getelementptr inbounds %struct.sock_test, %struct.sock_test* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @load_sock_prog(i32 %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.sock_test*, %struct.sock_test** %4, align 8
  %22 = getelementptr inbounds %struct.sock_test, %struct.sock_test* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LOAD_REJECT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %80

27:                                               ; preds = %20
  br label %79

28:                                               ; preds = %2
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.sock_test*, %struct.sock_test** %4, align 8
  %32 = getelementptr inbounds %struct.sock_test, %struct.sock_test* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @attach_sock_prog(i32 %29, i32 %30, i32 %33)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.sock_test*, %struct.sock_test** %4, align 8
  %38 = getelementptr inbounds %struct.sock_test, %struct.sock_test* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ATTACH_REJECT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %80

43:                                               ; preds = %36
  br label %79

44:                                               ; preds = %28
  %45 = load %struct.sock_test*, %struct.sock_test** %4, align 8
  %46 = getelementptr inbounds %struct.sock_test, %struct.sock_test* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sock_test*, %struct.sock_test** %4, align 8
  %49 = getelementptr inbounds %struct.sock_test, %struct.sock_test* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sock_test*, %struct.sock_test** %4, align 8
  %52 = getelementptr inbounds %struct.sock_test, %struct.sock_test* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sock_test*, %struct.sock_test** %4, align 8
  %55 = getelementptr inbounds %struct.sock_test, %struct.sock_test* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bind_sock(i32 %47, i32 %50, i32 %53, i32 %56)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %71

59:                                               ; preds = %44
  %60 = load %struct.sock_test*, %struct.sock_test** %4, align 8
  %61 = getelementptr inbounds %struct.sock_test, %struct.sock_test* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @BIND_REJECT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i64, i64* @errno, align 8
  %67 = load i64, i64* @EPERM, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %80

70:                                               ; preds = %65, %59
  br label %79

71:                                               ; preds = %44
  %72 = load %struct.sock_test*, %struct.sock_test** %4, align 8
  %73 = getelementptr inbounds %struct.sock_test, %struct.sock_test* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SUCCESS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %79

78:                                               ; preds = %71
  br label %80

79:                                               ; preds = %77, %70, %43, %27
  store i32 -1, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %78, %69, %42, %26
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* %3, align 4
  %85 = load %struct.sock_test*, %struct.sock_test** %4, align 8
  %86 = getelementptr inbounds %struct.sock_test, %struct.sock_test* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @bpf_prog_detach(i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %83, %80
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @close(i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %96 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @load_sock_prog(i32, i32) #1

declare dso_local i32 @attach_sock_prog(i32, i32, i32) #1

declare dso_local i32 @bind_sock(i32, i32, i32, i32) #1

declare dso_local i32 @bpf_prog_detach(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
