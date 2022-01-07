; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_notify_ack_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_op_notify_ack_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32 }
%struct.ceph_osd_req_op = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ceph_pagelist = type { i32 }

@CEPH_OSD_OP_NOTIFY_ACK = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_osd_request*, i32, i32, i32, i8*, i32)* @osd_req_op_notify_ack_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osd_req_op_notify_ack_init(%struct.ceph_osd_request* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_osd_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ceph_osd_req_op*, align 8
  %15 = alloca %struct.ceph_pagelist*, align 8
  %16 = alloca i32, align 4
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @CEPH_OSD_OP_NOTIFY_ACK, align 4
  %20 = call %struct.ceph_osd_req_op* @_osd_req_op_init(%struct.ceph_osd_request* %17, i32 %18, i32 %19, i32 0)
  store %struct.ceph_osd_req_op* %20, %struct.ceph_osd_req_op** %14, align 8
  %21 = load i32, i32* @GFP_NOIO, align 4
  %22 = call %struct.ceph_pagelist* @ceph_pagelist_alloc(i32 %21)
  store %struct.ceph_pagelist* %22, %struct.ceph_pagelist** %15, align 8
  %23 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %15, align 8
  %24 = icmp ne %struct.ceph_pagelist* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %75

28:                                               ; preds = %6
  %29 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %15, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @ceph_pagelist_encode_64(%struct.ceph_pagelist* %29, i32 %30)
  store i32 %31, i32* %16, align 4
  %32 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %15, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @ceph_pagelist_encode_64(%struct.ceph_pagelist* %32, i32 %33)
  %35 = load i32, i32* %16, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %16, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %28
  %40 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %15, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @ceph_pagelist_encode_32(%struct.ceph_pagelist* %40, i32 %41)
  %43 = load i32, i32* %16, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %16, align 4
  %45 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %15, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @ceph_pagelist_append(%struct.ceph_pagelist* %45, i8* %46, i32 %47)
  %49 = load i32, i32* %16, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %16, align 4
  br label %56

51:                                               ; preds = %28
  %52 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %15, align 8
  %53 = call i32 @ceph_pagelist_encode_32(%struct.ceph_pagelist* %52, i32 0)
  %54 = load i32, i32* %16, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %51, %39
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %15, align 8
  %61 = call i32 @ceph_pagelist_release(%struct.ceph_pagelist* %60)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %75

64:                                               ; preds = %56
  %65 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %14, align 8
  %66 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %15, align 8
  %69 = call i32 @ceph_osd_data_pagelist_init(i32* %67, %struct.ceph_pagelist* %68)
  %70 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %15, align 8
  %71 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %14, align 8
  %74 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %64, %59, %25
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local %struct.ceph_osd_req_op* @_osd_req_op_init(%struct.ceph_osd_request*, i32, i32, i32) #1

declare dso_local %struct.ceph_pagelist* @ceph_pagelist_alloc(i32) #1

declare dso_local i32 @ceph_pagelist_encode_64(%struct.ceph_pagelist*, i32) #1

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
