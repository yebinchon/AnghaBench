; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs4_set_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs4_set_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, i32, %struct.nfs_client*, i32, i32, i32 }
%struct.nfs_client = type { i32 }
%struct.sockaddr = type { i32 }
%struct.rpc_timeout = type { i32 }
%struct.net = type { i32 }
%struct.nfs_client_initdata = type { i8*, i64, i8*, i32, i64, i32, i32, i32, %struct.rpc_timeout*, %struct.net*, i32*, %struct.sockaddr* }

@nfs_v4 = common dso_local global i32 0, align 4
@XPRT_TRANSPORT_TCP = common dso_local global i32 0, align 4
@NFS_MOUNT_NORESVPORT = common dso_local global i32 0, align 4
@NFS_CS_NORESVPORT = common dso_local global i32 0, align 4
@NFS_OPTION_MIGRATION = common dso_local global i32 0, align 4
@NFS_CS_MIGRATION = common dso_local global i32 0, align 4
@NFS_MIG_TSM_POSSIBLE = common dso_local global i32 0, align 4
@NFS_CS_TSM_POSSIBLE = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@NFS_CS_CHECK_LEASE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, i8*, %struct.sockaddr*, i64, i8*, i32, %struct.rpc_timeout*, i64, i32, %struct.net*)* @nfs4_set_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_set_client(%struct.nfs_server* %0, i8* %1, %struct.sockaddr* %2, i64 %3, i8* %4, i32 %5, %struct.rpc_timeout* %6, i64 %7, i32 %8, %struct.net* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfs_server*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.rpc_timeout*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.net*, align 8
  %22 = alloca %struct.nfs_client_initdata, align 8
  %23 = alloca %struct.nfs_client*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %12, align 8
  store i8* %1, i8** %13, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %14, align 8
  store i64 %3, i64* %15, align 8
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store %struct.rpc_timeout* %6, %struct.rpc_timeout** %18, align 8
  store i64 %7, i64* %19, align 8
  store i32 %8, i32* %20, align 4
  store %struct.net* %9, %struct.net** %21, align 8
  %24 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %22, i32 0, i32 0
  %25 = load i8*, i8** %13, align 8
  store i8* %25, i8** %24, align 8
  %26 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %22, i32 0, i32 1
  %27 = load i64, i64* %15, align 8
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %22, i32 0, i32 2
  %29 = load i8*, i8** %16, align 8
  store i8* %29, i8** %28, align 8
  %30 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %22, i32 0, i32 3
  %31 = load i32, i32* %17, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %22, i32 0, i32 4
  %33 = load i64, i64* %19, align 8
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %22, i32 0, i32 5
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %22, i32 0, i32 6
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %22, i32 0, i32 7
  %37 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  %38 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %36, align 8
  %40 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %22, i32 0, i32 8
  %41 = load %struct.rpc_timeout*, %struct.rpc_timeout** %18, align 8
  store %struct.rpc_timeout* %41, %struct.rpc_timeout** %40, align 8
  %42 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %22, i32 0, i32 9
  %43 = load %struct.net*, %struct.net** %21, align 8
  store %struct.net* %43, %struct.net** %42, align 8
  %44 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %22, i32 0, i32 10
  store i32* @nfs_v4, i32** %44, align 8
  %45 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %22, i32 0, i32 11
  %46 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  store %struct.sockaddr* %46, %struct.sockaddr** %45, align 8
  %47 = load i64, i64* %19, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %10
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* @XPRT_TRANSPORT_TCP, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %20, align 4
  %55 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %22, i32 0, i32 5
  store i32 %54, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %49, %10
  %57 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  %58 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NFS_MOUNT_NORESVPORT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @NFS_CS_NORESVPORT, align 4
  %65 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %22, i32 0, i32 6
  %66 = call i32 @set_bit(i32 %64, i32* %65)
  br label %67

67:                                               ; preds = %63, %56
  %68 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  %69 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @NFS_OPTION_MIGRATION, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* @NFS_CS_MIGRATION, align 4
  %76 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %22, i32 0, i32 6
  %77 = call i32 @set_bit(i32 %75, i32* %76)
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i32, i32* @NFS_MIG_TSM_POSSIBLE, align 4
  %80 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  %81 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %80, i32 0, i32 4
  %82 = call i64 @test_bit(i32 %79, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i32, i32* @NFS_CS_TSM_POSSIBLE, align 4
  %86 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %22, i32 0, i32 6
  %87 = call i32 @set_bit(i32 %85, i32* %86)
  br label %88

88:                                               ; preds = %84, %78
  %89 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %90 = call i32 @rpc_get_port(%struct.sockaddr* %89)
  %91 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  %92 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = call %struct.nfs_client* @nfs_get_client(%struct.nfs_client_initdata* %22)
  store %struct.nfs_client* %93, %struct.nfs_client** %23, align 8
  %94 = load %struct.nfs_client*, %struct.nfs_client** %23, align 8
  %95 = call i64 @IS_ERR(%struct.nfs_client* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load %struct.nfs_client*, %struct.nfs_client** %23, align 8
  %99 = call i32 @PTR_ERR(%struct.nfs_client* %98)
  store i32 %99, i32* %11, align 4
  br label %119

100:                                              ; preds = %88
  %101 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  %102 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %101, i32 0, i32 2
  %103 = load %struct.nfs_client*, %struct.nfs_client** %102, align 8
  %104 = load %struct.nfs_client*, %struct.nfs_client** %23, align 8
  %105 = icmp eq %struct.nfs_client* %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.nfs_client*, %struct.nfs_client** %23, align 8
  %108 = call i32 @nfs_put_client(%struct.nfs_client* %107)
  %109 = load i32, i32* @ELOOP, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %11, align 4
  br label %119

111:                                              ; preds = %100
  %112 = load i32, i32* @NFS_CS_CHECK_LEASE_TIME, align 4
  %113 = load %struct.nfs_client*, %struct.nfs_client** %23, align 8
  %114 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %113, i32 0, i32 0
  %115 = call i32 @set_bit(i32 %112, i32* %114)
  %116 = load %struct.nfs_client*, %struct.nfs_client** %23, align 8
  %117 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  %118 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %117, i32 0, i32 2
  store %struct.nfs_client* %116, %struct.nfs_client** %118, align 8
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %111, %106, %97
  %120 = load i32, i32* %11, align 4
  ret i32 %120
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rpc_get_port(%struct.sockaddr*) #1

declare dso_local %struct.nfs_client* @nfs_get_client(%struct.nfs_client_initdata*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_client*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_client*) #1

declare dso_local i32 @nfs_put_client(%struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
