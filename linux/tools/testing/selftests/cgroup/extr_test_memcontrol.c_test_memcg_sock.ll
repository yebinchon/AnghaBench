; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_sock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_server_args = type { i16, i32* }

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"memcg_test\00", align 1
@tcp_server = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@KSFT_SKIP = common dso_local global i32 0, align 4
@KSFT_PASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"memory.current\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"memory.stat\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"sock \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_memcg_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_memcg_sock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tcp_server_args, align 8
  store i8* %0, i8** %2, align 8
  store i32 5, i32* %3, align 4
  %10 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @cg_name(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %107

16:                                               ; preds = %1
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @cg_create(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %107

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %72, %21
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %3, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %75

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tcp_server_args, %struct.tcp_server_args* %9, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @pipe(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %107

32:                                               ; preds = %26
  %33 = call i32 (...) @rand()
  %34 = srem i32 %33, 60000
  %35 = add nsw i32 1000, %34
  %36 = trunc i32 %35 to i16
  %37 = getelementptr inbounds %struct.tcp_server_args, %struct.tcp_server_args* %9, i32 0, i32 0
  store i16 %36, i16* %37, align 8
  store i16 %36, i16* %7, align 2
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @tcp_server, align 4
  %40 = call i32 @cg_run_nowait(i8* %38, i32 %39, %struct.tcp_server_args* %9)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %107

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.tcp_server_args, %struct.tcp_server_args* %9, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @close(i32 %48)
  %50 = getelementptr inbounds %struct.tcp_server_args, %struct.tcp_server_args* %9, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @read(i32 %53, i32* %6, i32 4)
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 4
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %107

58:                                               ; preds = %44
  %59 = getelementptr inbounds %struct.tcp_server_args, %struct.tcp_server_args* %9, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @close(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  br label %75

67:                                               ; preds = %58
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @EADDRINUSE, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %107

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @waitpid(i32 %73, i32* null, i32 0)
  br label %22

75:                                               ; preds = %66, %22
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @EADDRINUSE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @KSFT_SKIP, align 4
  store i32 %80, i32* %4, align 4
  br label %107

81:                                               ; preds = %75
  %82 = load i8*, i8** %8, align 8
  %83 = load i16, i16* %7, align 2
  %84 = call i32 @tcp_client(i8* %82, i16 zeroext %83)
  %85 = load i32, i32* @KSFT_PASS, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %107

88:                                               ; preds = %81
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @waitpid(i32 %89, i32* %6, i32 0)
  %91 = load i32, i32* %6, align 4
  %92 = call i64 @WEXITSTATUS(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %107

95:                                               ; preds = %88
  %96 = load i8*, i8** %8, align 8
  %97 = call i64 @cg_read_long(i8* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %107

100:                                              ; preds = %95
  %101 = load i8*, i8** %8, align 8
  %102 = call i64 @cg_read_key_long(i8* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @KSFT_PASS, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %104, %99, %94, %87, %79, %71, %57, %43, %31, %20, %15
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @cg_destroy(i8* %108)
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i8* @cg_name(i8*, i8*) #1

declare dso_local i64 @cg_create(i8*) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @cg_run_nowait(i8*, i32, %struct.tcp_server_args*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @tcp_client(i8*, i16 zeroext) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i64 @cg_read_long(i8*, i8*) #1

declare dso_local i64 @cg_read_key_long(i8*, i8*, i8*) #1

declare dso_local i32 @cg_destroy(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
