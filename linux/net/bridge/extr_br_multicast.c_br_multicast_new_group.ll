; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_new_group.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_new_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_mdb_entry = type { i32, i32, i32, %struct.br_ip, %struct.net_bridge* }
%struct.br_ip = type { i32 }
%struct.net_bridge = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BROPT_MULTICAST_ENABLED = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@br_multicast_group_expired = common dso_local global i32 0, align 4
@br_mdb_rht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_bridge_mdb_entry* @br_multicast_new_group(%struct.net_bridge* %0, %struct.br_ip* %1) #0 {
  %3 = alloca %struct.net_bridge_mdb_entry*, align 8
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.br_ip*, align 8
  %6 = alloca %struct.net_bridge_mdb_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store %struct.br_ip* %1, %struct.br_ip** %5, align 8
  %8 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %9 = load %struct.br_ip*, %struct.br_ip** %5, align 8
  %10 = call %struct.net_bridge_mdb_entry* @br_mdb_ip_get(%struct.net_bridge* %8, %struct.br_ip* %9)
  store %struct.net_bridge_mdb_entry* %10, %struct.net_bridge_mdb_entry** %6, align 8
  %11 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %6, align 8
  %12 = icmp ne %struct.net_bridge_mdb_entry* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %6, align 8
  store %struct.net_bridge_mdb_entry* %14, %struct.net_bridge_mdb_entry** %3, align 8
  br label %78

15:                                               ; preds = %2
  %16 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %17 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i64 @atomic_read(i32* %18)
  %20 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %21 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %26 = load i32, i32* @BROPT_MULTICAST_ENABLED, align 4
  %27 = call i32 @br_opt_toggle(%struct.net_bridge* %25, i32 %26, i32 0)
  %28 = load i32, i32* @E2BIG, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.net_bridge_mdb_entry* @ERR_PTR(i32 %29)
  store %struct.net_bridge_mdb_entry* %30, %struct.net_bridge_mdb_entry** %3, align 8
  br label %78

31:                                               ; preds = %15
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call %struct.net_bridge_mdb_entry* @kzalloc(i32 24, i32 %32)
  store %struct.net_bridge_mdb_entry* %33, %struct.net_bridge_mdb_entry** %6, align 8
  %34 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %6, align 8
  %35 = icmp ne %struct.net_bridge_mdb_entry* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.net_bridge_mdb_entry* @ERR_PTR(i32 %42)
  store %struct.net_bridge_mdb_entry* %43, %struct.net_bridge_mdb_entry** %3, align 8
  br label %78

44:                                               ; preds = %31
  %45 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %46 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %6, align 8
  %47 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %46, i32 0, i32 4
  store %struct.net_bridge* %45, %struct.net_bridge** %47, align 8
  %48 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %6, align 8
  %49 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %48, i32 0, i32 3
  %50 = load %struct.br_ip*, %struct.br_ip** %5, align 8
  %51 = bitcast %struct.br_ip* %49 to i8*
  %52 = bitcast %struct.br_ip* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %6, align 8
  %54 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %53, i32 0, i32 2
  %55 = load i32, i32* @br_multicast_group_expired, align 4
  %56 = call i32 @timer_setup(i32* %54, i32 %55, i32 0)
  %57 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %58 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %57, i32 0, i32 2
  %59 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %6, align 8
  %60 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %59, i32 0, i32 1
  %61 = load i32, i32* @br_mdb_rht_params, align 4
  %62 = call i32 @rhashtable_lookup_insert_fast(%struct.TYPE_2__* %58, i32* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %44
  %66 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %6, align 8
  %67 = call i32 @kfree(%struct.net_bridge_mdb_entry* %66)
  %68 = load i32, i32* %7, align 4
  %69 = call %struct.net_bridge_mdb_entry* @ERR_PTR(i32 %68)
  store %struct.net_bridge_mdb_entry* %69, %struct.net_bridge_mdb_entry** %6, align 8
  br label %76

70:                                               ; preds = %44
  %71 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %6, align 8
  %72 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %71, i32 0, i32 0
  %73 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %74 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %73, i32 0, i32 1
  %75 = call i32 @hlist_add_head_rcu(i32* %72, i32* %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %6, align 8
  store %struct.net_bridge_mdb_entry* %77, %struct.net_bridge_mdb_entry** %3, align 8
  br label %78

78:                                               ; preds = %76, %40, %24, %13
  %79 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  ret %struct.net_bridge_mdb_entry* %79
}

declare dso_local %struct.net_bridge_mdb_entry* @br_mdb_ip_get(%struct.net_bridge*, %struct.br_ip*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @br_opt_toggle(%struct.net_bridge*, i32, i32) #1

declare dso_local %struct.net_bridge_mdb_entry* @ERR_PTR(i32) #1

declare dso_local %struct.net_bridge_mdb_entry* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @rhashtable_lookup_insert_fast(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.net_bridge_mdb_entry*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
