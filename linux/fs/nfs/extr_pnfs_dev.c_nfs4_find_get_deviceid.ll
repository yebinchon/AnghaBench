; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_dev.c_nfs4_find_get_deviceid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_dev.c_nfs4_find_get_deviceid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_deviceid_node = type { i32, i32 }
%struct.nfs_server = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nfs4_deviceid_node*)* }
%struct.nfs4_deviceid = type { i32 }
%struct.cred = type { i32 }

@nfs4_deviceid_lock = common dso_local global i32 0, align 4
@nfs4_deviceid_cache = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs4_deviceid_node* @nfs4_find_get_deviceid(%struct.nfs_server* %0, %struct.nfs4_deviceid* %1, %struct.cred* %2, i32 %3) #0 {
  %5 = alloca %struct.nfs4_deviceid_node*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs4_deviceid*, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.nfs4_deviceid_node*, align 8
  %12 = alloca %struct.nfs4_deviceid_node*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %6, align 8
  store %struct.nfs4_deviceid* %1, %struct.nfs4_deviceid** %7, align 8
  store %struct.cred* %2, %struct.cred** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.nfs4_deviceid*, %struct.nfs4_deviceid** %7, align 8
  %14 = call i64 @nfs4_deviceid_hash(%struct.nfs4_deviceid* %13)
  store i64 %14, i64* %10, align 8
  %15 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %16 = load %struct.nfs4_deviceid*, %struct.nfs4_deviceid** %7, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call %struct.nfs4_deviceid_node* @__nfs4_find_get_deviceid(%struct.nfs_server* %15, %struct.nfs4_deviceid* %16, i64 %17)
  store %struct.nfs4_deviceid_node* %18, %struct.nfs4_deviceid_node** %11, align 8
  %19 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %11, align 8
  %20 = icmp ne %struct.nfs4_deviceid_node* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %11, align 8
  store %struct.nfs4_deviceid_node* %22, %struct.nfs4_deviceid_node** %5, align 8
  br label %63

23:                                               ; preds = %4
  %24 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %25 = load %struct.nfs4_deviceid*, %struct.nfs4_deviceid** %7, align 8
  %26 = load %struct.cred*, %struct.cred** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.nfs4_deviceid_node* @nfs4_get_device_info(%struct.nfs_server* %24, %struct.nfs4_deviceid* %25, %struct.cred* %26, i32 %27)
  store %struct.nfs4_deviceid_node* %28, %struct.nfs4_deviceid_node** %12, align 8
  %29 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %12, align 8
  %30 = icmp ne %struct.nfs4_deviceid_node* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %12, align 8
  store %struct.nfs4_deviceid_node* %32, %struct.nfs4_deviceid_node** %5, align 8
  br label %63

33:                                               ; preds = %23
  %34 = call i32 @spin_lock(i32* @nfs4_deviceid_lock)
  %35 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %36 = load %struct.nfs4_deviceid*, %struct.nfs4_deviceid** %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call %struct.nfs4_deviceid_node* @__nfs4_find_get_deviceid(%struct.nfs_server* %35, %struct.nfs4_deviceid* %36, i64 %37)
  store %struct.nfs4_deviceid_node* %38, %struct.nfs4_deviceid_node** %11, align 8
  %39 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %11, align 8
  %40 = icmp ne %struct.nfs4_deviceid_node* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = call i32 @spin_unlock(i32* @nfs4_deviceid_lock)
  %43 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %44 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.nfs4_deviceid_node*)*, i32 (%struct.nfs4_deviceid_node*)** %46, align 8
  %48 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %12, align 8
  %49 = call i32 %47(%struct.nfs4_deviceid_node* %48)
  %50 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %11, align 8
  store %struct.nfs4_deviceid_node* %50, %struct.nfs4_deviceid_node** %5, align 8
  br label %63

51:                                               ; preds = %33
  %52 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %12, align 8
  %53 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %52, i32 0, i32 1
  %54 = load i32*, i32** @nfs4_deviceid_cache, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = call i32 @hlist_add_head_rcu(i32* %53, i32* %56)
  %58 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %12, align 8
  %59 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %58, i32 0, i32 0
  %60 = call i32 @atomic_inc(i32* %59)
  %61 = call i32 @spin_unlock(i32* @nfs4_deviceid_lock)
  %62 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %12, align 8
  store %struct.nfs4_deviceid_node* %62, %struct.nfs4_deviceid_node** %5, align 8
  br label %63

63:                                               ; preds = %51, %41, %31, %21
  %64 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %5, align 8
  ret %struct.nfs4_deviceid_node* %64
}

declare dso_local i64 @nfs4_deviceid_hash(%struct.nfs4_deviceid*) #1

declare dso_local %struct.nfs4_deviceid_node* @__nfs4_find_get_deviceid(%struct.nfs_server*, %struct.nfs4_deviceid*, i64) #1

declare dso_local %struct.nfs4_deviceid_node* @nfs4_get_device_info(%struct.nfs_server*, %struct.nfs4_deviceid*, %struct.cred*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
