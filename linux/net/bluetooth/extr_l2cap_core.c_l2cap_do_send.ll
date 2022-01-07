; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_do_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_do_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.TYPE_3__*, i32, i64, i64 }
%struct.TYPE_3__ = type { i64, %struct.hci_conn* }
%struct.hci_conn = type { i64, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"chan %p, skb %p len %d priority %u\00", align 1
@ACL_COMPLETE = common dso_local global i32 0, align 4
@LE_LINK = common dso_local global i64 0, align 8
@FLAG_FLUSHABLE = common dso_local global i32 0, align 4
@ACL_START_NO_FLUSH = common dso_local global i32 0, align 4
@ACL_START = common dso_local global i32 0, align 4
@FLAG_FORCE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, %struct.sk_buff*)* @l2cap_do_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_do_send(%struct.l2cap_chan* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %8 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  store %struct.hci_conn* %11, %struct.hci_conn** %5, align 8
  %12 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %12, %struct.sk_buff* %13, i32 %16, i32 %19)
  %21 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %22 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %2
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %27 = call i32 @__chan_is_moving(%struct.l2cap_chan* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %31 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %36 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load i32, i32* @ACL_COMPLETE, align 4
  %40 = call i32 @hci_send_acl(i64 %37, %struct.sk_buff* %38, i32 %39)
  br label %44

41:                                               ; preds = %29
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @kfree_skb(%struct.sk_buff* %42)
  br label %44

44:                                               ; preds = %41, %34
  br label %83

45:                                               ; preds = %25, %2
  %46 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %47 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @LE_LINK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %63, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @FLAG_FLUSHABLE, align 4
  %53 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %54 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %53, i32 0, i32 1
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %59 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @lmp_no_flush_capable(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57, %45
  %64 = load i32, i32* @ACL_START_NO_FLUSH, align 4
  store i32 %64, i32* %6, align 4
  br label %67

65:                                               ; preds = %57, %51
  %66 = load i32, i32* @ACL_START, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = load i32, i32* @FLAG_FORCE_ACTIVE, align 4
  %69 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %70 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %69, i32 0, i32 1
  %71 = call i64 @test_bit(i32 %68, i32* %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %72)
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  %75 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %76 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @hci_send_acl(i64 %79, %struct.sk_buff* %80, i32 %81)
  br label %83

83:                                               ; preds = %67, %44
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @__chan_is_moving(%struct.l2cap_chan*) #1

declare dso_local i32 @hci_send_acl(i64, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @lmp_no_flush_capable(i32) #1

declare dso_local %struct.TYPE_4__* @bt_cb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
