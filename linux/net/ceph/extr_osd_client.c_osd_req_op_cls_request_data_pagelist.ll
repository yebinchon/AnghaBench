; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_cls_request_data_pagelist.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_cls_request_data_pagelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ceph_pagelist = type { i64 }
%struct.ceph_osd_data = type { i32 }

@cls = common dso_local global i32 0, align 4
@request_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_req_op_cls_request_data_pagelist(%struct.ceph_osd_request* %0, i32 %1, %struct.ceph_pagelist* %2) #0 {
  %4 = alloca %struct.ceph_osd_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_pagelist*, align 8
  %7 = alloca %struct.ceph_osd_data*, align 8
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ceph_pagelist* %2, %struct.ceph_pagelist** %6, align 8
  %8 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @cls, align 4
  %11 = load i32, i32* @request_data, align 4
  %12 = call %struct.ceph_osd_data* @osd_req_op_data(%struct.ceph_osd_request* %8, i32 %9, i32 %10, i32 %11)
  store %struct.ceph_osd_data* %12, %struct.ceph_osd_data** %7, align 8
  %13 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %7, align 8
  %14 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %6, align 8
  %15 = call i32 @ceph_osd_data_pagelist_init(%struct.ceph_osd_data* %13, %struct.ceph_pagelist* %14)
  %16 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %6, align 8
  %17 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %20 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %18
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %6, align 8
  %32 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %35 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %33
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  ret void
}

declare dso_local %struct.ceph_osd_data* @osd_req_op_data(%struct.ceph_osd_request*, i32, i32, i32) #1

declare dso_local i32 @ceph_osd_data_pagelist_init(%struct.ceph_osd_data*, %struct.ceph_pagelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
