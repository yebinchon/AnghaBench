; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_init_socks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_init_socks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.cred = type { i32 }
%struct.nfsd_net = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@NFS_PORT = common dso_local global i32 0, align 4
@SVC_SOCK_DEFAULTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.cred*)* @nfsd_init_socks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_init_socks(%struct.net* %0, %struct.cred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsd_net*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.cred* %1, %struct.cred** %5, align 8
  %8 = load %struct.net*, %struct.net** %4, align 8
  %9 = load i32, i32* @nfsd_net_id, align 4
  %10 = call %struct.nfsd_net* @net_generic(%struct.net* %8, i32 %9)
  store %struct.nfsd_net* %10, %struct.nfsd_net** %7, align 8
  %11 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %12 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @list_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %20 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.net*, %struct.net** %4, align 8
  %23 = load i32, i32* @PF_INET, align 4
  %24 = load i32, i32* @NFS_PORT, align 4
  %25 = load i32, i32* @SVC_SOCK_DEFAULTS, align 4
  %26 = load %struct.cred*, %struct.cred** %5, align 8
  %27 = call i32 @svc_create_xprt(%struct.TYPE_2__* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.net* %22, i32 %23, i32 %24, i32 %25, %struct.cred* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %47

32:                                               ; preds = %18
  %33 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %34 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.net*, %struct.net** %4, align 8
  %37 = load i32, i32* @PF_INET, align 4
  %38 = load i32, i32* @NFS_PORT, align 4
  %39 = load i32, i32* @SVC_SOCK_DEFAULTS, align 4
  %40 = load %struct.cred*, %struct.cred** %5, align 8
  %41 = call i32 @svc_create_xprt(%struct.TYPE_2__* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.net* %36, i32 %37, i32 %38, i32 %39, %struct.cred* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %44, %30, %17
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @svc_create_xprt(%struct.TYPE_2__*, i8*, %struct.net*, i32, i32, i32, %struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
