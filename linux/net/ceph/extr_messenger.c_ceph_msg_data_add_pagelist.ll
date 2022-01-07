; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_add_pagelist.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_add_pagelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg = type { i32 }
%struct.ceph_pagelist = type { i64, i32 }
%struct.ceph_msg_data = type { %struct.ceph_pagelist*, i32 }

@CEPH_MSG_DATA_PAGELIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_msg_data_add_pagelist(%struct.ceph_msg* %0, %struct.ceph_pagelist* %1) #0 {
  %3 = alloca %struct.ceph_msg*, align 8
  %4 = alloca %struct.ceph_pagelist*, align 8
  %5 = alloca %struct.ceph_msg_data*, align 8
  store %struct.ceph_msg* %0, %struct.ceph_msg** %3, align 8
  store %struct.ceph_pagelist* %1, %struct.ceph_pagelist** %4, align 8
  %6 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %4, align 8
  %7 = icmp ne %struct.ceph_pagelist* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %4, align 8
  %12 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %19 = call %struct.ceph_msg_data* @ceph_msg_data_add(%struct.ceph_msg* %18)
  store %struct.ceph_msg_data* %19, %struct.ceph_msg_data** %5, align 8
  %20 = load i32, i32* @CEPH_MSG_DATA_PAGELIST, align 4
  %21 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %5, align 8
  %22 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %4, align 8
  %24 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %23, i32 0, i32 1
  %25 = call i32 @refcount_inc(i32* %24)
  %26 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %4, align 8
  %27 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %5, align 8
  %28 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %27, i32 0, i32 0
  store %struct.ceph_pagelist* %26, %struct.ceph_pagelist** %28, align 8
  %29 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %4, align 8
  %30 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %33 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ceph_msg_data* @ceph_msg_data_add(%struct.ceph_msg*) #1

declare dso_local i32 @refcount_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
