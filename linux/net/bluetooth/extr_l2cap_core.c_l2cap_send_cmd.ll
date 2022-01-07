; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"code 0x%2.2x\00", align 1
@LE_LINK = common dso_local global i64 0, align 8
@ACL_START_NO_FLUSH = common dso_local global i32 0, align 4
@ACL_START = common dso_local global i32 0, align 4
@BT_POWER_FORCE_ACTIVE_ON = common dso_local global i32 0, align 4
@HCI_PRIO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*, i32, i32, i32, i8*)* @l2cap_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_send_cmd(%struct.l2cap_conn* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = call %struct.sk_buff* @l2cap_build_cmd(%struct.l2cap_conn* %13, i32 %14, i32 %15, i32 %16, i8* %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  br label %58

24:                                               ; preds = %5
  %25 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %26 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @lmp_no_flush_capable(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %34 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LE_LINK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32, %24
  %41 = load i32, i32* @ACL_START_NO_FLUSH, align 4
  store i32 %41, i32* %12, align 4
  br label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @ACL_START, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, i32* @BT_POWER_FORCE_ACTIVE_ON, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %47 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @HCI_PRIO_MAX, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %53 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @hci_send_acl(i32 %54, %struct.sk_buff* %55, i32 %56)
  br label %58

58:                                               ; preds = %44, %23
  ret void
}

declare dso_local %struct.sk_buff* @l2cap_build_cmd(%struct.l2cap_conn*, i32, i32, i32, i8*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i64 @lmp_no_flush_capable(i32) #1

declare dso_local %struct.TYPE_4__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @hci_send_acl(i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
