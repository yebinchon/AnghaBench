; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_connectsock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_connectsock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_args = type { i64, i64, i32, i64, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to create socket\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to set non-blocking option\00", align 1
@SOCK_STREAM = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to connect to remote host\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.sock_args*)* @connectsock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connectsock(i8* %0, i32 %1, %struct.sock_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sock_args* %2, %struct.sock_args** %7, align 8
  store i32 -1, i32* %9, align 4
  %11 = load %struct.sock_args*, %struct.sock_args** %7, align 8
  %12 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sock_args*, %struct.sock_args** %7, align 8
  %15 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sock_args*, %struct.sock_args** %7, align 8
  %18 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @socket(i32 %13, i64 %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = call i32 @log_err_errno(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %141

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @F_GETFL, align 4
  %28 = call i64 (i32, i32, ...) @fcntl(i32 %26, i32 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @F_SETFL, align 4
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @O_NONBLOCK, align 8
  %36 = or i64 %34, %35
  %37 = call i64 (i32, i32, ...) @fcntl(i32 %32, i32 %33, i64 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31, %25
  %40 = call i32 @log_err_errno(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %137

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @set_reuseport(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %137

46:                                               ; preds = %41
  %47 = load %struct.sock_args*, %struct.sock_args** %7, align 8
  %48 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.sock_args*, %struct.sock_args** %7, align 8
  %54 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @bind_to_device(i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %137

59:                                               ; preds = %51, %46
  %60 = load %struct.sock_args*, %struct.sock_args** %7, align 8
  %61 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.sock_args*, %struct.sock_args** %7, align 8
  %67 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sock_args*, %struct.sock_args** %7, align 8
  %70 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @set_unicast_if(i32 %65, i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %137

75:                                               ; preds = %64, %59
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.sock_args*, %struct.sock_args** %7, align 8
  %78 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.sock_args*, %struct.sock_args** %7, align 8
  %84 = call i64 @bind_socket(i32 %82, %struct.sock_args* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %137

87:                                               ; preds = %81, %76
  %88 = load %struct.sock_args*, %struct.sock_args** %7, align 8
  %89 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SOCK_STREAM, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %135

94:                                               ; preds = %87
  %95 = load %struct.sock_args*, %struct.sock_args** %7, align 8
  %96 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load i32, i32* %8, align 4
  %101 = load i8*, i8** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.sock_args*, %struct.sock_args** %7, align 8
  %104 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @tcp_md5sig(i32 %100, i8* %101, i32 %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %137

109:                                              ; preds = %99, %94
  %110 = load %struct.sock_args*, %struct.sock_args** %7, align 8
  %111 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %135

115:                                              ; preds = %109
  %116 = load i32, i32* %8, align 4
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i64 @connect(i32 %116, i8* %117, i32 %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %115
  %122 = load i64, i64* @errno, align 8
  %123 = load i64, i64* @EINPROGRESS, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = call i32 @log_err_errno(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %137

127:                                              ; preds = %121
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @wait_for_connect(i32 %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %137

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %133, %115
  br label %135

135:                                              ; preds = %134, %114, %93
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %4, align 4
  br label %141

137:                                              ; preds = %132, %125, %108, %86, %74, %58, %45, %39
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @close(i32 %138)
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %137, %135, %23
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @socket(i32, i64, i32) #1

declare dso_local i32 @log_err_errno(i8*) #1

declare dso_local i64 @fcntl(i32, i32, ...) #1

declare dso_local i64 @set_reuseport(i32) #1

declare dso_local i64 @bind_to_device(i32, i32) #1

declare dso_local i64 @set_unicast_if(i32, i32, i32) #1

declare dso_local i64 @bind_socket(i32, %struct.sock_args*) #1

declare dso_local i64 @tcp_md5sig(i32, i8*, i32, i32) #1

declare dso_local i64 @connect(i32, i8*, i32) #1

declare dso_local i32 @wait_for_connect(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
