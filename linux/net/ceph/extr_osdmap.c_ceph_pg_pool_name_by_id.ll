; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_ceph_pg_pool_name_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_ceph_pg_pool_name_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osdmap = type { i32 }
%struct.ceph_pg_pool_info = type { i8* }

@CEPH_NOPOOL = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ceph_pg_pool_name_by_id(%struct.ceph_osdmap* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ceph_osdmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ceph_pg_pool_info*, align 8
  store %struct.ceph_osdmap* %0, %struct.ceph_osdmap** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @CEPH_NOPOOL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %34

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @INT_MAX, align 8
  %14 = icmp sgt i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i8* null, i8** %3, align 8
  br label %34

19:                                               ; preds = %11
  %20 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %4, align 8
  %21 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %20, i32 0, i32 0
  %22 = load i64, i64* %5, align 8
  %23 = trunc i64 %22 to i32
  %24 = call %struct.ceph_pg_pool_info* @__lookup_pg_pool(i32* %21, i32 %23)
  store %struct.ceph_pg_pool_info* %24, %struct.ceph_pg_pool_info** %6, align 8
  %25 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %6, align 8
  %26 = icmp ne %struct.ceph_pg_pool_info* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %6, align 8
  %29 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i8* [ %30, %27 ], [ null, %31 ]
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %32, %18, %10
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.ceph_pg_pool_info* @__lookup_pg_pool(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
