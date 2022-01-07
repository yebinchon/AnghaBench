; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_alloc_cid.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_alloc_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@LE_LINK = common dso_local global i64 0, align 8
@L2CAP_CID_LE_DYN_END = common dso_local global i64 0, align 8
@L2CAP_CID_DYN_END = common dso_local global i64 0, align 8
@L2CAP_CID_DYN_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.l2cap_conn*)* @l2cap_alloc_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @l2cap_alloc_cid(%struct.l2cap_conn* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %3, align 8
  %6 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %7 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LE_LINK, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @L2CAP_CID_LE_DYN_END, align 8
  store i64 %14, i64* %5, align 8
  br label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @L2CAP_CID_DYN_END, align 8
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i64, i64* @L2CAP_CID_DYN_START, align 8
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %31, %17
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @__l2cap_get_chan_by_scid(%struct.l2cap_conn* %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %4, align 8
  store i64 %29, i64* %2, align 8
  br label %35

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %4, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %19

34:                                               ; preds = %19
  store i64 0, i64* %2, align 8
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

declare dso_local i32 @__l2cap_get_chan_by_scid(%struct.l2cap_conn*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
