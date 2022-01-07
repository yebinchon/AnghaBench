; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_msg_loop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_msg_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_args = type { i64, i32 }
%struct.timeval = type { i32 }

@prog_timeout = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@msg = common dso_local global i64 0, align 8
@msglen = common dso_local global i32 0, align 4
@interactive = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"select failed\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Timed out waiting for response\0A\00", align 1
@iter = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Going into quiet mode\0A\00", align 1
@quiet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, %struct.sock_args*)* @msg_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_loop(i32 %0, i32 %1, i8* %2, i32 %3, %struct.sock_args* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock_args*, align 8
  %12 = alloca %struct.timeval, align 4
  %13 = alloca %struct.timeval*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.sock_args* %4, %struct.sock_args** %11, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %18 = load i32, i32* @prog_timeout, align 4
  store i32 %18, i32* %17, align 4
  store %struct.timeval* null, %struct.timeval** %13, align 8
  %19 = load %struct.sock_args*, %struct.sock_args** %11, align 8
  %20 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SOCK_STREAM, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.sock_args*, %struct.sock_args** %11, align 8
  %27 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @set_recv_attr(i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %24, %5
  %31 = load i64, i64* @msg, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = load i64, i64* @msg, align 8
  %35 = call i32 @strlen(i64 %34)
  store i32 %35, i32* @msglen, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.sock_args*, %struct.sock_args** %11, align 8
  %43 = call i64 @send_msg(i32 %39, i8* %40, i32 %41, %struct.sock_args* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  br label %162

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %33
  %48 = load i64, i64* @interactive, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  store %struct.timeval* %12, %struct.timeval** %13, align 8
  %51 = load i32, i32* @prog_timeout, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i32 5, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %50
  br label %56

56:                                               ; preds = %55, %47
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i64, i64* @interactive, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* @stdin, align 4
  %62 = call i32 @fileno(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @MAX(i32 %62, i32 %63)
  %65 = add nsw i32 %64, 1
  br label %69

66:                                               ; preds = %57
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  br label %69

69:                                               ; preds = %66, %60
  %70 = phi i32 [ %65, %60 ], [ %68, %66 ]
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %69, %91, %135, %159
  %72 = call i32 @FD_ZERO(i32* %14)
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @FD_SET(i32 %73, i32* %14)
  %75 = load i64, i64* @interactive, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @stdin, align 4
  %79 = call i32 @fileno(i32 %78)
  %80 = call i32 @FD_SET(i32 %79, i32* %14)
  br label %81

81:                                               ; preds = %77, %71
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.timeval*, %struct.timeval** %13, align 8
  %84 = call i32 @select(i32 %82, i32* %14, i32* null, i32* null, %struct.timeval* %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load i64, i64* @errno, align 8
  %89 = load i64, i64* @EINTR, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %71

92:                                               ; preds = %87
  store i32 1, i32* %16, align 4
  %93 = call i32 @log_err_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %160

94:                                               ; preds = %81
  %95 = load i32, i32* %16, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 @log_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %16, align 4
  br label %160

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = call i64 @FD_ISSET(i32 %101, i32* %14)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %100
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.sock_args*, %struct.sock_args** %11, align 8
  %107 = call i32 @socket_read(i32 %105, %struct.sock_args* %106)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i32 1, i32* %16, align 4
  br label %160

111:                                              ; preds = %104
  %112 = load i32, i32* %16, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %160

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %115, %100
  store i32 0, i32* %16, align 4
  %117 = load i32, i32* @stdin, align 4
  %118 = call i32 @fileno(i32 %117)
  %119 = call i64 @FD_ISSET(i32 %118, i32* %14)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %116
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.sock_args*, %struct.sock_args** %11, align 8
  %124 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i64 @stdin_to_socket(i32 %122, i64 %125, i8* %126, i32 %127)
  %129 = icmp sle i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %160

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %116
  %133 = load i64, i64* @interactive, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %71

136:                                              ; preds = %132
  %137 = load i32, i32* @iter, align 4
  %138 = icmp ne i32 %137, -1
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load i32, i32* @iter, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* @iter, align 4
  %142 = load i32, i32* @iter, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %160

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145, %136
  %147 = call i32 @log_msg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @quiet, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  %151 = load i32, i32* %8, align 4
  %152 = load i8*, i8** %9, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.sock_args*, %struct.sock_args** %11, align 8
  %155 = call i64 @send_msg(i32 %151, i8* %152, i32 %153, %struct.sock_args* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  store i32 1, i32* %16, align 4
  br label %160

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %158, %146
  br label %71

160:                                              ; preds = %157, %144, %130, %114, %110, %97, %92
  %161 = load i32, i32* %16, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %160, %45
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local i32 @set_recv_attr(i32, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i64 @send_msg(i32, i8*, i32, %struct.sock_args*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @log_err_errno(i8*) #1

declare dso_local i32 @log_error(i8*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @socket_read(i32, %struct.sock_args*) #1

declare dso_local i64 @stdin_to_socket(i32, i64, i8*, i32) #1

declare dso_local i32 @log_msg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
