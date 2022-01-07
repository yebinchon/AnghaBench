; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_raw_pg_to_pg.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_raw_pg_to_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_pg_pool_info = type { i32, i32 }
%struct.ceph_pg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_pg_pool_info*, %struct.ceph_pg*, %struct.ceph_pg*)* @raw_pg_to_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_pg_to_pg(%struct.ceph_pg_pool_info* %0, %struct.ceph_pg* %1, %struct.ceph_pg* %2) #0 {
  %4 = alloca %struct.ceph_pg_pool_info*, align 8
  %5 = alloca %struct.ceph_pg*, align 8
  %6 = alloca %struct.ceph_pg*, align 8
  store %struct.ceph_pg_pool_info* %0, %struct.ceph_pg_pool_info** %4, align 8
  store %struct.ceph_pg* %1, %struct.ceph_pg** %5, align 8
  store %struct.ceph_pg* %2, %struct.ceph_pg** %6, align 8
  %7 = load %struct.ceph_pg*, %struct.ceph_pg** %5, align 8
  %8 = getelementptr inbounds %struct.ceph_pg, %struct.ceph_pg* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ceph_pg*, %struct.ceph_pg** %6, align 8
  %11 = getelementptr inbounds %struct.ceph_pg, %struct.ceph_pg* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ceph_pg*, %struct.ceph_pg** %5, align 8
  %13 = getelementptr inbounds %struct.ceph_pg, %struct.ceph_pg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %4, align 8
  %16 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %4, align 8
  %19 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ceph_stable_mod(i32 %14, i32 %17, i32 %20)
  %22 = load %struct.ceph_pg*, %struct.ceph_pg** %6, align 8
  %23 = getelementptr inbounds %struct.ceph_pg, %struct.ceph_pg* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  ret void
}

declare dso_local i32 @ceph_stable_mod(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
