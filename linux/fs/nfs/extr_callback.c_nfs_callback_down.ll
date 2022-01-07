; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_callback.c_nfs_callback_down.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_callback.c_nfs_callback_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_callback_data = type { i64, %struct.svc_serv* }
%struct.svc_serv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.svc_serv*, i32*, i32)* }
%struct.net = type { i32 }

@nfs_callback_info = common dso_local global %struct.nfs_callback_data* null, align 8
@nfs_callback_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"nfs_callback_down: service destroyed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_callback_down(i32 %0, %struct.net* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nfs_callback_data*, align 8
  %6 = alloca %struct.svc_serv*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.net* %1, %struct.net** %4, align 8
  %7 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** @nfs_callback_info, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %7, i64 %9
  store %struct.nfs_callback_data* %10, %struct.nfs_callback_data** %5, align 8
  %11 = call i32 @mutex_lock(i32* @nfs_callback_mutex)
  %12 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %5, align 8
  %13 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %12, i32 0, i32 1
  %14 = load %struct.svc_serv*, %struct.svc_serv** %13, align 8
  store %struct.svc_serv* %14, %struct.svc_serv** %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %17 = load %struct.net*, %struct.net** %4, align 8
  %18 = call i32 @nfs_callback_down_net(i32 %15, %struct.svc_serv* %16, %struct.net* %17)
  %19 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %5, align 8
  %20 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %5, align 8
  %24 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %2
  %28 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %29 = call i32 @svc_get(%struct.svc_serv* %28)
  %30 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %31 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.svc_serv*, i32*, i32)*, i32 (%struct.svc_serv*, i32*, i32)** %33, align 8
  %35 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %36 = call i32 %34(%struct.svc_serv* %35, i32* null, i32 0)
  %37 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %38 = call i32 @svc_destroy(%struct.svc_serv* %37)
  %39 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %5, align 8
  %41 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %40, i32 0, i32 1
  store %struct.svc_serv* null, %struct.svc_serv** %41, align 8
  br label %42

42:                                               ; preds = %27, %2
  %43 = call i32 @mutex_unlock(i32* @nfs_callback_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nfs_callback_down_net(i32, %struct.svc_serv*, %struct.net*) #1

declare dso_local i32 @svc_get(%struct.svc_serv*) #1

declare dso_local i32 @svc_destroy(%struct.svc_serv*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
