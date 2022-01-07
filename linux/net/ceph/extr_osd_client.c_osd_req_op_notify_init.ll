; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_notify_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_notify_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32 }
%struct.ceph_osd_req_op = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ceph_pagelist = type { i32 }

@CEPH_OSD_OP_NOTIFY = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_osd_request*, i32, i32, i32, i32, i8*, i32)* @osd_req_op_notify_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osd_req_op_notify_init(%struct.ceph_osd_request* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ceph_osd_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ceph_osd_req_op*, align 8
  %17 = alloca %struct.ceph_pagelist*, align 8
  %18 = alloca i32, align 4
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @CEPH_OSD_OP_NOTIFY, align 4
  %22 = call %struct.ceph_osd_req_op* @_osd_req_op_init(%struct.ceph_osd_request* %19, i32 %20, i32 %21, i32 0)
  store %struct.ceph_osd_req_op* %22, %struct.ceph_osd_req_op** %16, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %16, align 8
  %25 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @GFP_NOIO, align 4
  %28 = call %struct.ceph_pagelist* @ceph_pagelist_alloc(i32 %27)
  store %struct.ceph_pagelist* %28, %struct.ceph_pagelist** %17, align 8
  %29 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %17, align 8
  %30 = icmp ne %struct.ceph_pagelist* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %7
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %71

34:                                               ; preds = %7
  %35 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %17, align 8
  %36 = call i32 @ceph_pagelist_encode_32(%struct.ceph_pagelist* %35, i32 1)
  store i32 %36, i32* %18, align 4
  %37 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %17, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @ceph_pagelist_encode_32(%struct.ceph_pagelist* %37, i32 %38)
  %40 = load i32, i32* %18, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %18, align 4
  %42 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %17, align 8
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @ceph_pagelist_encode_32(%struct.ceph_pagelist* %42, i32 %43)
  %45 = load i32, i32* %18, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %18, align 4
  %47 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %17, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @ceph_pagelist_append(%struct.ceph_pagelist* %47, i8* %48, i32 %49)
  %51 = load i32, i32* %18, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %34
  %56 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %17, align 8
  %57 = call i32 @ceph_pagelist_release(%struct.ceph_pagelist* %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %71

60:                                               ; preds = %34
  %61 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %16, align 8
  %62 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %17, align 8
  %65 = call i32 @ceph_osd_data_pagelist_init(i32* %63, %struct.ceph_pagelist* %64)
  %66 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %17, align 8
  %67 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %16, align 8
  %70 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %60, %55, %31
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local %struct.ceph_osd_req_op* @_osd_req_op_init(%struct.ceph_osd_request*, i32, i32, i32) #1

declare dso_local %struct.ceph_pagelist* @ceph_pagelist_alloc(i32) #1

declare dso_local i32 @ceph_pagelist_encode_32(%struct.ceph_pagelist*, i32) #1

declare dso_local i32 @ceph_pagelist_append(%struct.ceph_pagelist*, i8*, i32) #1

declare dso_local i32 @ceph_pagelist_release(%struct.ceph_pagelist*) #1

declare dso_local i32 @ceph_osd_data_pagelist_init(i32*, %struct.ceph_pagelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
