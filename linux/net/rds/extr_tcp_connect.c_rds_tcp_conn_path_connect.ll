; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_tcp_connect.c_rds_tcp_conn_path_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_tcp_connect.c_rds_tcp_conn_path_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_conn_path = type { i64, %struct.rds_tcp_connection*, %struct.rds_connection* }
%struct.rds_tcp_connection = type { i32 }
%struct.rds_connection = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.socket = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32, i64, i8*, %struct.TYPE_6__, i8* }
%struct.sockaddr_in = type { i8*, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"bind failed with %d at address %pI6c\0A\00", align 1
@RDS_TCP_PORT = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"connect to address %pI6c returned %d\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_tcp_conn_path_connect(%struct.rds_conn_path* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rds_conn_path*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr_in6, align 8
  %6 = alloca %struct.sockaddr_in, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rds_connection*, align 8
  %12 = alloca %struct.rds_tcp_connection*, align 8
  store %struct.rds_conn_path* %0, %struct.rds_conn_path** %3, align 8
  store %struct.socket* null, %struct.socket** %4, align 8
  %13 = load %struct.rds_conn_path*, %struct.rds_conn_path** %3, align 8
  %14 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %13, i32 0, i32 2
  %15 = load %struct.rds_connection*, %struct.rds_connection** %14, align 8
  store %struct.rds_connection* %15, %struct.rds_connection** %11, align 8
  %16 = load %struct.rds_conn_path*, %struct.rds_conn_path** %3, align 8
  %17 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %16, i32 0, i32 1
  %18 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %17, align 8
  store %struct.rds_tcp_connection* %18, %struct.rds_tcp_connection** %12, align 8
  %19 = load %struct.rds_conn_path*, %struct.rds_conn_path** %3, align 8
  %20 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.rds_conn_path*, %struct.rds_conn_path** %3, align 8
  %25 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %24, i32 0, i32 2
  %26 = load %struct.rds_connection*, %struct.rds_connection** %25, align 8
  %27 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %199

33:                                               ; preds = %23, %1
  %34 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %12, align 8
  %35 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.rds_conn_path*, %struct.rds_conn_path** %3, align 8
  %38 = call i64 @rds_conn_path_up(%struct.rds_conn_path* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %12, align 8
  %42 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  store i32 0, i32* %2, align 4
  br label %199

44:                                               ; preds = %33
  %45 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %46 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %45, i32 0, i32 3
  %47 = call i64 @ipv6_addr_v4mapped(%struct.TYPE_6__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %51 = call i32 @rds_conn_net(%struct.rds_connection* %50)
  %52 = load i32, i32* @PF_INET, align 4
  %53 = load i32, i32* @SOCK_STREAM, align 4
  %54 = load i32, i32* @IPPROTO_TCP, align 4
  %55 = call i32 @sock_create_kern(i32 %51, i32 %52, i32 %53, i32 %54, %struct.socket** %4)
  store i32 %55, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %63

56:                                               ; preds = %44
  %57 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %58 = call i32 @rds_conn_net(%struct.rds_connection* %57)
  %59 = load i32, i32* @PF_INET6, align 4
  %60 = load i32, i32* @SOCK_STREAM, align 4
  %61 = load i32, i32* @IPPROTO_TCP, align 4
  %62 = call i32 @sock_create_kern(i32 %58, i32 %59, i32 %60, i32 %61, %struct.socket** %4)
  store i32 %62, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %63

63:                                               ; preds = %56, %49
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %188

67:                                               ; preds = %63
  %68 = load %struct.socket*, %struct.socket** %4, align 8
  %69 = call i32 @rds_tcp_tune(%struct.socket* %68)
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %67
  %73 = load i8*, i8** @AF_INET6, align 8
  %74 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 4
  store i8* %73, i8** %74, align 8
  %75 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 3
  %76 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %77 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %76, i32 0, i32 3
  %78 = bitcast %struct.TYPE_6__* %75 to i8*
  %79 = bitcast %struct.TYPE_6__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 8, i1 false)
  %80 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 2
  store i8* null, i8** %80, align 8
  %81 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %83 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 0
  store i32 %84, i32* %85, align 8
  %86 = bitcast %struct.sockaddr_in6* %5 to %struct.sockaddr*
  store %struct.sockaddr* %86, %struct.sockaddr** %7, align 8
  store i32 40, i32* %8, align 4
  br label %100

87:                                               ; preds = %67
  %88 = load i8*, i8** @AF_INET, align 8
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i8* %88, i8** %89, align 8
  %90 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %91 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i8* null, i8** %98, align 8
  %99 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  store %struct.sockaddr* %99, %struct.sockaddr** %7, align 8
  store i32 24, i32* %8, align 4
  br label %100

100:                                              ; preds = %87, %72
  %101 = load %struct.socket*, %struct.socket** %4, align 8
  %102 = getelementptr inbounds %struct.socket, %struct.socket* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32)** %104, align 8
  %106 = load %struct.socket*, %struct.socket** %4, align 8
  %107 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 %105(%struct.socket* %106, %struct.sockaddr* %107, i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %100
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %115 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %114, i32 0, i32 3
  %116 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %113, %struct.TYPE_6__* %115)
  br label %188

117:                                              ; preds = %100
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %117
  %121 = load i8*, i8** @AF_INET6, align 8
  %122 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 4
  store i8* %121, i8** %122, align 8
  %123 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 3
  %124 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %125 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %124, i32 0, i32 1
  %126 = bitcast %struct.TYPE_6__* %123 to i8*
  %127 = bitcast %struct.TYPE_6__* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %126, i8* align 8 %127, i64 8, i1 false)
  %128 = load i32, i32* @RDS_TCP_PORT, align 4
  %129 = call i8* @htons(i32 %128)
  %130 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 2
  store i8* %129, i8** %130, align 8
  %131 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 1
  store i64 0, i64* %131, align 8
  %132 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %133 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 0
  store i32 %134, i32* %135, align 8
  %136 = bitcast %struct.sockaddr_in6* %5 to %struct.sockaddr*
  store %struct.sockaddr* %136, %struct.sockaddr** %7, align 8
  store i32 40, i32* %8, align 4
  br label %152

137:                                              ; preds = %117
  %138 = load i8*, i8** @AF_INET, align 8
  %139 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i8* %138, i8** %139, align 8
  %140 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %141 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* @RDS_TCP_PORT, align 4
  %149 = call i8* @htons(i32 %148)
  %150 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i8* %149, i8** %150, align 8
  %151 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  store %struct.sockaddr* %151, %struct.sockaddr** %7, align 8
  store i32 24, i32* %8, align 4
  br label %152

152:                                              ; preds = %137, %120
  %153 = load %struct.socket*, %struct.socket** %4, align 8
  %154 = load %struct.rds_conn_path*, %struct.rds_conn_path** %3, align 8
  %155 = call i32 @rds_tcp_set_callbacks(%struct.socket* %153, %struct.rds_conn_path* %154)
  %156 = load %struct.socket*, %struct.socket** %4, align 8
  %157 = getelementptr inbounds %struct.socket, %struct.socket* %156, i32 0, i32 0
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i32 (%struct.socket*, %struct.sockaddr*, i32, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32)** %159, align 8
  %161 = load %struct.socket*, %struct.socket** %4, align 8
  %162 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @O_NONBLOCK, align 4
  %165 = call i32 %160(%struct.socket* %161, %struct.sockaddr* %162, i32 %163, i32 %164)
  store i32 %165, i32* %10, align 4
  %166 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %167 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %166, i32 0, i32 1
  %168 = load i32, i32* %10, align 4
  %169 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %167, i32 %168)
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @EINPROGRESS, align 4
  %172 = sub nsw i32 0, %171
  %173 = icmp eq i32 %170, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %152
  store i32 0, i32* %10, align 4
  br label %175

175:                                              ; preds = %174, %152
  %176 = load i32, i32* %10, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load %struct.socket*, %struct.socket** %4, align 8
  %180 = call i32 @rds_tcp_keepalive(%struct.socket* %179)
  store %struct.socket* null, %struct.socket** %4, align 8
  br label %187

181:                                              ; preds = %175
  %182 = load %struct.socket*, %struct.socket** %4, align 8
  %183 = load %struct.rds_conn_path*, %struct.rds_conn_path** %3, align 8
  %184 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %183, i32 0, i32 1
  %185 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %184, align 8
  %186 = call i32 @rds_tcp_restore_callbacks(%struct.socket* %182, %struct.rds_tcp_connection* %185)
  br label %187

187:                                              ; preds = %181, %178
  br label %188

188:                                              ; preds = %187, %112, %66
  %189 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %12, align 8
  %190 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %189, i32 0, i32 0
  %191 = call i32 @mutex_unlock(i32* %190)
  %192 = load %struct.socket*, %struct.socket** %4, align 8
  %193 = icmp ne %struct.socket* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load %struct.socket*, %struct.socket** %4, align 8
  %196 = call i32 @sock_release(%struct.socket* %195)
  br label %197

197:                                              ; preds = %194, %188
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %197, %40, %30
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @rds_conn_path_up(%struct.rds_conn_path*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @ipv6_addr_v4mapped(%struct.TYPE_6__*) #1

declare dso_local i32 @sock_create_kern(i32, i32, i32, i32, %struct.socket**) #1

declare dso_local i32 @rds_conn_net(%struct.rds_connection*) #1

declare dso_local i32 @rds_tcp_tune(%struct.socket*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rdsdebug(i8*, ...) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @rds_tcp_set_callbacks(%struct.socket*, %struct.rds_conn_path*) #1

declare dso_local i32 @rds_tcp_keepalive(%struct.socket*) #1

declare dso_local i32 @rds_tcp_restore_callbacks(%struct.socket*, %struct.rds_tcp_connection*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
