; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_sock_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_sock_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i64 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_iucv = type { i32, i32 }
%struct.iucv_sock = type { i64, i32, i32 }

@AF_IUCV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IUCV_OPEN = common dso_local global i64 0, align 8
@IUCV_BOUND = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@AF_IUCV_TRANS_HIPER = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@AF_IUCV_FLAG_SYN = common dso_local global i32 0, align 4
@IUCV_CONNECTED = common dso_local global i64 0, align 8
@IUCV_DISCONN = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@IUCV_CLOSED = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@AF_IUCV_TRANS_IUCV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @iucv_sock_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iucv_sock_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_iucv*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.iucv_sock*, align 8
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_iucv*
  store %struct.sockaddr_iucv* %15, %struct.sockaddr_iucv** %10, align 8
  %16 = load %struct.socket*, %struct.socket** %6, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %11, align 8
  %19 = load %struct.sock*, %struct.sock** %11, align 8
  %20 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %19)
  store %struct.iucv_sock* %20, %struct.iucv_sock** %12, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 8
  br i1 %23, label %30, label %24

24:                                               ; preds = %4
  %25 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AF_IUCV, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %179

33:                                               ; preds = %24
  %34 = load %struct.sock*, %struct.sock** %11, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IUCV_OPEN, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.sock*, %struct.sock** %11, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IUCV_BOUND, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EBADFD, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %179

48:                                               ; preds = %39, %33
  %49 = load %struct.sock*, %struct.sock** %11, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IUCV_OPEN, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.iucv_sock*, %struct.iucv_sock** %12, align 8
  %56 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AF_IUCV_TRANS_HIPER, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @EBADFD, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %179

63:                                               ; preds = %54, %48
  %64 = load %struct.sock*, %struct.sock** %11, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SOCK_STREAM, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load %struct.sock*, %struct.sock** %11, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SOCK_SEQPACKET, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %179

78:                                               ; preds = %69, %63
  %79 = load %struct.sock*, %struct.sock** %11, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IUCV_OPEN, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load %struct.sock*, %struct.sock** %11, align 8
  %86 = call i32 @iucv_sock_autobind(%struct.sock* %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %5, align 4
  br label %179

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %78
  %94 = load %struct.sock*, %struct.sock** %11, align 8
  %95 = call i32 @lock_sock(%struct.sock* %94)
  %96 = load %struct.iucv_sock*, %struct.iucv_sock** %12, align 8
  %97 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sockaddr_iucv*, %struct.sockaddr_iucv** %10, align 8
  %100 = getelementptr inbounds %struct.sockaddr_iucv, %struct.sockaddr_iucv* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @memcpy(i32 %98, i32 %101, i32 8)
  %103 = load %struct.iucv_sock*, %struct.iucv_sock** %12, align 8
  %104 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.sockaddr_iucv*, %struct.sockaddr_iucv** %10, align 8
  %107 = getelementptr inbounds %struct.sockaddr_iucv, %struct.sockaddr_iucv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memcpy(i32 %105, i32 %108, i32 8)
  %110 = load %struct.iucv_sock*, %struct.iucv_sock** %12, align 8
  %111 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AF_IUCV_TRANS_HIPER, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %93
  %116 = load %struct.socket*, %struct.socket** %6, align 8
  %117 = getelementptr inbounds %struct.socket, %struct.socket* %116, i32 0, i32 0
  %118 = load %struct.sock*, %struct.sock** %117, align 8
  %119 = load i32, i32* @AF_IUCV_FLAG_SYN, align 4
  %120 = call i32 @iucv_send_ctrl(%struct.sock* %118, i32 %119)
  store i32 %120, i32* %13, align 4
  br label %125

121:                                              ; preds = %93
  %122 = load %struct.socket*, %struct.socket** %6, align 8
  %123 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %124 = call i32 @afiucv_path_connect(%struct.socket* %122, %struct.sockaddr* %123)
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %121, %115
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %175

129:                                              ; preds = %125
  %130 = load %struct.sock*, %struct.sock** %11, align 8
  %131 = getelementptr inbounds %struct.sock, %struct.sock* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @IUCV_CONNECTED, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %129
  %136 = load %struct.sock*, %struct.sock** %11, align 8
  %137 = load %struct.sock*, %struct.sock** %11, align 8
  %138 = load i64, i64* @IUCV_CONNECTED, align 8
  %139 = load i64, i64* @IUCV_DISCONN, align 8
  %140 = call i32 @iucv_sock_in_state(%struct.sock* %137, i64 %138, i64 %139)
  %141 = load %struct.sock*, %struct.sock** %11, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @O_NONBLOCK, align 4
  %144 = and i32 %142, %143
  %145 = call i32 @sock_sndtimeo(%struct.sock* %141, i32 %144)
  %146 = call i32 @iucv_sock_wait(%struct.sock* %136, i32 %140, i32 %145)
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %135, %129
  %148 = load %struct.sock*, %struct.sock** %11, align 8
  %149 = getelementptr inbounds %struct.sock, %struct.sock* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @IUCV_DISCONN, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %159, label %153

153:                                              ; preds = %147
  %154 = load %struct.sock*, %struct.sock** %11, align 8
  %155 = getelementptr inbounds %struct.sock, %struct.sock* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @IUCV_CLOSED, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %153, %147
  %160 = load i32, i32* @ECONNREFUSED, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %13, align 4
  br label %162

162:                                              ; preds = %159, %153
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = load %struct.iucv_sock*, %struct.iucv_sock** %12, align 8
  %167 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @AF_IUCV_TRANS_IUCV, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = load %struct.sock*, %struct.sock** %11, align 8
  %173 = call i32 @iucv_sever_path(%struct.sock* %172, i32 0)
  br label %174

174:                                              ; preds = %171, %165, %162
  br label %175

175:                                              ; preds = %174, %128
  %176 = load %struct.sock*, %struct.sock** %11, align 8
  %177 = call i32 @release_sock(%struct.sock* %176)
  %178 = load i32, i32* %13, align 4
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %175, %90, %75, %60, %45, %30
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @iucv_sock_autobind(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @iucv_send_ctrl(%struct.sock*, i32) #1

declare dso_local i32 @afiucv_path_connect(%struct.socket*, %struct.sockaddr*) #1

declare dso_local i32 @iucv_sock_wait(%struct.sock*, i32, i32) #1

declare dso_local i32 @iucv_sock_in_state(%struct.sock*, i64, i64) #1

declare dso_local i32 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @iucv_sever_path(%struct.sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
