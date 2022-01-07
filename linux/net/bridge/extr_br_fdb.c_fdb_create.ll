; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_fdb_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_fdb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_fdb_entry = type { i8, i8, i32, i32, i32, i32, i64, i64, i64, i64, %struct.TYPE_4__, %struct.net_bridge_port* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.net_bridge = type { i32, i32 }
%struct.net_bridge_port = type { i32 }

@br_fdb_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@br_fdb_rht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_bridge_fdb_entry* (%struct.net_bridge*, %struct.net_bridge_port*, i8*, i32, i8, i8)* @fdb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_bridge_fdb_entry* @fdb_create(%struct.net_bridge* %0, %struct.net_bridge_port* %1, i8* %2, i32 %3, i8 zeroext %4, i8 zeroext %5) #0 {
  %7 = alloca %struct.net_bridge*, align 8
  %8 = alloca %struct.net_bridge_port*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca %struct.net_bridge_fdb_entry*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %7, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8 %4, i8* %11, align 1
  store i8 %5, i8* %12, align 1
  %14 = load i32, i32* @br_fdb_cache, align 4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.net_bridge_fdb_entry* @kmem_cache_alloc(i32 %14, i32 %15)
  store %struct.net_bridge_fdb_entry* %16, %struct.net_bridge_fdb_entry** %13, align 8
  %17 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %13, align 8
  %18 = icmp ne %struct.net_bridge_fdb_entry* %17, null
  br i1 %18, label %19, label %72

19:                                               ; preds = %6
  %20 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %13, align 8
  %21 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %20, i32 0, i32 10
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i32 @memcpy(i32 %24, i8* %25, i32 %26)
  %28 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %29 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %13, align 8
  %30 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %29, i32 0, i32 11
  store %struct.net_bridge_port* %28, %struct.net_bridge_port** %30, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %13, align 8
  %33 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %32, i32 0, i32 10
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load i8, i8* %11, align 1
  %36 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %13, align 8
  %37 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %36, i32 0, i32 0
  store i8 %35, i8* %37, align 8
  %38 = load i8, i8* %12, align 1
  %39 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %13, align 8
  %40 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %39, i32 0, i32 1
  store i8 %38, i8* %40, align 1
  %41 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %13, align 8
  %42 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %41, i32 0, i32 9
  store i64 0, i64* %42, align 8
  %43 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %13, align 8
  %44 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %43, i32 0, i32 8
  store i64 0, i64* %44, align 8
  %45 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %13, align 8
  %46 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %45, i32 0, i32 7
  store i64 0, i64* %46, align 8
  %47 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %13, align 8
  %48 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %47, i32 0, i32 6
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @jiffies, align 4
  %50 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %13, align 8
  %51 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %13, align 8
  %53 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %52, i32 0, i32 5
  store i32 %49, i32* %53, align 8
  %54 = load %struct.net_bridge*, %struct.net_bridge** %7, align 8
  %55 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %54, i32 0, i32 1
  %56 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %13, align 8
  %57 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %56, i32 0, i32 3
  %58 = load i32, i32* @br_fdb_rht_params, align 4
  %59 = call i64 @rhashtable_lookup_insert_fast(i32* %55, i32* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %19
  %62 = load i32, i32* @br_fdb_cache, align 4
  %63 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %13, align 8
  %64 = call i32 @kmem_cache_free(i32 %62, %struct.net_bridge_fdb_entry* %63)
  store %struct.net_bridge_fdb_entry* null, %struct.net_bridge_fdb_entry** %13, align 8
  br label %71

65:                                               ; preds = %19
  %66 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %13, align 8
  %67 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %66, i32 0, i32 2
  %68 = load %struct.net_bridge*, %struct.net_bridge** %7, align 8
  %69 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %68, i32 0, i32 0
  %70 = call i32 @hlist_add_head_rcu(i32* %67, i32* %69)
  br label %71

71:                                               ; preds = %65, %61
  br label %72

72:                                               ; preds = %71, %6
  %73 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %13, align 8
  ret %struct.net_bridge_fdb_entry* %73
}

declare dso_local %struct.net_bridge_fdb_entry* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @rhashtable_lookup_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.net_bridge_fdb_entry*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
