; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_callback.c_nfs_callback_start_svc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_callback.c_nfs_callback_start_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32 }
%struct.svc_serv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.svc_serv*, i32*, i32)* }

@nfs_callback_nr_threads = common dso_local global i32 0, align 4
@NFS4_MIN_NR_CALLBACK_THREADS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"nfs_callback_up: service started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rpc_xprt*, %struct.svc_serv*)* @nfs_callback_start_svc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_callback_start_svc(i32 %0, %struct.rpc_xprt* %1, %struct.svc_serv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_xprt*, align 8
  %7 = alloca %struct.svc_serv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.rpc_xprt* %1, %struct.rpc_xprt** %6, align 8
  store %struct.svc_serv* %2, %struct.svc_serv** %7, align 8
  %10 = load i32, i32* @nfs_callback_nr_threads, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %13 = load %struct.svc_serv*, %struct.svc_serv** %7, align 8
  %14 = call i32 @nfs_callback_bc_serv(i32 %11, %struct.rpc_xprt* %12, %struct.svc_serv* %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @NFS4_MIN_NR_CALLBACK_THREADS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @NFS4_MIN_NR_CALLBACK_THREADS, align 4
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %18, %3
  %21 = load %struct.svc_serv*, %struct.svc_serv** %7, align 8
  %22 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %50

28:                                               ; preds = %20
  %29 = load %struct.svc_serv*, %struct.svc_serv** %7, align 8
  %30 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.svc_serv*, i32*, i32)*, i32 (%struct.svc_serv*, i32*, i32)** %32, align 8
  %34 = load %struct.svc_serv*, %struct.svc_serv** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 %33(%struct.svc_serv* %34, i32* null, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %28
  %40 = load %struct.svc_serv*, %struct.svc_serv** %7, align 8
  %41 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.svc_serv*, i32*, i32)*, i32 (%struct.svc_serv*, i32*, i32)** %43, align 8
  %45 = load %struct.svc_serv*, %struct.svc_serv** %7, align 8
  %46 = call i32 %44(%struct.svc_serv* %45, i32* null, i32 0)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %50

48:                                               ; preds = %28
  %49 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %39, %27
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @nfs_callback_bc_serv(i32, %struct.rpc_xprt*, %struct.svc_serv*) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
