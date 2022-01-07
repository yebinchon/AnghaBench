; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs4_update_server.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs4_update_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { %struct.nfs_client*, i32, %struct.rpc_clnt* }
%struct.nfs_client = type { i32*, i32, i32, i32 }
%struct.rpc_clnt = type { i32 }
%struct.sockaddr = type { i32 }
%struct.net = type { i32 }
%struct.xprt_create = type { i64, i8*, %struct.sockaddr*, %struct.net*, i32 }
%struct.sockaddr_storage = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@NFS_MIG_TSM_POSSIBLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_update_server(%struct.nfs_server* %0, i8* %1, %struct.sockaddr* %2, i64 %3, %struct.net* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.nfs_client*, align 8
  %13 = alloca %struct.rpc_clnt*, align 8
  %14 = alloca %struct.xprt_create, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.sockaddr_storage, align 4
  %18 = alloca %struct.sockaddr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.net* %4, %struct.net** %11, align 8
  %21 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %22 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %21, i32 0, i32 0
  %23 = load %struct.nfs_client*, %struct.nfs_client** %22, align 8
  store %struct.nfs_client* %23, %struct.nfs_client** %12, align 8
  %24 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %25 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %24, i32 0, i32 2
  %26 = load %struct.rpc_clnt*, %struct.rpc_clnt** %25, align 8
  store %struct.rpc_clnt* %26, %struct.rpc_clnt** %13, align 8
  %27 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %14, i32 0, i32 0
  %28 = load i64, i64* %10, align 8
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %14, i32 0, i32 1
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %29, align 8
  %31 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %14, i32 0, i32 2
  %32 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  store %struct.sockaddr* %32, %struct.sockaddr** %31, align 8
  %33 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %14, i32 0, i32 3
  %34 = load %struct.net*, %struct.net** %11, align 8
  store %struct.net* %34, %struct.net** %33, align 8
  %35 = getelementptr inbounds %struct.xprt_create, %struct.xprt_create* %14, i32 0, i32 4
  %36 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %37 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %35, align 8
  %39 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %40 = add nsw i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %15, align 8
  %43 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %16, align 8
  %44 = bitcast %struct.sockaddr_storage* %17 to %struct.sockaddr*
  store %struct.sockaddr* %44, %struct.sockaddr** %18, align 8
  %45 = load %struct.rpc_clnt*, %struct.rpc_clnt** %13, align 8
  %46 = load %struct.rpc_clnt*, %struct.rpc_clnt** %13, align 8
  %47 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @rpc_switch_client_transport(%struct.rpc_clnt* %45, %struct.xprt_create* %14, i32 %48)
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %5
  %53 = load i32, i32* %19, align 4
  store i32 %53, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %127

54:                                               ; preds = %5
  %55 = load %struct.rpc_clnt*, %struct.rpc_clnt** %13, align 8
  %56 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %57 = call i32 @rpc_localaddr(%struct.rpc_clnt* %55, %struct.sockaddr* %56, i32 4)
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %19, align 4
  store i32 %61, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %127

62:                                               ; preds = %54
  %63 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %64 = trunc i64 %41 to i32
  %65 = call i64 @rpc_ntop(%struct.sockaddr* %63, i8* %43, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @EAFNOSUPPORT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %127

70:                                               ; preds = %62
  %71 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %72 = call i32 @nfs_server_remove_lists(%struct.nfs_server* %71)
  %73 = load i32, i32* @NFS_MIG_TSM_POSSIBLE, align 4
  %74 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %75 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %74, i32 0, i32 1
  %76 = call i32 @set_bit(i32 %73, i32* %75)
  %77 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %82 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.rpc_clnt*, %struct.rpc_clnt** %13, align 8
  %85 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %88 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %91 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.net*, %struct.net** %11, align 8
  %94 = call i32 @nfs4_set_client(%struct.nfs_server* %77, i8* %78, %struct.sockaddr* %79, i64 %80, i8* %43, i32 %83, i32 %86, i32 %89, i32 %92, %struct.net* %93)
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* @NFS_MIG_TSM_POSSIBLE, align 4
  %96 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %97 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %96, i32 0, i32 1
  %98 = call i32 @clear_bit(i32 %95, i32* %97)
  %99 = load i32, i32* %19, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %70
  %102 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %103 = call i32 @nfs_server_insert_lists(%struct.nfs_server* %102)
  %104 = load i32, i32* %19, align 4
  store i32 %104, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %127

105:                                              ; preds = %70
  %106 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %107 = call i32 @nfs_put_client(%struct.nfs_client* %106)
  %108 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %109 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %108, i32 0, i32 0
  %110 = load %struct.nfs_client*, %struct.nfs_client** %109, align 8
  %111 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %105
  %115 = load i8*, i8** %8, align 8
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i32* @kstrdup(i8* %115, i32 %116)
  %118 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %119 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %118, i32 0, i32 0
  %120 = load %struct.nfs_client*, %struct.nfs_client** %119, align 8
  %121 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %120, i32 0, i32 0
  store i32* %117, i32** %121, align 8
  br label %122

122:                                              ; preds = %114, %105
  %123 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %124 = call i32 @nfs_server_insert_lists(%struct.nfs_server* %123)
  %125 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %126 = call i32 @nfs_probe_destination(%struct.nfs_server* %125)
  store i32 %126, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %127

127:                                              ; preds = %122, %101, %67, %60, %52
  %128 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rpc_switch_client_transport(%struct.rpc_clnt*, %struct.xprt_create*, i32) #2

declare dso_local i32 @rpc_localaddr(%struct.rpc_clnt*, %struct.sockaddr*, i32) #2

declare dso_local i64 @rpc_ntop(%struct.sockaddr*, i8*, i32) #2

declare dso_local i32 @nfs_server_remove_lists(%struct.nfs_server*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @nfs4_set_client(%struct.nfs_server*, i8*, %struct.sockaddr*, i64, i8*, i32, i32, i32, i32, %struct.net*) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i32 @nfs_server_insert_lists(%struct.nfs_server*) #2

declare dso_local i32 @nfs_put_client(%struct.nfs_client*) #2

declare dso_local i32* @kstrdup(i8*, i32) #2

declare dso_local i32 @nfs_probe_destination(%struct.nfs_server*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
