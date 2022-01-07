; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_cls_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_cls_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32 }
%struct.ceph_osd_req_op = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64, i8*, i64 }
%struct.ceph_pagelist = type { i32 }

@CEPH_OSD_OP_CALL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@U8_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osd_req_op_cls_init(%struct.ceph_osd_request* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_osd_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ceph_osd_req_op*, align 8
  %11 = alloca %struct.ceph_pagelist*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @CEPH_OSD_OP_CALL, align 4
  %18 = call %struct.ceph_osd_req_op* @_osd_req_op_init(%struct.ceph_osd_request* %15, i32 %16, i32 %17, i32 0)
  store %struct.ceph_osd_req_op* %18, %struct.ceph_osd_req_op** %10, align 8
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = call %struct.ceph_pagelist* @ceph_pagelist_alloc(i32 %19)
  store %struct.ceph_pagelist* %20, %struct.ceph_pagelist** %11, align 8
  %21 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %11, align 8
  %22 = icmp ne %struct.ceph_pagelist* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %90

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %10, align 8
  %29 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @strlen(i8* %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* @U8_MAX, align 8
  %35 = icmp ugt i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load i64, i64* %13, align 8
  %39 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %10, align 8
  %40 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  %42 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %11, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %13, align 8
  %45 = call i32 @ceph_pagelist_append(%struct.ceph_pagelist* %42, i8* %43, i64 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %26
  br label %86

49:                                               ; preds = %26
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %12, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %10, align 8
  %55 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i8* %53, i8** %56, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i64 @strlen(i8* %57)
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* @U8_MAX, align 8
  %61 = icmp ugt i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @BUG_ON(i32 %62)
  %64 = load i64, i64* %13, align 8
  %65 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %10, align 8
  %66 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  store i64 %64, i64* %67, align 8
  %68 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %11, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @ceph_pagelist_append(%struct.ceph_pagelist* %68, i8* %69, i64 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %49
  br label %86

75:                                               ; preds = %49
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %12, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %12, align 8
  %79 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %11, align 8
  %82 = call i32 @osd_req_op_cls_request_info_pagelist(%struct.ceph_osd_request* %79, i32 %80, %struct.ceph_pagelist* %81)
  %83 = load i64, i64* %12, align 8
  %84 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %10, align 8
  %85 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  store i32 0, i32* %5, align 4
  br label %90

86:                                               ; preds = %74, %48
  %87 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %11, align 8
  %88 = call i32 @ceph_pagelist_release(%struct.ceph_pagelist* %87)
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %75, %23
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.ceph_osd_req_op* @_osd_req_op_init(%struct.ceph_osd_request*, i32, i32, i32) #1

declare dso_local %struct.ceph_pagelist* @ceph_pagelist_alloc(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ceph_pagelist_append(%struct.ceph_pagelist*, i8*, i64) #1

declare dso_local i32 @osd_req_op_cls_request_info_pagelist(%struct.ceph_osd_request*, i32, %struct.ceph_pagelist*) #1

declare dso_local i32 @ceph_pagelist_release(%struct.ceph_pagelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
