; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_forever_ping_pong.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_forever_ping_pong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockmap_options = type { i64 }
%struct.timeval = type { i32, i64 }

@c1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"send failed()\0A\00", align 1
@p2 = common dso_local global i32 0, align 4
@c2 = common dso_local global i32 0, align 4
@p1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"select()\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"unexpected timeout\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"recv failed()\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@running = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockmap_options*)* @forever_ping_pong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @forever_ping_pong(i32 %0, %struct.sockmap_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockmap_options*, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sockmap_options* %1, %struct.sockmap_options** %5, align 8
  %14 = bitcast [1024 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 1024, i1 false)
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 10, i32* %15, align 8
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @c1, align 4
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %19 = call i32 @send(i32 %17, i8* %18, i32 1024, i32 0)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %122

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %118, %25
  %27 = load i32, i32* @p2, align 4
  store i32 %27, i32* %12, align 4
  %28 = call i32 @FD_ZERO(i32* %13)
  %29 = load i32, i32* @c1, align 4
  %30 = call i32 @FD_SET(i32 %29, i32* %13)
  %31 = load i32, i32* @c2, align 4
  %32 = call i32 @FD_SET(i32 %31, i32* %13)
  %33 = load i32, i32* @p1, align 4
  %34 = call i32 @FD_SET(i32 %33, i32* %13)
  %35 = load i32, i32* @p2, align 4
  %36 = call i32 @FD_SET(i32 %35, i32* %13)
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @select(i32 %38, i32* %13, i32* null, i32* null, %struct.timeval* %6)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %121

44:                                               ; preds = %26
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %121

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %99, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %57, 0
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i1 [ false, %52 ], [ %58, %56 ]
  br i1 %60, label %61, label %102

61:                                               ; preds = %59
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @FD_ISSET(i32 %62, i32* %13)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  br label %99

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %11, align 4
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %71 = call i32 @recv(i32 %69, i8* %70, i32 1024, i32 0)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = load i64, i64* @errno, align 8
  %76 = load i64, i64* @EWOULDBLOCK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %3, align 4
  br label %122

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %66
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @close(i32 %86)
  br label %102

88:                                               ; preds = %82
  %89 = load i32, i32* %11, align 4
  %90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @send(i32 %89, i8* %90, i32 %91, i32 0)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %122

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %65
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %52

102:                                              ; preds = %85, %59
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @sleep(i32 %106)
  br label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.sockmap_options*, %struct.sockmap_options** %5, align 8
  %110 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32, i32* @stdout, align 4
  %116 = call i32 @fflush(i32 %115)
  br label %117

117:                                              ; preds = %113, %108
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* @running, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %26, label %121

121:                                              ; preds = %118, %47, %42
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %95, %78, %22
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @FD_SET(i32, i32*) #2

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @FD_ISSET(i32, i32*) #2

declare dso_local i32 @recv(i32, i8*, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @fflush(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
