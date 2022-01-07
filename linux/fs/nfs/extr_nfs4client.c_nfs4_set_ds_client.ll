; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs4_set_ds_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs4_set_ds_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_server = type { i32, i32, %struct.nfs_client* }
%struct.sockaddr = type { i32 }
%struct.rpc_timeout = type { i32 }
%struct.nfs_client_initdata = type { i32, i32, i8*, i32, i32, i32, %struct.rpc_timeout*, i32, i32, i32*, i32, i32, %struct.sockaddr* }

@nfs_v4 = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XPRT_TRANSPORT_TCP = common dso_local global i32 0, align 4
@NFS_MOUNT_NORESVPORT = common dso_local global i32 0, align 4
@NFS_CS_NORESVPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_client* @nfs4_set_ds_client(%struct.nfs_server* %0, %struct.sockaddr* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.nfs_client*, align 8
  %9 = alloca %struct.nfs_server*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.rpc_timeout, align 4
  %17 = alloca %struct.nfs_client*, align 8
  %18 = alloca %struct.nfs_client_initdata, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %9, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %23 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %22, i32 0, i32 2
  %24 = load %struct.nfs_client*, %struct.nfs_client** %23, align 8
  store %struct.nfs_client* %24, %struct.nfs_client** %17, align 8
  %25 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %18, i32 0, i32 0
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %18, i32 0, i32 1
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %18, i32 0, i32 2
  store i8* null, i8** %29, align 8
  %30 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %18, i32 0, i32 3
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %18, i32 0, i32 4
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %18, i32 0, i32 5
  %33 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %34 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %32, align 8
  %36 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %18, i32 0, i32 6
  store %struct.rpc_timeout* %16, %struct.rpc_timeout** %36, align 8
  %37 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %18, i32 0, i32 7
  %38 = load %struct.nfs_client*, %struct.nfs_client** %17, align 8
  %39 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %37, align 8
  %41 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %18, i32 0, i32 8
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %18, i32 0, i32 9
  store i32* @nfs_v4, i32** %43, align 8
  %44 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %18, i32 0, i32 10
  %45 = load %struct.nfs_client*, %struct.nfs_client** %17, align 8
  %46 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %44, align 8
  %48 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %18, i32 0, i32 11
  %49 = load %struct.nfs_client*, %struct.nfs_client** %17, align 8
  %50 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %48, align 4
  %54 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %18, i32 0, i32 12
  %55 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  store %struct.sockaddr* %55, %struct.sockaddr** %54, align 8
  %56 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %57 = add nsw i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %19, align 8
  %60 = alloca i8, i64 %58, align 16
  store i64 %58, i64* %20, align 8
  %61 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %62 = trunc i64 %58 to i32
  %63 = call i64 @rpc_ntop(%struct.sockaddr* %61, i8* %60, i32 %62)
  %64 = icmp sle i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %7
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  %68 = call %struct.nfs_client* @ERR_PTR(i32 %67)
  store %struct.nfs_client* %68, %struct.nfs_client** %8, align 8
  store i32 1, i32* %21, align 4
  br label %101

69:                                               ; preds = %7
  %70 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %18, i32 0, i32 2
  store i8* %60, i8** %70, align 8
  %71 = load %struct.nfs_client*, %struct.nfs_client** %17, align 8
  %72 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @XPRT_TRANSPORT_TCP, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load %struct.nfs_client*, %struct.nfs_client** %17, align 8
  %81 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %18, i32 0, i32 3
  store i32 %82, i32* %83, align 8
  br label %84

84:                                               ; preds = %79, %75, %69
  %85 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %86 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @NFS_MOUNT_NORESVPORT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load i32, i32* @NFS_CS_NORESVPORT, align 4
  %93 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %18, i32 0, i32 4
  %94 = call i32 @__set_bit(i32 %92, i32* %93)
  br label %95

95:                                               ; preds = %91, %84
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @nfs_init_timeout_values(%struct.rpc_timeout* %16, i32 %96, i32 %97, i32 %98)
  %100 = call %struct.nfs_client* @nfs_get_client(%struct.nfs_client_initdata* %18)
  store %struct.nfs_client* %100, %struct.nfs_client** %8, align 8
  store i32 1, i32* %21, align 4
  br label %101

101:                                              ; preds = %95, %65
  %102 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load %struct.nfs_client*, %struct.nfs_client** %8, align 8
  ret %struct.nfs_client* %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @rpc_ntop(%struct.sockaddr*, i8*, i32) #2

declare dso_local %struct.nfs_client* @ERR_PTR(i32) #2

declare dso_local i32 @__set_bit(i32, i32*) #2

declare dso_local i32 @nfs_init_timeout_values(%struct.rpc_timeout*, i32, i32, i32) #2

declare dso_local %struct.nfs_client* @nfs_get_client(%struct.nfs_client_initdata*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
