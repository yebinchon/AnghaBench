; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_rx.c_ieee802154_subif_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_rx.c_ieee802154_subif_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_sub_if_data = type { %struct.TYPE_7__*, i32, %struct.wpan_dev }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.wpan_dev = type { i32, i32, i32 }
%struct.sk_buff = type { i64, %struct.TYPE_7__*, i8* }
%struct.ieee802154_hdr = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"getting packet via slave interface %s\0A\00", align 1
@PACKET_OTHERHOST = common dso_local global i8* null, align 8
@PACKET_HOST = common dso_local global i8* null, align 8
@IEEE802154_PANID_BROADCAST = common dso_local global i32 0, align 4
@IEEE802154_ADDR_BROADCAST = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid dest mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"decryption failed: %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"ieee802154: bad frame received (type = %d)\0A\00", align 1
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_sub_if_data*, %struct.sk_buff*, %struct.ieee802154_hdr*)* @ieee802154_subif_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_subif_frame(%struct.ieee802154_sub_if_data* %0, %struct.sk_buff* %1, %struct.ieee802154_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee802154_sub_if_data*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee802154_hdr*, align 8
  %8 = alloca %struct.wpan_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee802154_sub_if_data* %0, %struct.ieee802154_sub_if_data** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ieee802154_hdr* %2, %struct.ieee802154_hdr** %7, align 8
  %12 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %5, align 8
  %13 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %12, i32 0, i32 2
  store %struct.wpan_dev* %13, %struct.wpan_dev** %8, align 8
  %14 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %5, align 8
  %15 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.wpan_dev*, %struct.wpan_dev** %8, align 8
  %21 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.wpan_dev*, %struct.wpan_dev** %8, align 8
  %24 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call %struct.TYPE_8__* @mac_cb(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %141 [
    i32 133, label %31
    i32 134, label %47
    i32 132, label %88
  ]

31:                                               ; preds = %3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call %struct.TYPE_8__* @mac_cb(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 133
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i8*, i8** @PACKET_OTHERHOST, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  br label %46

42:                                               ; preds = %31
  %43 = load i8*, i8** @PACKET_HOST, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %42, %38
  br label %143

47:                                               ; preds = %3
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call %struct.TYPE_8__* @mac_cb(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %47
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call %struct.TYPE_8__* @mac_cb(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IEEE802154_PANID_BROADCAST, align 4
  %62 = call i32 @cpu_to_le16(i32 %61)
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i8*, i8** @PACKET_OTHERHOST, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  br label %87

68:                                               ; preds = %55, %47
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call %struct.TYPE_8__* @mac_cb(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.wpan_dev*, %struct.wpan_dev** %8, align 8
  %75 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %68
  %79 = load i8*, i8** @PACKET_HOST, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  br label %86

82:                                               ; preds = %68
  %83 = load i8*, i8** @PACKET_OTHERHOST, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %64
  br label %143

88:                                               ; preds = %3
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = call %struct.TYPE_8__* @mac_cb(%struct.sk_buff* %89)
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %88
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = call %struct.TYPE_8__* @mac_cb(%struct.sk_buff* %97)
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IEEE802154_PANID_BROADCAST, align 4
  %103 = call i32 @cpu_to_le16(i32 %102)
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i8*, i8** @PACKET_OTHERHOST, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  br label %140

109:                                              ; preds = %96, %88
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = call %struct.TYPE_8__* @mac_cb(%struct.sk_buff* %110)
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load i8*, i8** @PACKET_HOST, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  br label %139

121:                                              ; preds = %109
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = call %struct.TYPE_8__* @mac_cb(%struct.sk_buff* %122)
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IEEE802154_ADDR_BROADCAST, align 4
  %128 = call i32 @cpu_to_le16(i32 %127)
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = load i8*, i8** @PACKET_BROADCAST, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  br label %138

134:                                              ; preds = %121
  %135 = load i8*, i8** @PACKET_OTHERHOST, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %134, %130
  br label %139

139:                                              ; preds = %138, %117
  br label %140

140:                                              ; preds = %139, %105
  br label %143

141:                                              ; preds = %3
  %142 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %192

143:                                              ; preds = %140, %87, %46
  %144 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %5, align 8
  %145 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %144, i32 0, i32 0
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 1
  store %struct.TYPE_7__* %146, %struct.TYPE_7__** %148, align 8
  %149 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %5, align 8
  %150 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %149, i32 0, i32 1
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = call i32 @mac802154_llsec_decrypt(i32* %150, %struct.sk_buff* %151)
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %143
  %156 = load i32, i32* %11, align 4
  %157 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  br label %192

158:                                              ; preds = %143
  %159 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %5, align 8
  %160 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %5, align 8
  %170 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %169, i32 0, i32 0
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %168
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %173, align 4
  %178 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %179 = call %struct.TYPE_8__* @mac_cb(%struct.sk_buff* %178)
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  switch i32 %181, label %186 [
    i32 130, label %182
    i32 131, label %182
    i32 128, label %182
    i32 129, label %183
  ]

182:                                              ; preds = %158, %158, %158
  br label %192

183:                                              ; preds = %158
  %184 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %185 = call i32 @ieee802154_deliver_skb(%struct.sk_buff* %184)
  store i32 %185, i32* %4, align 4
  br label %196

186:                                              ; preds = %158
  %187 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %188 = call %struct.TYPE_8__* @mac_cb(%struct.sk_buff* %187)
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %186, %182, %155, %141
  %193 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %194 = call i32 @kfree_skb(%struct.sk_buff* %193)
  %195 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %192, %183
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.TYPE_8__* @mac_cb(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @mac802154_llsec_decrypt(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ieee802154_deliver_skb(%struct.sk_buff*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
