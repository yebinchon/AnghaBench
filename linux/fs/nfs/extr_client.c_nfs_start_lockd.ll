; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_start_lockd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_start_lockd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, i32, %struct.nlm_host*, %struct.nfs_client* }
%struct.nlm_host = type { i32 }
%struct.nfs_client = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nlmclnt_initdata = type { i32, i32, i32, i32, i32, i32, i32, %struct.sockaddr*, i32 }
%struct.sockaddr = type { i32 }

@NFS_MOUNT_NORESVPORT = common dso_local global i32 0, align 4
@NFS_MOUNT_LOCAL_FLOCK = common dso_local global i32 0, align 4
@NFS_MOUNT_LOCAL_FCNTL = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@nfs_destroy_server = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*)* @nfs_start_lockd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_start_lockd(%struct.nfs_server* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.nlm_host*, align 8
  %5 = alloca %struct.nfs_client*, align 8
  %6 = alloca %struct.nlmclnt_initdata, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  %7 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %7, i32 0, i32 3
  %9 = load %struct.nfs_client*, %struct.nfs_client** %8, align 8
  store %struct.nfs_client* %9, %struct.nfs_client** %5, align 8
  %10 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 0
  %11 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %12 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 8
  %16 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 1
  %17 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %18 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NFS_MOUNT_NORESVPORT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  store i32 %24, i32* %16, align 4
  %25 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 3
  %27 = call i32 (...) @current_cred()
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 4
  %29 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %30 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %28, align 8
  %36 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 5
  %37 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %38 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %36, align 4
  %40 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 6
  %41 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %42 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %40, align 8
  %44 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 7
  %45 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %46 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %45, i32 0, i32 5
  %47 = bitcast i32* %46 to %struct.sockaddr*
  store %struct.sockaddr* %47, %struct.sockaddr** %44, align 8
  %48 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 8
  %49 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %50 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %48, align 8
  %52 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 3
  br i1 %54, label %55, label %56

55:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %96

56:                                               ; preds = %1
  %57 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %58 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NFS_MOUNT_LOCAL_FLOCK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %65 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @NFS_MOUNT_LOCAL_FCNTL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %96

71:                                               ; preds = %63, %56
  %72 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %73 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %75 [
    i32 128, label %78
  ]

75:                                               ; preds = %71
  %76 = load i32, i32* @IPPROTO_TCP, align 4
  %77 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 2
  store i32 %76, i32* %77, align 8
  br label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @IPPROTO_UDP, align 4
  %80 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 2
  store i32 %79, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = call %struct.nlm_host* @nlmclnt_init(%struct.nlmclnt_initdata* %6)
  store %struct.nlm_host* %82, %struct.nlm_host** %4, align 8
  %83 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %84 = call i64 @IS_ERR(%struct.nlm_host* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %88 = call i32 @PTR_ERR(%struct.nlm_host* %87)
  store i32 %88, i32* %2, align 4
  br label %96

89:                                               ; preds = %81
  %90 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %91 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %92 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %91, i32 0, i32 2
  store %struct.nlm_host* %90, %struct.nlm_host** %92, align 8
  %93 = load i32, i32* @nfs_destroy_server, align 4
  %94 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %95 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %89, %86, %70, %55
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @current_cred(...) #1

declare dso_local %struct.nlm_host* @nlmclnt_init(%struct.nlmclnt_initdata*) #1

declare dso_local i64 @IS_ERR(%struct.nlm_host*) #1

declare dso_local i32 @PTR_ERR(%struct.nlm_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
