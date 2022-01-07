; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_callback.c_nfs_callback_down_net.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_callback.c_nfs_callback_down_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_net = type { i64* }

@nfs_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"NFS: destroy per-net callback data; net=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.svc_serv*, %struct.net*)* @nfs_callback_down_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_callback_down_net(i64 %0, %struct.svc_serv* %1, %struct.net* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_serv*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nfs_net*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.svc_serv* %1, %struct.svc_serv** %5, align 8
  store %struct.net* %2, %struct.net** %6, align 8
  %8 = load %struct.net*, %struct.net** %6, align 8
  %9 = load i32, i32* @nfs_net_id, align 4
  %10 = call %struct.nfs_net* @net_generic(%struct.net* %8, i32 %9)
  store %struct.nfs_net* %10, %struct.nfs_net** %7, align 8
  %11 = load %struct.nfs_net*, %struct.nfs_net** %7, align 8
  %12 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %29

20:                                               ; preds = %3
  %21 = load %struct.net*, %struct.net** %6, align 8
  %22 = getelementptr inbounds %struct.net, %struct.net* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %27 = load %struct.net*, %struct.net** %6, align 8
  %28 = call i32 @svc_shutdown_net(%struct.svc_serv* %26, %struct.net* %27)
  br label %29

29:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.nfs_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @svc_shutdown_net(%struct.svc_serv*, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
