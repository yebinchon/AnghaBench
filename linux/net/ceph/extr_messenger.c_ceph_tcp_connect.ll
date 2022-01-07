; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_tcp_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_tcp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { %struct.socket*, %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.socket = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* }
%struct.sockaddr = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.sockaddr_storage }
%struct.sockaddr_storage = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"connect %s\0A\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"connect %s EINPROGRESS sk_state = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"connect %s error %d\0A\00", align 1
@TCP_NODELAY = common dso_local global i32 0, align 4
@SOL_TCP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"kernel_setsockopt(TCP_NODELAY) failed: %d\00", align 1
@socket_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_connection*)* @ceph_tcp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_tcp_connect(%struct.ceph_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_connection*, align 8
  %4 = alloca %struct.sockaddr_storage, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %3, align 8
  %9 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %10 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = bitcast %struct.sockaddr_storage* %4 to i8*
  %13 = bitcast %struct.sockaddr_storage* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 8 %13, i64 4, i1 false)
  %14 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %15 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %14, i32 0, i32 0
  %16 = load %struct.socket*, %struct.socket** %15, align 8
  %17 = call i32 @BUG_ON(%struct.socket* %16)
  %18 = call i32 (...) @memalloc_noio_save()
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %20 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = call i32 @read_pnet(i32* %22)
  %24 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SOCK_STREAM, align 4
  %27 = load i32, i32* @IPPROTO_TCP, align 4
  %28 = call i32 @sock_create_kern(i32 %23, i32 %25, i32 %26, i32 %27, %struct.socket** %5)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @memalloc_noio_restore(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %110

35:                                               ; preds = %1
  %36 = load i32, i32* @GFP_NOFS, align 4
  %37 = load %struct.socket*, %struct.socket** %5, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i32 %36, i32* %40, align 4
  %41 = load %struct.socket*, %struct.socket** %5, align 8
  %42 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %43 = call i32 @set_sock_callbacks(%struct.socket* %41, %struct.ceph_connection* %42)
  %44 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %45 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %44, i32 0, i32 2
  %46 = call i32 @ceph_pr_addr(%struct.TYPE_8__* %45)
  %47 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %49 = call i32 @con_sock_state_connecting(%struct.ceph_connection* %48)
  %50 = load %struct.socket*, %struct.socket** %5, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32 (%struct.socket*, %struct.sockaddr*, i32, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32)** %53, align 8
  %55 = load %struct.socket*, %struct.socket** %5, align 8
  %56 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %57 = load i32, i32* @O_NONBLOCK, align 4
  %58 = call i32 %54(%struct.socket* %55, %struct.sockaddr* %56, i32 4, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @EINPROGRESS, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %35
  %64 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %65 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %64, i32 0, i32 2
  %66 = call i32 @ceph_pr_addr(%struct.TYPE_8__* %65)
  %67 = load %struct.socket*, %struct.socket** %5, align 8
  %68 = getelementptr inbounds %struct.socket, %struct.socket* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %71)
  br label %86

73:                                               ; preds = %35
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %78 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %77, i32 0, i32 2
  %79 = call i32 @ceph_pr_addr(%struct.TYPE_8__* %78)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load %struct.socket*, %struct.socket** %5, align 8
  %83 = call i32 @sock_release(%struct.socket* %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %110

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %63
  %87 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %88 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = call i32 @from_msgr(%struct.TYPE_7__* %89)
  %91 = load i32, i32* @TCP_NODELAY, align 4
  %92 = call i64 @ceph_test_opt(i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %86
  store i32 1, i32* %8, align 4
  %95 = load %struct.socket*, %struct.socket** %5, align 8
  %96 = load i32, i32* @SOL_TCP, align 4
  %97 = load i32, i32* @TCP_NODELAY, align 4
  %98 = bitcast i32* %8 to i8*
  %99 = call i32 @kernel_setsockopt(%struct.socket* %95, i32 %96, i32 %97, i8* %98, i32 4)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %102, %94
  br label %106

106:                                              ; preds = %105, %86
  %107 = load %struct.socket*, %struct.socket** %5, align 8
  %108 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %109 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %108, i32 0, i32 0
  store %struct.socket* %107, %struct.socket** %109, align 8
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %106, %76, %33
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BUG_ON(%struct.socket*) #2

declare dso_local i32 @memalloc_noio_save(...) #2

declare dso_local i32 @sock_create_kern(i32, i32, i32, i32, %struct.socket**) #2

declare dso_local i32 @read_pnet(i32*) #2

declare dso_local i32 @memalloc_noio_restore(i32) #2

declare dso_local i32 @set_sock_callbacks(%struct.socket*, %struct.ceph_connection*) #2

declare dso_local i32 @dout(i8*, i32, ...) #2

declare dso_local i32 @ceph_pr_addr(%struct.TYPE_8__*) #2

declare dso_local i32 @con_sock_state_connecting(%struct.ceph_connection*) #2

declare dso_local i32 @pr_err(i8*, i32, ...) #2

declare dso_local i32 @sock_release(%struct.socket*) #2

declare dso_local i64 @ceph_test_opt(i32, i32) #2

declare dso_local i32 @from_msgr(%struct.TYPE_7__*) #2

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
