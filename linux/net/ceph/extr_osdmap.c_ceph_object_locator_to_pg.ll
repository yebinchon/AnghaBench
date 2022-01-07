; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_ceph_object_locator_to_pg.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_ceph_object_locator_to_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osdmap = type { i32 }
%struct.ceph_object_id = type { i32 }
%struct.ceph_object_locator = type { i32 }
%struct.ceph_pg = type { i32 }
%struct.ceph_pg_pool_info = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_object_locator_to_pg(%struct.ceph_osdmap* %0, %struct.ceph_object_id* %1, %struct.ceph_object_locator* %2, %struct.ceph_pg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_osdmap*, align 8
  %7 = alloca %struct.ceph_object_id*, align 8
  %8 = alloca %struct.ceph_object_locator*, align 8
  %9 = alloca %struct.ceph_pg*, align 8
  %10 = alloca %struct.ceph_pg_pool_info*, align 8
  store %struct.ceph_osdmap* %0, %struct.ceph_osdmap** %6, align 8
  store %struct.ceph_object_id* %1, %struct.ceph_object_id** %7, align 8
  store %struct.ceph_object_locator* %2, %struct.ceph_object_locator** %8, align 8
  store %struct.ceph_pg* %3, %struct.ceph_pg** %9, align 8
  %11 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %6, align 8
  %12 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %8, align 8
  %13 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ceph_pg_pool_info* @ceph_pg_pool_by_id(%struct.ceph_osdmap* %11, i32 %14)
  store %struct.ceph_pg_pool_info* %15, %struct.ceph_pg_pool_info** %10, align 8
  %16 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %10, align 8
  %17 = icmp ne %struct.ceph_pg_pool_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %27

21:                                               ; preds = %4
  %22 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %10, align 8
  %23 = load %struct.ceph_object_id*, %struct.ceph_object_id** %7, align 8
  %24 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %8, align 8
  %25 = load %struct.ceph_pg*, %struct.ceph_pg** %9, align 8
  %26 = call i32 @__ceph_object_locator_to_pg(%struct.ceph_pg_pool_info* %22, %struct.ceph_object_id* %23, %struct.ceph_object_locator* %24, %struct.ceph_pg* %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.ceph_pg_pool_info* @ceph_pg_pool_by_id(%struct.ceph_osdmap*, i32) #1

declare dso_local i32 @__ceph_object_locator_to_pg(%struct.ceph_pg_pool_info*, %struct.ceph_object_id*, %struct.ceph_object_locator*, %struct.ceph_pg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
