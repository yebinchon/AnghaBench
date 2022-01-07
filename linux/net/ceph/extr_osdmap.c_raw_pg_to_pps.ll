; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_raw_pg_to_pps.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_raw_pg_to_pps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_pg_pool_info = type { i32, i32, i32 }
%struct.ceph_pg = type { i64, i32 }

@CEPH_POOL_FLAG_HASHPSPOOL = common dso_local global i32 0, align 4
@CRUSH_HASH_RJENKINS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_pg_pool_info*, %struct.ceph_pg*)* @raw_pg_to_pps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_pg_to_pps(%struct.ceph_pg_pool_info* %0, %struct.ceph_pg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_pg_pool_info*, align 8
  %5 = alloca %struct.ceph_pg*, align 8
  store %struct.ceph_pg_pool_info* %0, %struct.ceph_pg_pool_info** %4, align 8
  store %struct.ceph_pg* %1, %struct.ceph_pg** %5, align 8
  %6 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %4, align 8
  %7 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CEPH_POOL_FLAG_HASHPSPOOL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i32, i32* @CRUSH_HASH_RJENKINS1, align 4
  %14 = load %struct.ceph_pg*, %struct.ceph_pg** %5, align 8
  %15 = getelementptr inbounds %struct.ceph_pg, %struct.ceph_pg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %4, align 8
  %18 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %4, align 8
  %21 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ceph_stable_mod(i32 %16, i32 %19, i32 %22)
  %24 = load %struct.ceph_pg*, %struct.ceph_pg** %5, align 8
  %25 = getelementptr inbounds %struct.ceph_pg, %struct.ceph_pg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @crush_hash32_2(i32 %13, i32 %23, i64 %26)
  store i32 %27, i32* %3, align 4
  br label %44

28:                                               ; preds = %2
  %29 = load %struct.ceph_pg*, %struct.ceph_pg** %5, align 8
  %30 = getelementptr inbounds %struct.ceph_pg, %struct.ceph_pg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %4, align 8
  %33 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %4, align 8
  %36 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ceph_stable_mod(i32 %31, i32 %34, i32 %37)
  %39 = load %struct.ceph_pg*, %struct.ceph_pg** %5, align 8
  %40 = getelementptr inbounds %struct.ceph_pg, %struct.ceph_pg* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = add i32 %38, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %28, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @crush_hash32_2(i32, i32, i64) #1

declare dso_local i32 @ceph_stable_mod(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
