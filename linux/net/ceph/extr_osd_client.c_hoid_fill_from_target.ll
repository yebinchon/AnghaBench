; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_hoid_fill_from_target.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_hoid_fill_from_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_hobject_id = type { i32, i32, i64, i32*, i32, i32, i32, i32, i64, i32* }
%struct.ceph_osd_request_target = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@CEPH_NOSNAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_hobject_id*, %struct.ceph_osd_request_target*)* @hoid_fill_from_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hoid_fill_from_target(%struct.ceph_hobject_id* %0, %struct.ceph_osd_request_target* %1) #0 {
  %3 = alloca %struct.ceph_hobject_id*, align 8
  %4 = alloca %struct.ceph_osd_request_target*, align 8
  store %struct.ceph_hobject_id* %0, %struct.ceph_hobject_id** %3, align 8
  store %struct.ceph_osd_request_target* %1, %struct.ceph_osd_request_target** %4, align 8
  %5 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %3, align 8
  %6 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %5, i32 0, i32 9
  store i32* null, i32** %6, align 8
  %7 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %7, i32 0, i32 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %10 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %16 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %3, align 8
  %20 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @CEPH_NOSNAP, align 4
  %22 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %3, align 8
  %23 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %25 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %3, align 8
  %29 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %3, align 8
  %31 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %33 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = icmp ne %struct.TYPE_7__* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %2
  %38 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %39 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %3, align 8
  %45 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %44, i32 0, i32 3
  store i32* %43, i32** %45, align 8
  %46 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %47 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %3, align 8
  %53 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  br label %59

54:                                               ; preds = %2
  %55 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %3, align 8
  %56 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %55, i32 0, i32 3
  store i32* null, i32** %56, align 8
  %57 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %3, align 8
  %58 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %54, %37
  %60 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %61 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %3, align 8
  %65 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %3, align 8
  %67 = call i32 @ceph_hoid_build_hash_cache(%struct.ceph_hobject_id* %66)
  ret void
}

declare dso_local i32 @ceph_hoid_build_hash_cache(%struct.ceph_hobject_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
