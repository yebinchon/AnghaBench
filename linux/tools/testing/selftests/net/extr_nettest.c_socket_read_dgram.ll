; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_socket_read_dgram.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_socket_read_dgram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_args = type { i32, i64, i64 }
%struct.sockaddr = type { i64 }
%struct.iovec = type { i32, i8* }
%struct.msghdr = type { i8*, i32, i32, i32, i8*, %struct.iovec* }
%struct.cmsghdr = type { i32 }
%struct.sockaddr_in6 = type { i32, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.in_addr = type { i32 }
%struct.sockaddr_in = type { i32, %struct.in_addr }

@.str = private unnamed_addr constant [25 x i8] c"peer closed connection.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to read message: %d: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"Message from:\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"    %.24s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Device index mismatch: expected %d have %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Device index matches: expected %d have %d\0A\00", align 1
@interactive = common dso_local global i32 0, align 4
@server_mode = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@try_broadcast = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"Sent message:\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"failed to send msg to peer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sock_args*)* @socket_read_dgram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_read_dgram(i32 %0, %struct.sock_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock_args*, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.iovec], align 16
  %10 = alloca %struct.msghdr, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca %struct.cmsghdr*, align 8
  %13 = alloca [16384 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_in6*, align 8
  %17 = alloca %struct.in6_addr*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.in_addr, align 4
  %20 = alloca %struct.sockaddr_in*, align 8
  %21 = alloca %struct.sockaddr_in6*, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sock_args* %1, %struct.sock_args** %5, align 8
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %24 = bitcast i8* %23 to %struct.sockaddr*
  store %struct.sockaddr* %24, %struct.sockaddr** %7, align 8
  store i32 8, i32* %8, align 4
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 0
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  store i8* %26, i8** %25, align 8
  %27 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 1
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 2
  store i32 1, i32* %29, align 4
  %30 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 3
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 4
  store i8* null, i8** %31, align 8
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 5
  %33 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 0
  store %struct.iovec* %33, %struct.iovec** %32, align 8
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %35 = bitcast i8* %34 to %struct.cmsghdr*
  store %struct.cmsghdr* %35, %struct.cmsghdr** %12, align 8
  %36 = getelementptr inbounds [16384 x i8], [16384 x i8]* %13, i64 0, i64 0
  %37 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 0
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 0
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %39, i32 0, i32 0
  store i32 16384, i32* %40, align 16
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %42 = call i32 @memset(i8* %41, i32 0, i32 256)
  %43 = load %struct.cmsghdr*, %struct.cmsghdr** %12, align 8
  %44 = bitcast %struct.cmsghdr* %43 to i8*
  %45 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 4
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 3
  store i32 256, i32* %46, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @recvmsg(i32 %47, %struct.msghdr* %10, i32 0)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %2
  %52 = call i32 (i8*, ...) @log_msg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %213

53:                                               ; preds = %2
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @errno, align 8
  %59 = call i8* @strerror(i64 %58)
  %60 = call i32 (i8*, ...) @log_msg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %57, i8* %59)
  store i32 -1, i32* %3, align 4
  br label %213

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [16384 x i8], [16384 x i8]* %13, i64 0, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %67 = call i32 @log_address(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.sockaddr* %66)
  %68 = getelementptr inbounds [16384 x i8], [16384 x i8]* %13, i64 0, i64 0
  %69 = load i32, i32* %15, align 4
  %70 = icmp sgt i32 %69, 24
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %73 = call i32 (i8*, ...) @log_msg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %68, i8* %72)
  %74 = call i32 @get_index_from_cmsg(%struct.msghdr* %10)
  store i32 %74, i32* %14, align 4
  %75 = load %struct.sock_args*, %struct.sock_args** %5, align 8
  %76 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %62
  %80 = load %struct.sock_args*, %struct.sock_args** %5, align 8
  %81 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.sock_args*, %struct.sock_args** %5, align 8
  %87 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %88, i32 %89)
  store i32 -1, i32* %3, align 4
  br label %213

91:                                               ; preds = %79
  %92 = load %struct.sock_args*, %struct.sock_args** %5, align 8
  %93 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 (i8*, ...) @log_msg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %62
  %98 = load i32, i32* @interactive, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %210, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* @server_mode, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %210

103:                                              ; preds = %100
  %104 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %105 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @AF_INET6, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %144

109:                                              ; preds = %103
  %110 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %111 = bitcast %struct.sockaddr* %110 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %111, %struct.sockaddr_in6** %16, align 8
  %112 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %16, align 8
  %113 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %112, i32 0, i32 1
  store %struct.in6_addr* %113, %struct.in6_addr** %17, align 8
  %114 = load %struct.in6_addr*, %struct.in6_addr** %17, align 8
  %115 = call i64 @IN6_IS_ADDR_V4MAPPED(%struct.in6_addr* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %143

117:                                              ; preds = %109
  %118 = load %struct.in6_addr*, %struct.in6_addr** %17, align 8
  %119 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %118, i32 0, i32 0
  store i32* %119, i32** %18, align 8
  %120 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %121 = bitcast i8* %120 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %121, %struct.sockaddr_in** %20, align 8
  %122 = load i32*, i32** %18, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  store i32* %123, i32** %18, align 8
  %124 = load i32*, i32** %18, align 8
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %19, i32 0, i32 0
  store i32 %125, i32* %126, align 4
  %127 = load %struct.sockaddr_in*, %struct.sockaddr_in** %20, align 8
  %128 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %127, i32 0, i32 1
  %129 = bitcast %struct.in_addr* %128 to i8*
  %130 = bitcast %struct.in_addr* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %129, i8* align 4 %130, i64 4, i1 false)
  %131 = load i32, i32* @AF_INET, align 4
  %132 = load %struct.sockaddr_in*, %struct.sockaddr_in** %20, align 8
  %133 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %4, align 4
  %135 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* @AF_INET, align 4
  %139 = call i64 @send_msg_cmsg(i32 %134, i8* %135, i32 %136, i32 %137, i32 %138)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %117
  br label %211

142:                                              ; preds = %117
  br label %143

143:                                              ; preds = %142, %109
  br label %144

144:                                              ; preds = %143, %103
  br label %145

145:                                              ; preds = %197, %144
  %146 = load i32, i32* %15, align 4
  %147 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 0
  %148 = getelementptr inbounds %struct.iovec, %struct.iovec* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 16
  %149 = load %struct.sock_args*, %struct.sock_args** %5, align 8
  %150 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @AF_INET6, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %181

154:                                              ; preds = %145
  %155 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %156 = bitcast %struct.sockaddr* %155 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %156, %struct.sockaddr_in6** %21, align 8
  %157 = load %struct.sock_args*, %struct.sock_args** %5, align 8
  %158 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %154
  %162 = load i32, i32* %4, align 4
  %163 = getelementptr inbounds [16384 x i8], [16384 x i8]* %13, i64 0, i64 0
  %164 = load i32, i32* %15, align 4
  %165 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %166 = load i32, i32* %8, align 4
  %167 = call i64 @sendto(i32 %162, i8* %163, i32 %164, i32 0, i8* %165, i32 %166)
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  br label %211

170:                                              ; preds = %161
  br label %180

171:                                              ; preds = %154
  %172 = load i32, i32* %14, align 4
  %173 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %21, align 8
  %174 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @sendmsg(i32 %175, %struct.msghdr* %10, i32 0)
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %211

179:                                              ; preds = %171
  br label %180

180:                                              ; preds = %179, %170
  br label %202

181:                                              ; preds = %145
  %182 = load i32, i32* %4, align 4
  %183 = call i32 @sendmsg(i32 %182, %struct.msghdr* %10, i32 0)
  store i32 %183, i32* %22, align 4
  %184 = load i32, i32* %22, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %181
  %187 = load i64, i64* @errno, align 8
  %188 = load i64, i64* @EACCES, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %200

190:                                              ; preds = %186
  %191 = load i64, i64* @try_broadcast, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %190
  store i64 0, i64* @try_broadcast, align 8
  %194 = load i32, i32* %4, align 4
  %195 = call i32 @set_broadcast(i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %193
  br label %145

198:                                              ; preds = %193
  %199 = load i64, i64* @EACCES, align 8
  store i64 %199, i64* @errno, align 8
  br label %200

200:                                              ; preds = %198, %190, %186
  br label %211

201:                                              ; preds = %181
  br label %202

202:                                              ; preds = %201, %180
  %203 = call i32 (i8*, ...) @log_msg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %204 = getelementptr inbounds [16384 x i8], [16384 x i8]* %13, i64 0, i64 0
  %205 = load i32, i32* %15, align 4
  %206 = icmp sgt i32 %205, 24
  %207 = zext i1 %206 to i64
  %208 = select i1 %206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %209 = call i32 (i8*, ...) @log_msg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %204, i8* %208)
  br label %210

210:                                              ; preds = %202, %100, %97
  store i32 1, i32* %3, align 4
  br label %213

211:                                              ; preds = %200, %178, %169, %141
  %212 = call i32 @log_err_errno(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %213

213:                                              ; preds = %211, %210, %85, %56, %51
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @log_msg(i8*, ...) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @log_address(i8*, %struct.sockaddr*) #1

declare dso_local i32 @get_index_from_cmsg(%struct.msghdr*) #1

declare dso_local i32 @log_error(i8*, i32, i32) #1

declare dso_local i64 @IN6_IS_ADDR_V4MAPPED(%struct.in6_addr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @send_msg_cmsg(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @sendto(i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @set_broadcast(i32) #1

declare dso_local i32 @log_err_errno(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
