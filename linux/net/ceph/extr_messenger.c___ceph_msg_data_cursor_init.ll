; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c___ceph_msg_data_cursor_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c___ceph_msg_data_cursor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg_data_cursor = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_msg_data_cursor*)* @__ceph_msg_data_cursor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ceph_msg_data_cursor_init(%struct.ceph_msg_data_cursor* %0) #0 {
  %2 = alloca %struct.ceph_msg_data_cursor*, align 8
  %3 = alloca i64, align 8
  store %struct.ceph_msg_data_cursor* %0, %struct.ceph_msg_data_cursor** %2, align 8
  %4 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %25 [
    i32 129, label %12
    i32 128, label %16
    i32 131, label %20
    i32 130, label %24
  ]

12:                                               ; preds = %1
  %13 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @ceph_msg_data_pagelist_cursor_init(%struct.ceph_msg_data_cursor* %13, i64 %14)
  br label %26

16:                                               ; preds = %1
  %17 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @ceph_msg_data_pages_cursor_init(%struct.ceph_msg_data_cursor* %17, i64 %18)
  br label %26

20:                                               ; preds = %1
  %21 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %2, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @ceph_msg_data_bvecs_cursor_init(%struct.ceph_msg_data_cursor* %21, i64 %22)
  br label %26

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %1, %24
  br label %26

26:                                               ; preds = %25, %20, %16, %12
  %27 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %2, align 8
  %28 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %27, i32 0, i32 1
  store i32 1, i32* %28, align 8
  ret void
}

declare dso_local i32 @ceph_msg_data_pagelist_cursor_init(%struct.ceph_msg_data_cursor*, i64) #1

declare dso_local i32 @ceph_msg_data_pages_cursor_init(%struct.ceph_msg_data_cursor*, i64) #1

declare dso_local i32 @ceph_msg_data_bvecs_cursor_init(%struct.ceph_msg_data_cursor*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
