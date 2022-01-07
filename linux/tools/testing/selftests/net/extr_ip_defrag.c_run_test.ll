; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ip_defrag.c_run_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ip_defrag.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.sockaddr = type { i32 }

@__const.run_test.tv = private unnamed_addr constant %struct.timeval { i32 1, i32 10 }, align 4
@MSG_LEN_MAX = common dso_local global i32 0, align 4
@udp_payload = common dso_local global i32* null, align 8
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_RAW = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"socket tx_raw\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"socket rx_udp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"setsockopt rcv timeout\00", align 1
@payload_len = common dso_local global i32 0, align 4
@cfg_verbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"payload_len: %d\0A\00", align 1
@cfg_overlap = common dso_local global i64 0, align 8
@FRAG_HLEN = common dso_local global i32 0, align 4
@max_frag_len = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"close tx_raw\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"close rx_udp\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"processed %d messages, %d fragments\0A\00", align 1
@msg_counter = common dso_local global i32 0, align 4
@frag_counter = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"PASS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr*, i32, i32)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_test(%struct.sockaddr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = bitcast %struct.timeval* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.timeval* @__const.run_test.tv to i8*), i64 8, i1 false)
  store i32 8, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %24, %3
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @MSG_LEN_MAX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load i32, i32* %10, align 4
  %19 = srem i32 %18, 256
  %20 = load i32*, i32** @udp_payload, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %19, i32* %23, align 4
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %10, align 4
  br label %13

27:                                               ; preds = %13
  %28 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %29 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SOCK_RAW, align 4
  %32 = load i32, i32* @IPPROTO_RAW, align 4
  %33 = call i32 @socket(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @error(i32 1, i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %27
  %40 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %41 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SOCK_DGRAM, align 4
  %44 = call i32 @socket(i32 %42, i32 %43, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @errno, align 4
  %49 = call i32 @error(i32 1, i32 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %39
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @bind(i32 %51, %struct.sockaddr* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 @error(i32 1, i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @SOL_SOCKET, align 4
  %62 = load i32, i32* @SO_RCVTIMEO, align 4
  %63 = call i64 @setsockopt(i32 %60, i32 %61, i32 %62, %struct.timeval* %9, i32 8)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 @error(i32 1, i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %59
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* @payload_len, align 4
  br label %70

70:                                               ; preds = %127, %68
  %71 = load i32, i32* @payload_len, align 4
  %72 = load i32, i32* @MSG_LEN_MAX, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %132

74:                                               ; preds = %70
  %75 = load i64, i64* @cfg_verbose, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @payload_len, align 4
  %79 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i64, i64* @cfg_overlap, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = call i32 (...) @rand()
  %86 = load i32, i32* @FRAG_HLEN, align 4
  %87 = sub nsw i32 1500, %86
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %87, %88
  %90 = srem i32 %85, %89
  %91 = add nsw i32 %84, %90
  store i32 %91, i32* @max_frag_len, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @send_udp_frags(i32 %92, %struct.sockaddr* %93, i32 %94, i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @recv_validate_udp(i32 %97)
  br label %126

99:                                               ; preds = %80
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* @max_frag_len, align 4
  br label %101

101:                                              ; preds = %123, %99
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @send_udp_frags(i32 %102, %struct.sockaddr* %103, i32 %104, i32 %105)
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @recv_validate_udp(i32 %107)
  %109 = call i32 (...) @rand()
  %110 = srem i32 %109, 8
  %111 = mul nsw i32 8, %110
  %112 = load i32, i32* @max_frag_len, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* @max_frag_len, align 4
  br label %114

114:                                              ; preds = %101
  %115 = load i32, i32* @max_frag_len, align 4
  %116 = load i32, i32* @FRAG_HLEN, align 4
  %117 = sub nsw i32 1500, %116
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @max_frag_len, align 4
  %121 = load i32, i32* @payload_len, align 4
  %122 = icmp sle i32 %120, %121
  br label %123

123:                                              ; preds = %119, %114
  %124 = phi i1 [ false, %114 ], [ %122, %119 ]
  br i1 %124, label %101, label %125

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125, %83
  br label %127

127:                                              ; preds = %126
  %128 = call i32 (...) @rand()
  %129 = srem i32 %128, 4096
  %130 = load i32, i32* @payload_len, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* @payload_len, align 4
  br label %70

132:                                              ; preds = %70
  %133 = load i32, i32* %7, align 4
  %134 = call i64 @close(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* @errno, align 4
  %138 = call i32 @error(i32 1, i32 %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %132
  %140 = load i32, i32* %8, align 4
  %141 = call i64 @close(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32, i32* @errno, align 4
  %145 = call i32 @error(i32 1, i32 %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %139
  %147 = load i64, i64* @cfg_verbose, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32, i32* @msg_counter, align 4
  %151 = load i32, i32* @frag_counter, align 4
  %152 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %146
  %154 = load i32, i32* @stderr, align 4
  %155 = call i32 @fprintf(i32 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @error(i32, i32, i8*) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.timeval*, i32) #2

declare dso_local i32 @printf(i8*, i32, ...) #2

declare dso_local i32 @rand(...) #2

declare dso_local i32 @send_udp_frags(i32, %struct.sockaddr*, i32, i32) #2

declare dso_local i32 @recv_validate_udp(i32) #2

declare dso_local i64 @close(i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
