; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_do_server.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_do_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_args = type { i64, i64, i64, i64 }
%struct.timeval = type { i64 }

@prog_timeout = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"waiting for client connection.\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"select failed\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"accept failed\00", align 1
@interactive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_args*)* @do_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_server(%struct.sock_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock_args*, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock_args* %0, %struct.sock_args** %3, align 8
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %13 = load i64, i64* @prog_timeout, align 8
  store i64 %13, i64* %12, align 8
  store %struct.timeval* null, %struct.timeval** %5, align 8
  %14 = bitcast [4 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 0, i64 4, i1 false)
  store i32 4, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  %15 = load i64, i64* @prog_timeout, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.timeval* %4, %struct.timeval** %5, align 8
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %20 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %25 = call i32 @msock_server(%struct.sock_args* %24)
  store i32 %25, i32* %8, align 4
  br label %29

26:                                               ; preds = %18
  %27 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %28 = call i32 @lsock_init(%struct.sock_args* %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %136

33:                                               ; preds = %29
  %34 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %35 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @close(i32 %39)
  store i32 0, i32* %2, align 4
  br label %136

41:                                               ; preds = %33
  %42 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %43 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SOCK_STREAM, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %52 = call i32 @msg_loop(i32 0, i32 %48, i8* %49, i32 %50, %struct.sock_args* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @close(i32 %53)
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %2, align 4
  br label %136

56:                                               ; preds = %41
  %57 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %58 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %64 = call i64 @tcp_md5_remote(i32 %62, %struct.sock_args* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @close(i32 %67)
  store i32 -1, i32* %2, align 4
  br label %136

69:                                               ; preds = %61, %56
  br label %70

70:                                               ; preds = %69, %90, %131
  %71 = call i32 @log_msg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %72 = call i32 @log_msg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %73 = call i32 @FD_ZERO(i32* %10)
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @FD_SET(i32 %74, i32* %10)
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  %78 = load %struct.timeval*, %struct.timeval** %5, align 8
  %79 = call i32 @select(i32 %77, i32* %10, i32* null, i32* null, %struct.timeval* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  store i32 2, i32* %11, align 4
  br label %132

83:                                               ; preds = %70
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i64, i64* @errno, align 8
  %88 = load i64, i64* @EINTR, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %70

91:                                               ; preds = %86
  %92 = call i32 @log_err_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %132

93:                                               ; preds = %83
  %94 = load i32, i32* %8, align 4
  %95 = call i64 @FD_ISSET(i32 %94, i32* %10)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %100 = call i32 @accept(i32 %98, i8* %99, i32* %7)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = call i32 @log_err_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %132

105:                                              ; preds = %97
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %108 = call i32 @show_sockstat(i32 %106, %struct.sock_args* %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %132

112:                                              ; preds = %105
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %115 = call i32 @check_device(i32 %113, %struct.sock_args* %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %132

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119, %93
  %121 = load i32, i32* %9, align 4
  %122 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %125 = call i32 @msg_loop(i32 0, i32 %121, i8* %122, i32 %123, %struct.sock_args* %124)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @close(i32 %126)
  %128 = load i32, i32* @interactive, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %120
  br label %132

131:                                              ; preds = %120
  br label %70

132:                                              ; preds = %130, %118, %111, %103, %91, %82
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @close(i32 %133)
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %132, %66, %47, %38, %32
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @msock_server(%struct.sock_args*) #2

declare dso_local i32 @lsock_init(%struct.sock_args*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @msg_loop(i32, i32, i8*, i32, %struct.sock_args*) #2

declare dso_local i64 @tcp_md5_remote(i32, %struct.sock_args*) #2

declare dso_local i32 @log_msg(i8*) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @FD_SET(i32, i32*) #2

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #2

declare dso_local i32 @log_err_errno(i8*) #2

declare dso_local i64 @FD_ISSET(i32, i32*) #2

declare dso_local i32 @accept(i32, i8*, i32*) #2

declare dso_local i32 @show_sockstat(i32, %struct.sock_args*) #2

declare dso_local i32 @check_device(i32, %struct.sock_args*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
