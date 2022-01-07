; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_put_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_put_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nfs_client*)* }
%struct.nfs_net = type { i32 }

@nfs_net_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_put_client(%struct.nfs_client* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  %3 = alloca %struct.nfs_net*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %2, align 8
  %4 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %5 = icmp ne %struct.nfs_client* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %42

7:                                                ; preds = %1
  %8 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %9 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @nfs_net_id, align 4
  %12 = call %struct.nfs_net* @net_generic(i32 %10, i32 %11)
  store %struct.nfs_net* %12, %struct.nfs_net** %3, align 8
  %13 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %14 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %13, i32 0, i32 3
  %15 = load %struct.nfs_net*, %struct.nfs_net** %3, align 8
  %16 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %15, i32 0, i32 0
  %17 = call i64 @refcount_dec_and_lock(i32* %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %7
  %20 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %21 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %20, i32 0, i32 2
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %24 = call i32 @nfs_cb_idr_remove_locked(%struct.nfs_client* %23)
  %25 = load %struct.nfs_net*, %struct.nfs_net** %3, align 8
  %26 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %29 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %28, i32 0, i32 1
  %30 = call i32 @list_empty(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON_ONCE(i32 %33)
  %35 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %36 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.nfs_client*)*, i32 (%struct.nfs_client*)** %38, align 8
  %40 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %41 = call i32 %39(%struct.nfs_client* %40)
  br label %42

42:                                               ; preds = %6, %19, %7
  ret void
}

declare dso_local %struct.nfs_net* @net_generic(i32, i32) #1

declare dso_local i64 @refcount_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @nfs_cb_idr_remove_locked(%struct.nfs_client*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
