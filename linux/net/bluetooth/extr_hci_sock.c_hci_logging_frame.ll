; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_hci_logging_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_hci_logging_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.hci_mon_hdr = type { i32, i32, i32 }
%struct.sk_buff = type { i32* }
%struct.hci_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@MGMT_INDEX_NONE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@HCI_MON_USER_LOGGING = common dso_local global i32 0, align 4
@HCI_CHANNEL_MONITOR = common dso_local global i32 0, align 4
@HCI_SOCK_TRUSTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.msghdr*, i32)* @hci_logging_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_logging_frame(%struct.sock* %0, %struct.msghdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hci_mon_hdr*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.hci_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 15
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %156

21:                                               ; preds = %3
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MSG_DONTWAIT, align 4
  %28 = and i32 %26, %27
  %29 = call %struct.sk_buff* @bt_skb_send_alloc(%struct.sock* %22, i32 %23, i32 %28, i32* %12)
  store %struct.sk_buff* %29, %struct.sk_buff** %9, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %4, align 4
  br label %156

34:                                               ; preds = %21
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @skb_put(%struct.sk_buff* %35, i32 %36)
  %38 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @memcpy_from_msg(i32 %37, %struct.msghdr* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EFAULT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %152

45:                                               ; preds = %34
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = bitcast i8* %49 to %struct.hci_mon_hdr*
  store %struct.hci_mon_hdr* %50, %struct.hci_mon_hdr** %8, align 8
  %51 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %8, align 8
  %52 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__le16_to_cpu(i32 %53)
  %55 = sext i32 %54 to i64
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 %57, 12
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %45
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %12, align 4
  br label %152

63:                                               ; preds = %45
  %64 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %8, align 8
  %65 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @__le16_to_cpu(i32 %66)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %115

69:                                               ; preds = %63
  %70 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 12
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %13, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 13
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp sgt i32 %80, 7
  br i1 %81, label %111, label %82

82:                                               ; preds = %69
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %111, label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = sub i64 %96, 12
  %98 = sub i64 %97, 3
  %99 = icmp ugt i64 %94, %98
  br i1 %99, label %111, label %100

100:                                              ; preds = %92
  %101 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 12, %105
  %107 = add i64 %106, 1
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %100, %92, %82, %69
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %12, align 4
  br label %152

114:                                              ; preds = %100
  br label %118

115:                                              ; preds = %63
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %12, align 4
  br label %152

118:                                              ; preds = %114
  %119 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %8, align 8
  %120 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @__le16_to_cpu(i32 %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @MGMT_INDEX_NONE, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %118
  %127 = load i32, i32* %11, align 4
  %128 = call %struct.hci_dev* @hci_dev_get(i32 %127)
  store %struct.hci_dev* %128, %struct.hci_dev** %10, align 8
  %129 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %130 = icmp ne %struct.hci_dev* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i32, i32* @ENODEV, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %12, align 4
  br label %152

134:                                              ; preds = %126
  br label %136

135:                                              ; preds = %118
  store %struct.hci_dev* null, %struct.hci_dev** %10, align 8
  br label %136

136:                                              ; preds = %135, %134
  %137 = load i32, i32* @HCI_MON_USER_LOGGING, align 4
  %138 = call i32 @cpu_to_le16(i32 %137)
  %139 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %8, align 8
  %140 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @HCI_CHANNEL_MONITOR, align 4
  %142 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %143 = load i32, i32* @HCI_SOCK_TRUSTED, align 4
  %144 = call i32 @hci_send_to_channel(i32 %141, %struct.sk_buff* %142, i32 %143, i32* null)
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %12, align 4
  %146 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %147 = icmp ne %struct.hci_dev* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %136
  %149 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %150 = call i32 @hci_dev_put(%struct.hci_dev* %149)
  br label %151

151:                                              ; preds = %148, %136
  br label %152

152:                                              ; preds = %151, %131, %115, %111, %60, %42
  %153 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %154 = call i32 @kfree_skb(%struct.sk_buff* %153)
  %155 = load i32, i32* %12, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %152, %32, %18
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.sk_buff* @bt_skb_send_alloc(%struct.sock*, i32, i32, i32*) #1

declare dso_local i64 @memcpy_from_msg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local %struct.hci_dev* @hci_dev_get(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hci_send_to_channel(i32, %struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
