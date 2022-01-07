; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs_get_cb_ident_idr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs_get_cb_ident_idr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_net = type { i32, i32 }

@nfs_net_id = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_client*, i32)* @nfs_get_cb_ident_idr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_get_cb_ident_idr(%struct.nfs_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs_net*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %9 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @nfs_net_id, align 4
  %12 = call %struct.nfs_net* @net_generic(i32 %10, i32 %11)
  store %struct.nfs_net* %12, %struct.nfs_net** %7, align 8
  %13 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %14 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 4
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %19
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @idr_preload(i32 %25)
  %27 = load %struct.nfs_net*, %struct.nfs_net** %7, align 8
  %28 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.nfs_net*, %struct.nfs_net** %7, align 8
  %31 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %30, i32 0, i32 1
  %32 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %33 = load i32, i32* @GFP_NOWAIT, align 4
  %34 = call i32 @idr_alloc(i32* %31, %struct.nfs_client* %32, i32 1, i32 0, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %40 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %24
  %42 = load %struct.nfs_net*, %struct.nfs_net** %7, align 8
  %43 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = call i32 (...) @idr_preload_end()
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  br label %51

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %22
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.nfs_net* @net_generic(i32, i32) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.nfs_client*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
