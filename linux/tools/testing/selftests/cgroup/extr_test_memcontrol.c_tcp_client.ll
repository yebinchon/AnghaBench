; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_tcp_client.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_tcp_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32 }

@__const.tcp_client.server = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"%hd\00", align 1
@KSFT_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"memory.current\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"memory.stat\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"sock \00", align 1
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i16)* @tcp_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_client(i8* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca [10 x i8], align 1
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca [6 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1048576 x i32], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i16 %1, i16* %5, align 2
  %15 = bitcast [10 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.tcp_client.server, i32 0, i32 0), i64 10, i1 false)
  store i32 16, i32* %9, align 4
  %16 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %17 = load i16, i16* %5, align 2
  %18 = call i32 @snprintf(i8* %16, i32 6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i16 zeroext %17)
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %20 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %21 = call i32 @getaddrinfo(i8* %19, i8* %20, i32* null, %struct.addrinfo** %7)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %3, align 4
  br label %96

26:                                               ; preds = %2
  %27 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %28 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @socket(i32 %29, i32 %32, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %92

40:                                               ; preds = %26
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @connect(i32 %41, i32 %44, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %89

52:                                               ; preds = %40
  %53 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %87, %52
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %9, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* %12, i64 0, i64 0
  %61 = call i64 @read(i32 %59, i32* %60, i32 4194304)
  %62 = icmp sle i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %89

64:                                               ; preds = %58
  %65 = load i8*, i8** %4, align 8
  %66 = call i64 @cg_read_long(i8* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i64 %66, i64* %13, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = call i64 @cg_read_key_long(i8* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i64 %68, i64* %14, align 8
  %69 = load i64, i64* %13, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load i64, i64* %14, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %64
  br label %89

75:                                               ; preds = %71
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %14, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %89

80:                                               ; preds = %75
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %14, align 8
  %83 = call i64 @values_close(i64 %81, i64 %82, i32 10)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @KSFT_PASS, align 4
  store i32 %86, i32* %11, align 4
  br label %88

87:                                               ; preds = %80
  br label %54

88:                                               ; preds = %85, %54
  br label %89

89:                                               ; preds = %88, %79, %74, %63, %51
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @close(i32 %90)
  br label %92

92:                                               ; preds = %89, %39
  %93 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %94 = call i32 @freeaddrinfo(%struct.addrinfo* %93)
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %24
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i16 zeroext) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, i32*, %struct.addrinfo**) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @connect(i32, i32, i32) #2

declare dso_local i64 @read(i32, i32*, i32) #2

declare dso_local i64 @cg_read_long(i8*, i8*) #2

declare dso_local i64 @cg_read_key_long(i8*, i8*, i8*) #2

declare dso_local i64 @values_close(i64, i64, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
