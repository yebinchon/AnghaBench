; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_cls_response_data_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_cls_response_data_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32 }
%struct.page = type { i32 }
%struct.ceph_osd_data = type { i32 }

@cls = common dso_local global i32 0, align 4
@response_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_req_op_cls_response_data_pages(%struct.ceph_osd_request* %0, i32 %1, %struct.page** %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ceph_osd_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ceph_osd_data*, align 8
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.page** %2, %struct.page*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @cls, align 4
  %19 = load i32, i32* @response_data, align 4
  %20 = call %struct.ceph_osd_data* @osd_req_op_data(%struct.ceph_osd_request* %16, i32 %17, i32 %18, i32 %19)
  store %struct.ceph_osd_data* %20, %struct.ceph_osd_data** %15, align 8
  %21 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %15, align 8
  %22 = load %struct.page**, %struct.page*** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @ceph_osd_data_pages_init(%struct.ceph_osd_data* %21, %struct.page** %22, i32 %23, i32 %24, i32 %25, i32 %26)
  ret void
}

declare dso_local %struct.ceph_osd_data* @osd_req_op_data(%struct.ceph_osd_request*, i32, i32, i32) #1

declare dso_local i32 @ceph_osd_data_pages_init(%struct.ceph_osd_data*, %struct.page**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
