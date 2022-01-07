; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfscache.c_nfsd_reply_cache_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfscache.c_nfsd_reply_cache_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_cacherep = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.svc_rqst = type { %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nfsd_net = type { i32 }
%struct.sockaddr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RC_UNUSED = common dso_local global i32 0, align 4
@RC_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_cacherep* (%struct.svc_rqst*, i32, %struct.nfsd_net*)* @nfsd_reply_cache_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_cacherep* @nfsd_reply_cache_alloc(%struct.svc_rqst* %0, i32 %1, %struct.nfsd_net* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsd_net*, align 8
  %7 = alloca %struct.svc_cacherep*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nfsd_net* %2, %struct.nfsd_net** %6, align 8
  %8 = load %struct.nfsd_net*, %struct.nfsd_net** %6, align 8
  %9 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.svc_cacherep* @kmem_cache_alloc(i32 %10, i32 %11)
  store %struct.svc_cacherep* %12, %struct.svc_cacherep** %7, align 8
  %13 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %14 = icmp ne %struct.svc_cacherep* %13, null
  br i1 %14, label %15, label %81

15:                                               ; preds = %3
  %16 = load i32, i32* @RC_UNUSED, align 4
  %17 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %18 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @RC_NOCACHE, align 4
  %20 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %21 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %23 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %22, i32 0, i32 2
  %24 = call i32 @RB_CLEAR_NODE(i32* %23)
  %25 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %26 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %25, i32 0, i32 1
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %29 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %28, i32 0, i32 0
  %30 = call i32 @memset(%struct.TYPE_4__* %29, i32 0, i32 28)
  %31 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %32 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %35 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 6
  store i32 %33, i32* %36, align 4
  %37 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %38 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %41 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  store i32 %39, i32* %42, align 4
  %43 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %44 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  %46 = bitcast i32* %45 to %struct.sockaddr*
  %47 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %48 = call i32 @svc_addr(%struct.svc_rqst* %47)
  %49 = call i32 @rpc_copy_addr(%struct.sockaddr* %46, i32 %48)
  %50 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %51 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  %53 = bitcast i32* %52 to %struct.sockaddr*
  %54 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %55 = call i32 @svc_addr(%struct.svc_rqst* %54)
  %56 = call i32 @rpc_get_port(i32 %55)
  %57 = call i32 @rpc_set_port(%struct.sockaddr* %53, i32 %56)
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %59 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %62 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 4
  %64 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %65 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %68 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 4
  %70 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %71 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %75 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %79 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %15, %3
  %82 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  ret %struct.svc_cacherep* %82
}

declare dso_local %struct.svc_cacherep* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @rpc_copy_addr(%struct.sockaddr*, i32) #1

declare dso_local i32 @svc_addr(%struct.svc_rqst*) #1

declare dso_local i32 @rpc_set_port(%struct.sockaddr*, i32) #1

declare dso_local i32 @rpc_get_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
