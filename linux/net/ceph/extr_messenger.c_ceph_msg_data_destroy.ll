; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg_data = type { i64, i32 }

@CEPH_MSG_DATA_PAGELIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_msg_data*)* @ceph_msg_data_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_msg_data_destroy(%struct.ceph_msg_data* %0) #0 {
  %2 = alloca %struct.ceph_msg_data*, align 8
  store %struct.ceph_msg_data* %0, %struct.ceph_msg_data** %2, align 8
  %3 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %2, align 8
  %4 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CEPH_MSG_DATA_PAGELIST, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %2, align 8
  %10 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ceph_pagelist_release(i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @ceph_pagelist_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
