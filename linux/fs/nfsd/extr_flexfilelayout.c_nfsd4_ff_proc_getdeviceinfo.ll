; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_flexfilelayout.c_nfsd4_ff_proc_getdeviceinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_flexfilelayout.c_nfsd4_ff_proc_getdeviceinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.svc_rqst = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.nfs4_client = type { i32 }
%struct.nfsd4_getdeviceinfo = type { %struct.pnfs_ff_device_addr* }
%struct.pnfs_ff_device_addr = type { i32, i32, %struct.TYPE_4__, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@FF_NETID_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"tcp6\00", align 1
@FF_ADDR_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"%s.%hhu.%hhu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.svc_rqst*, %struct.nfs4_client*, %struct.nfsd4_getdeviceinfo*)* @nfsd4_ff_proc_getdeviceinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_ff_proc_getdeviceinfo(%struct.super_block* %0, %struct.svc_rqst* %1, %struct.nfs4_client* %2, %struct.nfsd4_getdeviceinfo* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.nfs4_client*, align 8
  %9 = alloca %struct.nfsd4_getdeviceinfo*, align 8
  %10 = alloca %struct.pnfs_ff_device_addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr_in*, align 8
  %16 = alloca %struct.sockaddr_in6*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.svc_rqst* %1, %struct.svc_rqst** %7, align 8
  store %struct.nfs4_client* %2, %struct.nfs4_client** %8, align 8
  store %struct.nfsd4_getdeviceinfo* %3, %struct.nfsd4_getdeviceinfo** %9, align 8
  %17 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.pnfs_ff_device_addr* @kzalloc(i32 40, i32 %21)
  store %struct.pnfs_ff_device_addr* %22, %struct.pnfs_ff_device_addr** %10, align 8
  %23 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %10, align 8
  %24 = icmp ne %struct.pnfs_ff_device_addr* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @nfserrno(i32 %27)
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %110

29:                                               ; preds = %4
  %30 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %10, align 8
  %31 = load %struct.nfsd4_getdeviceinfo*, %struct.nfsd4_getdeviceinfo** %9, align 8
  %32 = getelementptr inbounds %struct.nfsd4_getdeviceinfo, %struct.nfsd4_getdeviceinfo* %31, i32 0, i32 0
  store %struct.pnfs_ff_device_addr* %30, %struct.pnfs_ff_device_addr** %32, align 8
  %33 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %10, align 8
  %34 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %33, i32 0, i32 0
  store i32 3, i32* %34, align 8
  %35 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %10, align 8
  %36 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %38 = call i32 @svc_max_payload(%struct.svc_rqst* %37)
  %39 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %10, align 8
  %40 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %10, align 8
  %42 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %10, align 8
  %45 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %47 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %46, i32 0, i32 0
  %48 = bitcast %struct.TYPE_3__* %47 to %struct.sockaddr*
  %49 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %50 = call i32 @rpc_ntop(%struct.sockaddr* %48, i8* %20, i32 %49)
  %51 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %52 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AF_INET, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %29
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %59 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %58, i32 0, i32 0
  %60 = bitcast %struct.TYPE_3__* %59 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %60, %struct.sockaddr_in** %15, align 8
  %61 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ntohs(i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %10, align 8
  %66 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* @FF_NETID_LEN, align 8
  %70 = add nsw i64 %69, 1
  %71 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %68, i64 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %10, align 8
  %73 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 3, i32* %74, align 8
  br label %93

75:                                               ; preds = %29
  %76 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %77 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %76, i32 0, i32 0
  %78 = bitcast %struct.TYPE_3__* %77 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %78, %struct.sockaddr_in6** %16, align 8
  %79 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %16, align 8
  %80 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ntohs(i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %10, align 8
  %84 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* @FF_NETID_LEN, align 8
  %88 = add nsw i64 %87, 1
  %89 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %86, i64 %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %10, align 8
  %91 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 4, i32* %92, align 8
  br label %93

93:                                               ; preds = %75, %57
  %94 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %10, align 8
  %95 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* @FF_ADDR_LEN, align 8
  %99 = add nsw i64 %98, 1
  %100 = load i32, i32* %11, align 4
  %101 = ashr i32 %100, 8
  %102 = load i32, i32* %11, align 4
  %103 = and i32 %102, 255
  %104 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %97, i64 %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %20, i32 %101, i32 %103)
  %105 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %10, align 8
  %106 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 8
  %108 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %10, align 8
  %109 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %108, i32 0, i32 1
  store i32 0, i32* %109, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %110

110:                                              ; preds = %93, %25
  %111 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.pnfs_ff_device_addr* @kzalloc(i32, i32) #2

declare dso_local i32 @nfserrno(i32) #2

declare dso_local i32 @svc_max_payload(%struct.svc_rqst*) #2

declare dso_local i32 @rpc_ntop(%struct.sockaddr*, i8*, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @snprintf(i32, i64, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
