; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_af_can.c_can_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_af_can.c_can_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i8*, i32, %struct.TYPE_6__*, i8*, i64 }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.canfd_frame = type { i64 }
%struct.can_pkg_stats = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.can_pkg_stats* }

@EINVAL = common dso_local global i32 0, align 4
@CAN_MTU = common dso_local global i64 0, align 8
@ETH_P_CAN = common dso_local global i32 0, align 4
@CAN_MAX_DLEN = common dso_local global i64 0, align 8
@CANFD_MTU = common dso_local global i64 0, align 8
@ETH_P_CANFD = common dso_local global i32 0, align 4
@CANFD_MAX_DLEN = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@ARPHRD_CAN = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i8* null, align 8
@PACKET_LOOPBACK = common dso_local global i32 0, align 4
@IFF_ECHO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_send(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.canfd_frame*, align 8
  %8 = alloca %struct.can_pkg_stats*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.canfd_frame*
  store %struct.canfd_frame* %13, %struct.canfd_frame** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call %struct.TYPE_5__* @dev_net(%struct.TYPE_6__* %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %19, align 8
  store %struct.can_pkg_stats* %20, %struct.can_pkg_stats** %8, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CAN_MTU, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %2
  %29 = load i32, i32* @ETH_P_CAN, align 4
  %30 = call i8* @htons(i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %34 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CAN_MAX_DLEN, align 8
  %37 = icmp sgt i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %202

42:                                               ; preds = %28
  br label %66

43:                                               ; preds = %2
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CANFD_MTU, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load i32, i32* @ETH_P_CANFD, align 4
  %51 = call i8* @htons(i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %55 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CANFD_MAX_DLEN, align 8
  %58 = icmp sgt i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %202

63:                                               ; preds = %49
  br label %65

64:                                               ; preds = %43
  br label %202

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65, %42
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %69, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %78 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CAN_MAX_DLEN, align 8
  %81 = icmp sgt i64 %79, %80
  br label %82

82:                                               ; preds = %76, %66
  %83 = phi i1 [ false, %66 ], [ %81, %76 ]
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @EMSGSIZE, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %202

90:                                               ; preds = %82
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ARPHRD_CAN, align 8
  %97 = icmp ne i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = load i32, i32* @EPERM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %9, align 4
  br label %202

104:                                              ; preds = %90
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @IFF_UP, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %104
  %118 = load i32, i32* @ENETDOWN, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %9, align 4
  br label %202

120:                                              ; preds = %104
  %121 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %125 = call i32 @skb_reset_mac_header(%struct.sk_buff* %124)
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = call i32 @skb_reset_network_header(%struct.sk_buff* %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %129 = call i32 @skb_reset_transport_header(%struct.sk_buff* %128)
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %168

132:                                              ; preds = %120
  %133 = load i32, i32* @PACKET_LOOPBACK, align 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @IFF_ECHO, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %167, label %144

144:                                              ; preds = %132
  %145 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %146 = load i32, i32* @GFP_ATOMIC, align 4
  %147 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %145, i32 %146)
  store %struct.sk_buff* %147, %struct.sk_buff** %6, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %149 = icmp ne %struct.sk_buff* %148, null
  br i1 %149, label %155, label %150

150:                                              ; preds = %144
  %151 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %152 = call i32 @kfree_skb(%struct.sk_buff* %151)
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %206

155:                                              ; preds = %144
  %156 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @can_skb_set_owner(%struct.sk_buff* %156, i32 %159)
  %161 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 2
  store i8* %161, i8** %163, align 8
  %164 = load i32, i32* @PACKET_BROADCAST, align 4
  %165 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %155, %132
  br label %172

168:                                              ; preds = %120
  %169 = load i32, i32* @PACKET_HOST, align 4
  %170 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %168, %167
  %173 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %174 = call i32 @dev_queue_xmit(%struct.sk_buff* %173)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @net_xmit_errno(i32 %178)
  store i32 %179, i32* %9, align 4
  br label %180

180:                                              ; preds = %177, %172
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %185 = call i32 @kfree_skb(%struct.sk_buff* %184)
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %3, align 4
  br label %206

187:                                              ; preds = %180
  %188 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %189 = icmp ne %struct.sk_buff* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %192 = call i32 @netif_rx_ni(%struct.sk_buff* %191)
  br label %193

193:                                              ; preds = %190, %187
  %194 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %8, align 8
  %195 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 4
  %198 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %8, align 8
  %199 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 4
  store i32 0, i32* %3, align 4
  br label %206

202:                                              ; preds = %117, %101, %87, %64, %62, %41
  %203 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %204 = call i32 @kfree_skb(%struct.sk_buff* %203)
  %205 = load i32, i32* %9, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %202, %193, %183, %150
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.TYPE_5__* @dev_net(%struct.TYPE_6__*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @can_skb_set_owner(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @net_xmit_errno(i32) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
