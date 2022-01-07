; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_extent_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_extent_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32 }
%struct.ceph_osd_req_op = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8* }

@CEPH_OSD_OP_READ = common dso_local global i64 0, align 8
@CEPH_OSD_OP_WRITE = common dso_local global i64 0, align 8
@CEPH_OSD_OP_WRITEFULL = common dso_local global i64 0, align 8
@CEPH_OSD_OP_ZERO = common dso_local global i64 0, align 8
@CEPH_OSD_OP_TRUNCATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_req_op_extent_init(%struct.ceph_osd_request* %0, i32 %1, i64 %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.ceph_osd_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ceph_osd_req_op*, align 8
  %16 = alloca i64, align 8
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i64, i64* %10, align 8
  %20 = call %struct.ceph_osd_req_op* @_osd_req_op_init(%struct.ceph_osd_request* %17, i32 %18, i64 %19, i32 0)
  store %struct.ceph_osd_req_op* %20, %struct.ceph_osd_req_op** %15, align 8
  store i64 0, i64* %16, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @CEPH_OSD_OP_READ, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %7
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @CEPH_OSD_OP_WRITE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @CEPH_OSD_OP_WRITEFULL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @CEPH_OSD_OP_ZERO, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @CEPH_OSD_OP_TRUNCATE, align 8
  %39 = icmp ne i64 %37, %38
  br label %40

40:                                               ; preds = %36, %32, %28, %24, %7
  %41 = phi i1 [ false, %32 ], [ false, %28 ], [ false, %24 ], [ false, %7 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load i8*, i8** %11, align 8
  %45 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %15, align 8
  %46 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i8* %44, i8** %47, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %15, align 8
  %50 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i8* %48, i8** %51, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %15, align 8
  %54 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i8* %52, i8** %55, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %15, align 8
  %58 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @CEPH_OSD_OP_WRITE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %40
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* @CEPH_OSD_OP_WRITEFULL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63, %40
  %68 = load i8*, i8** %12, align 8
  %69 = load i64, i64* %16, align 8
  %70 = getelementptr i8, i8* %68, i64 %69
  %71 = ptrtoint i8* %70 to i64
  store i64 %71, i64* %16, align 8
  br label %72

72:                                               ; preds = %67, %63
  %73 = load i64, i64* %16, align 8
  %74 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %15, align 8
  %75 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  ret void
}

declare dso_local %struct.ceph_osd_req_op* @_osd_req_op_init(%struct.ceph_osd_request*, i32, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
