; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_extent_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_extent_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32, %struct.ceph_osd_req_op* }
%struct.ceph_osd_req_op = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CEPH_OSD_OP_WRITE = common dso_local global i64 0, align 8
@CEPH_OSD_OP_WRITEFULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_req_op_extent_update(%struct.ceph_osd_request* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ceph_osd_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ceph_osd_req_op*, align 8
  %8 = alloca i64, align 8
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %11 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp uge i32 %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %17 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %16, i32 0, i32 1
  %18 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %18, i64 %20
  store %struct.ceph_osd_req_op* %21, %struct.ceph_osd_req_op** %7, align 8
  %22 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %7, align 8
  %23 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %61

30:                                               ; preds = %3
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp sgt i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %7, align 8
  %38 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %7, align 8
  %41 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CEPH_OSD_OP_WRITE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %30
  %46 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %7, align 8
  %47 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CEPH_OSD_OP_WRITEFULL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %45, %30
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %6, align 8
  %54 = sub nsw i64 %52, %53
  %55 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %7, align 8
  %56 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 8
  br label %61

61:                                               ; preds = %29, %51, %45
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
