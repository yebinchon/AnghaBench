; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3client.c_nfs3_set_ds_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3client.c_nfs3_set_ds_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_server = type { i32, i32, %struct.nfs_client* }
%struct.sockaddr = type { i32 }
%struct.rpc_timeout = type { i32 }
%struct.nfs_client_initdata = type { i32, i32, i8*, i32, i32, i32, %struct.rpc_timeout*, i32, i32*, i32, i32, %struct.sockaddr* }

@nfs_v3 = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XPRT_TRANSPORT_TCP = common dso_local global i32 0, align 4
@NFS_MOUNT_NORESVPORT = common dso_local global i32 0, align 4
@NFS_CS_NORESVPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_client* @nfs3_set_ds_client(%struct.nfs_server* %0, %struct.sockaddr* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nfs_client*, align 8
  %8 = alloca %struct.nfs_server*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rpc_timeout, align 4
  %15 = alloca %struct.nfs_client*, align 8
  %16 = alloca %struct.nfs_client_initdata, align 8
  %17 = alloca %struct.nfs_client*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %8, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %22 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %21, i32 0, i32 2
  %23 = load %struct.nfs_client*, %struct.nfs_client** %22, align 8
  store %struct.nfs_client* %23, %struct.nfs_client** %15, align 8
  %24 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %16, i32 0, i32 0
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %16, i32 0, i32 1
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %16, i32 0, i32 2
  store i8* null, i8** %28, align 8
  %29 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %16, i32 0, i32 3
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %16, i32 0, i32 4
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %16, i32 0, i32 5
  %32 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %33 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %31, align 8
  %35 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %16, i32 0, i32 6
  store %struct.rpc_timeout* %14, %struct.rpc_timeout** %35, align 8
  %36 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %16, i32 0, i32 7
  %37 = load %struct.nfs_client*, %struct.nfs_client** %15, align 8
  %38 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %36, align 8
  %40 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %16, i32 0, i32 8
  store i32* @nfs_v3, i32** %40, align 8
  %41 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %16, i32 0, i32 9
  %42 = load %struct.nfs_client*, %struct.nfs_client** %15, align 8
  %43 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %41, align 8
  %45 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %16, i32 0, i32 10
  %46 = load %struct.nfs_client*, %struct.nfs_client** %15, align 8
  %47 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %45, align 4
  %51 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %16, i32 0, i32 11
  %52 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  store %struct.sockaddr* %52, %struct.sockaddr** %51, align 8
  %53 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %54 = add nsw i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %18, align 8
  %57 = alloca i8, i64 %55, align 16
  store i64 %55, i64* %19, align 8
  %58 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %59 = trunc i64 %55 to i32
  %60 = call i64 @rpc_ntop(%struct.sockaddr* %58, i8* %57, i32 %59)
  %61 = icmp sle i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %6
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.nfs_client* @ERR_PTR(i32 %64)
  store %struct.nfs_client* %65, %struct.nfs_client** %7, align 8
  store i32 1, i32* %20, align 4
  br label %99

66:                                               ; preds = %6
  %67 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %16, i32 0, i32 2
  store i8* %57, i8** %67, align 8
  %68 = load %struct.nfs_client*, %struct.nfs_client** %15, align 8
  %69 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @XPRT_TRANSPORT_TCP, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load %struct.nfs_client*, %struct.nfs_client** %15, align 8
  %78 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %16, i32 0, i32 3
  store i32 %79, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %72, %66
  %82 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %83 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @NFS_MOUNT_NORESVPORT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i32, i32* @NFS_CS_NORESVPORT, align 4
  %90 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %16, i32 0, i32 4
  %91 = call i32 @set_bit(i32 %89, i32* %90)
  br label %92

92:                                               ; preds = %88, %81
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @nfs_init_timeout_values(%struct.rpc_timeout* %14, i32 %93, i32 %94, i32 %95)
  %97 = call %struct.nfs_client* @nfs_get_client(%struct.nfs_client_initdata* %16)
  store %struct.nfs_client* %97, %struct.nfs_client** %17, align 8
  %98 = load %struct.nfs_client*, %struct.nfs_client** %17, align 8
  store %struct.nfs_client* %98, %struct.nfs_client** %7, align 8
  store i32 1, i32* %20, align 4
  br label %99

99:                                               ; preds = %92, %62
  %100 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  ret %struct.nfs_client* %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @rpc_ntop(%struct.sockaddr*, i8*, i32) #2

declare dso_local %struct.nfs_client* @ERR_PTR(i32) #2

declare dso_local i32 @set_bit(i32, i32*) #2

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
