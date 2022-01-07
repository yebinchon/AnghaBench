; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_do_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_do_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.l2cap_conn* }
%struct.l2cap_conn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@LE_LINK = common dso_local global i64 0, align 8
@L2CAP_INFO_FEAT_MASK_REQ_SENT = common dso_local global i32 0, align 4
@L2CAP_INFO_FEAT_MASK_REQ_DONE = common dso_local global i32 0, align 4
@L2CAP_DISC_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @l2cap_do_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_do_start(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.l2cap_conn*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %4 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %5 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %4, i32 0, i32 0
  %6 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  store %struct.l2cap_conn* %6, %struct.l2cap_conn** %3, align 8
  %7 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %8 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LE_LINK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %16 = call i32 @l2cap_le_start(%struct.l2cap_chan* %15)
  br label %57

17:                                               ; preds = %1
  %18 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %19 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_SENT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %26 = call i32 @l2cap_request_info(%struct.l2cap_conn* %25)
  br label %57

27:                                               ; preds = %17
  %28 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %29 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_DONE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %57

35:                                               ; preds = %27
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %37 = call i32 @l2cap_chan_check_security(%struct.l2cap_chan* %36, i32 1)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %41 = call i32 @__l2cap_no_conn_pending(%struct.l2cap_chan* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39, %35
  br label %57

44:                                               ; preds = %39
  %45 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %46 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = call i64 @l2cap_check_enc_key_size(%struct.TYPE_2__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %52 = call i32 @l2cap_start_connection(%struct.l2cap_chan* %51)
  br label %57

53:                                               ; preds = %44
  %54 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %55 = load i32, i32* @L2CAP_DISC_TIMEOUT, align 4
  %56 = call i32 @__set_chan_timer(%struct.l2cap_chan* %54, i32 %55)
  br label %57

57:                                               ; preds = %14, %24, %34, %43, %53, %50
  ret void
}

declare dso_local i32 @l2cap_le_start(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_request_info(%struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_chan_check_security(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @__l2cap_no_conn_pending(%struct.l2cap_chan*) #1

declare dso_local i64 @l2cap_check_enc_key_size(%struct.TYPE_2__*) #1

declare dso_local i32 @l2cap_start_connection(%struct.l2cap_chan*) #1

declare dso_local i32 @__set_chan_timer(%struct.l2cap_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
