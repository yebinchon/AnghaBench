; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_callback.c_nfs4_callback_up_net.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_callback.c_nfs4_callback_up_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cred = type { i32 }
%struct.nfs_net = type { i32, i32 }

@nfs_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@nfs_callback_set_tcpport = common dso_local global i32 0, align 4
@SVC_SOCK_ANONYMOUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"NFS: Callback listener port = %u (af %u, net %x)\0A\00", align 1
@PF_INET6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_serv*, %struct.net*)* @nfs4_callback_up_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_callback_up_net(%struct.svc_serv* %0, %struct.net* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_serv*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_net*, align 8
  store %struct.svc_serv* %0, %struct.svc_serv** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  %9 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %9, %struct.cred** %6, align 8
  %10 = load %struct.net*, %struct.net** %5, align 8
  %11 = load i32, i32* @nfs_net_id, align 4
  %12 = call %struct.nfs_net* @net_generic(%struct.net* %10, i32 %11)
  store %struct.nfs_net* %12, %struct.nfs_net** %8, align 8
  %13 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %14 = load %struct.net*, %struct.net** %5, align 8
  %15 = load i32, i32* @PF_INET, align 4
  %16 = load i32, i32* @nfs_callback_set_tcpport, align 4
  %17 = load i32, i32* @SVC_SOCK_ANONYMOUS, align 4
  %18 = load %struct.cred*, %struct.cred** %6, align 8
  %19 = call i32 @svc_create_xprt(%struct.svc_serv* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.net* %14, i32 %15, i32 %16, i32 %17, %struct.cred* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %66

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.nfs_net*, %struct.nfs_net** %8, align 8
  %26 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.nfs_net*, %struct.nfs_net** %8, align 8
  %28 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PF_INET, align 4
  %31 = load %struct.net*, %struct.net** %5, align 8
  %32 = getelementptr inbounds %struct.net, %struct.net* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30, i32 %34)
  %36 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %37 = load %struct.net*, %struct.net** %5, align 8
  %38 = load i32, i32* @PF_INET6, align 4
  %39 = load i32, i32* @nfs_callback_set_tcpport, align 4
  %40 = load i32, i32* @SVC_SOCK_ANONYMOUS, align 4
  %41 = load %struct.cred*, %struct.cred** %6, align 8
  %42 = call i32 @svc_create_xprt(%struct.svc_serv* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.net* %37, i32 %38, i32 %39, i32 %40, %struct.cred* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %23
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.nfs_net*, %struct.nfs_net** %8, align 8
  %48 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.nfs_net*, %struct.nfs_net** %8, align 8
  %50 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PF_INET6, align 4
  %53 = load %struct.net*, %struct.net** %5, align 8
  %54 = getelementptr inbounds %struct.net, %struct.net* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52, i32 %56)
  br label %65

58:                                               ; preds = %23
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @EAFNOSUPPORT, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %66

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %45
  store i32 0, i32* %3, align 4
  br label %76

66:                                               ; preds = %63, %22
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  br label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  br label %74

74:                                               ; preds = %71, %69
  %75 = phi i32 [ %70, %69 ], [ %73, %71 ]
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %65
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local %struct.nfs_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @svc_create_xprt(%struct.svc_serv*, i8*, %struct.net*, i32, i32, i32, %struct.cred*) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
