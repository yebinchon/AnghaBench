; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_callback.c_nfs_callback_up.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_callback.c_nfs_callback_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_callback_data = type { i32*, i32 }
%struct.rpc_xprt = type { %struct.net* }
%struct.net = type { i32 }
%struct.svc_serv = type { i32 }

@nfs_callback_info = common dso_local global %struct.nfs_callback_data* null, align 8
@nfs_callback_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"NFS: Couldn't create server thread; err = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_callback_up(i64 %0, %struct.rpc_xprt* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca %struct.svc_serv*, align 8
  %6 = alloca %struct.nfs_callback_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.rpc_xprt* %1, %struct.rpc_xprt** %4, align 8
  %9 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** @nfs_callback_info, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %9, i64 %10
  store %struct.nfs_callback_data* %11, %struct.nfs_callback_data** %6, align 8
  %12 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %13 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %12, i32 0, i32 0
  %14 = load %struct.net*, %struct.net** %13, align 8
  store %struct.net* %14, %struct.net** %8, align 8
  %15 = call i32 @mutex_lock(i32* @nfs_callback_mutex)
  %16 = load i64, i64* %3, align 8
  %17 = call %struct.svc_serv* @nfs_callback_create_svc(i64 %16)
  store %struct.svc_serv* %17, %struct.svc_serv** %5, align 8
  %18 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %19 = call i64 @IS_ERR(%struct.svc_serv* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %23 = call i32 @PTR_ERR(%struct.svc_serv* %22)
  store i32 %23, i32* %7, align 4
  br label %57

24:                                               ; preds = %2
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %27 = load %struct.net*, %struct.net** %8, align 8
  %28 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %29 = call i32 @nfs_callback_up_net(i64 %25, %struct.svc_serv* %26, %struct.net* %27, %struct.rpc_xprt* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %46

33:                                               ; preds = %24
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %36 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %37 = call i32 @nfs_callback_start_svc(i64 %34, %struct.rpc_xprt* %35, %struct.svc_serv* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %60

41:                                               ; preds = %33
  %42 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %6, align 8
  %43 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %60, %41, %32
  %47 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %6, align 8
  %48 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %6, align 8
  %53 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %56 = call i32 @svc_destroy(%struct.svc_serv* %55)
  br label %57

57:                                               ; preds = %54, %21
  %58 = call i32 @mutex_unlock(i32* @nfs_callback_mutex)
  %59 = load i32, i32* %7, align 4
  ret i32 %59

60:                                               ; preds = %40
  %61 = load i64, i64* %3, align 8
  %62 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %63 = load %struct.net*, %struct.net** %8, align 8
  %64 = call i32 @nfs_callback_down_net(i64 %61, %struct.svc_serv* %62, %struct.net* %63)
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.svc_serv* @nfs_callback_create_svc(i64) #1

declare dso_local i64 @IS_ERR(%struct.svc_serv*) #1

declare dso_local i32 @PTR_ERR(%struct.svc_serv*) #1

declare dso_local i32 @nfs_callback_up_net(i64, %struct.svc_serv*, %struct.net*, %struct.rpc_xprt*) #1

declare dso_local i32 @nfs_callback_start_svc(i64, %struct.rpc_xprt*, %struct.svc_serv*) #1

declare dso_local i32 @svc_destroy(%struct.svc_serv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nfs_callback_down_net(i64, %struct.svc_serv*, %struct.net*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
