; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_xattr_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_xattr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32 }
%struct.ceph_osd_req_op = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i8*, i8* }
%struct.ceph_pagelist = type { i32 }

@CEPH_OSD_OP_SETXATTR = common dso_local global i64 0, align 8
@CEPH_OSD_OP_CMPXATTR = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osd_req_op_xattr_init(%struct.ceph_osd_request* %0, i32 %1, i64 %2, i8* %3, i8* %4, i64 %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ceph_osd_request*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.ceph_osd_req_op*, align 8
  %19 = alloca %struct.ceph_pagelist*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %22 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i64, i64* %12, align 8
  %25 = call %struct.ceph_osd_req_op* @_osd_req_op_init(%struct.ceph_osd_request* %22, i32 %23, i64 %24, i32 0)
  store %struct.ceph_osd_req_op* %25, %struct.ceph_osd_req_op** %18, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @CEPH_OSD_OP_SETXATTR, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %8
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @CEPH_OSD_OP_CMPXATTR, align 8
  %32 = icmp ne i64 %30, %31
  br label %33

33:                                               ; preds = %29, %8
  %34 = phi i1 [ false, %8 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load i32, i32* @GFP_NOFS, align 4
  %38 = call %struct.ceph_pagelist* @ceph_pagelist_alloc(i32 %37)
  store %struct.ceph_pagelist* %38, %struct.ceph_pagelist** %19, align 8
  %39 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %19, align 8
  %40 = icmp ne %struct.ceph_pagelist* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %94

44:                                               ; preds = %33
  %45 = load i8*, i8** %13, align 8
  %46 = call i64 @strlen(i8* %45)
  store i64 %46, i64* %20, align 8
  %47 = load i64, i64* %20, align 8
  %48 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %18, align 8
  %49 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %19, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i64, i64* %20, align 8
  %54 = call i32 @ceph_pagelist_append(%struct.ceph_pagelist* %51, i8* %52, i64 %53)
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %21, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %90

58:                                               ; preds = %44
  %59 = load i64, i64* %15, align 8
  %60 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %18, align 8
  %61 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i64 %59, i64* %62, align 8
  %63 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %19, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i64, i64* %15, align 8
  %66 = call i32 @ceph_pagelist_append(%struct.ceph_pagelist* %63, i8* %64, i64 %65)
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* %21, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %90

70:                                               ; preds = %58
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %20, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %20, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %18, align 8
  %76 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  store i8* %74, i8** %77, align 8
  %78 = load i8*, i8** %17, align 8
  %79 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %18, align 8
  %80 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  store i8* %78, i8** %81, align 8
  %82 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %18, align 8
  %83 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %19, align 8
  %86 = call i32 @ceph_osd_data_pagelist_init(i32* %84, %struct.ceph_pagelist* %85)
  %87 = load i64, i64* %20, align 8
  %88 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %18, align 8
  %89 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  store i32 0, i32* %9, align 4
  br label %94

90:                                               ; preds = %69, %57
  %91 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %19, align 8
  %92 = call i32 @ceph_pagelist_release(%struct.ceph_pagelist* %91)
  %93 = load i32, i32* %21, align 4
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %90, %70, %41
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local %struct.ceph_osd_req_op* @_osd_req_op_init(%struct.ceph_osd_request*, i32, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ceph_pagelist* @ceph_pagelist_alloc(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ceph_pagelist_append(%struct.ceph_pagelist*, i8*, i64) #1

declare dso_local i32 @ceph_osd_data_pagelist_init(i32*, %struct.ceph_pagelist*) #1

declare dso_local i32 @ceph_pagelist_release(%struct.ceph_pagelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
