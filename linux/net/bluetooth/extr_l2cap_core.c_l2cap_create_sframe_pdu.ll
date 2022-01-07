; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_create_sframe_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_create_sframe_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64 }
%struct.l2cap_chan = type { i64, i32, i64 }
%struct.l2cap_hdr = type { i8*, i8* }

@L2CAP_FCS_CRC16 = common dso_local global i64 0, align 8
@L2CAP_FCS_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@L2CAP_HDR_SIZE = common dso_local global i64 0, align 8
@FLAG_EXT_CTRL = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_SIZE = common dso_local global i64 0, align 8
@L2CAP_ENH_CTRL_SIZE = common dso_local global i64 0, align 8
@HCI_PRIO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.l2cap_chan*, i32)* @l2cap_create_sframe_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @l2cap_create_sframe_pdu(%struct.l2cap_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.l2cap_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.l2cap_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %11 = call i32 @__ertm_hdr_size(%struct.l2cap_chan* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %13 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @L2CAP_FCS_CRC16, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i64, i64* @L2CAP_FCS_SIZE, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %17, %2
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.sk_buff* @bt_skb_alloc(i32 %24, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.sk_buff* @ERR_PTR(i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %3, align 8
  br label %92

33:                                               ; preds = %23
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i64, i64* @L2CAP_HDR_SIZE, align 8
  %36 = call %struct.l2cap_hdr* @skb_put(%struct.sk_buff* %34, i64 %35)
  store %struct.l2cap_hdr* %36, %struct.l2cap_hdr** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @L2CAP_HDR_SIZE, align 8
  %40 = sub nsw i64 %38, %39
  %41 = call i8* @cpu_to_le16(i64 %40)
  %42 = load %struct.l2cap_hdr*, %struct.l2cap_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.l2cap_hdr, %struct.l2cap_hdr* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %45 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @cpu_to_le16(i64 %46)
  %48 = load %struct.l2cap_hdr*, %struct.l2cap_hdr** %7, align 8
  %49 = getelementptr inbounds %struct.l2cap_hdr, %struct.l2cap_hdr* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @FLAG_EXT_CTRL, align 4
  %51 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %52 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %51, i32 0, i32 1
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %33
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load i64, i64* @L2CAP_EXT_CTRL_SIZE, align 8
  %59 = call %struct.l2cap_hdr* @skb_put(%struct.sk_buff* %57, i64 %58)
  %60 = call i32 @put_unaligned_le32(i32 %56, %struct.l2cap_hdr* %59)
  br label %67

61:                                               ; preds = %33
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = load i64, i64* @L2CAP_ENH_CTRL_SIZE, align 8
  %65 = call %struct.l2cap_hdr* @skb_put(%struct.sk_buff* %63, i64 %64)
  %66 = call i32 @put_unaligned_le16(i32 %62, %struct.l2cap_hdr* %65)
  br label %67

67:                                               ; preds = %61, %55
  %68 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %69 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @L2CAP_FCS_CRC16, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %67
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @crc16(i32 0, i32* %77, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = load i64, i64* @L2CAP_FCS_SIZE, align 8
  %85 = call %struct.l2cap_hdr* @skb_put(%struct.sk_buff* %83, i64 %84)
  %86 = call i32 @put_unaligned_le16(i32 %82, %struct.l2cap_hdr* %85)
  br label %87

87:                                               ; preds = %73, %67
  %88 = load i32, i32* @HCI_PRIO_MAX, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %91, %struct.sk_buff** %3, align 8
  br label %92

92:                                               ; preds = %87, %29
  %93 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %93
}

declare dso_local i32 @__ertm_hdr_size(%struct.l2cap_chan*) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.l2cap_hdr* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @put_unaligned_le32(i32, %struct.l2cap_hdr*) #1

declare dso_local i32 @put_unaligned_le16(i32, %struct.l2cap_hdr*) #1

declare dso_local i32 @crc16(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
