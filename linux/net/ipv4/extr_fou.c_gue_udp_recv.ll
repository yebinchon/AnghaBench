; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fou.c_gue_udp_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fou.c_gue_udp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.fou = type { i64, i32 }
%struct.guehdr = type { i32, i32, i32, i32, i32 }
%struct.iphdr = type { i32 }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@IPPROTO_IPIP = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@GUE_FLAG_PRIV = common dso_local global i32 0, align 4
@GUE_LEN_PRIV = common dso_local global i32 0, align 4
@GUE_PFLAG_REMCSUM = common dso_local global i32 0, align 4
@FOU_F_REMCSUM_NOPARTIAL = common dso_local global i32 0, align 4
@GUE_PLEN_REMCSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @gue_udp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gue_udp_recv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.fou*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.guehdr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.fou* @fou_from_sock(%struct.sock* %16)
  store %struct.fou* %17, %struct.fou** %6, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.fou*, %struct.fou** %6, align 8
  %19 = icmp ne %struct.fou* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %204

21:                                               ; preds = %2
  store i64 24, i64* %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @pskb_may_pull(%struct.sk_buff* %22, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %201

27:                                               ; preds = %21
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32* @udp_hdr(%struct.sk_buff* %28)
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = bitcast i32* %30 to %struct.guehdr*
  store %struct.guehdr* %31, %struct.guehdr** %10, align 8
  %32 = load %struct.guehdr*, %struct.guehdr** %10, align 8
  %33 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %55 [
    i32 0, label %35
    i32 1, label %36
  ]

35:                                               ; preds = %27
  br label %56

36:                                               ; preds = %27
  %37 = load %struct.guehdr*, %struct.guehdr** %10, align 8
  %38 = bitcast %struct.guehdr* %37 to %struct.iphdr*
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %45 [
    i32 4, label %41
    i32 6, label %43
  ]

41:                                               ; preds = %36
  %42 = load i32, i32* @IPPROTO_IPIP, align 4
  store i32 %42, i32* %14, align 4
  br label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @IPPROTO_IPV6, align 4
  store i32 %44, i32* %14, align 4
  br label %46

45:                                               ; preds = %36
  br label %201

46:                                               ; preds = %43, %41
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = load %struct.fou*, %struct.fou** %6, align 8
  %49 = call i32 @fou_recv_pull(%struct.sk_buff* %47, %struct.fou* %48, i32 4)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %201

52:                                               ; preds = %46
  %53 = load i32, i32* %14, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %204

55:                                               ; preds = %27
  br label %201

56:                                               ; preds = %35
  %57 = load %struct.guehdr*, %struct.guehdr** %10, align 8
  %58 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 2
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %7, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @pskb_may_pull(%struct.sk_buff* %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %56
  br label %201

70:                                               ; preds = %56
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call i32* @udp_hdr(%struct.sk_buff* %71)
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = bitcast i32* %73 to %struct.guehdr*
  store %struct.guehdr* %74, %struct.guehdr** %10, align 8
  %75 = load %struct.guehdr*, %struct.guehdr** %10, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i64 @validate_gue_flags(%struct.guehdr* %75, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %201

80:                                               ; preds = %70
  %81 = load i64, i64* %8, align 8
  %82 = add i64 20, %81
  store i64 %82, i64* %9, align 8
  %83 = load %struct.fou*, %struct.fou** %6, align 8
  %84 = getelementptr inbounds %struct.fou, %struct.fou* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @AF_INET, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %80
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %89)
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @ntohs(i8* %92)
  %94 = load i64, i64* %7, align 8
  %95 = sub i64 %93, %94
  %96 = call i8* @htons(i64 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %97)
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i8* %96, i8** %99, align 8
  br label %112

100:                                              ; preds = %80
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %101)
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @ntohs(i8* %104)
  %106 = load i64, i64* %7, align 8
  %107 = sub i64 %105, %106
  %108 = call i8* @htons(i64 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %109)
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i8* %108, i8** %111, align 8
  br label %112

112:                                              ; preds = %100, %88
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %115 = call i32* @udp_hdr(%struct.sk_buff* %114)
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %113, i32* %115, i64 %116)
  %118 = load %struct.guehdr*, %struct.guehdr** %10, align 8
  %119 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %118, i64 1
  %120 = bitcast %struct.guehdr* %119 to i8*
  store i8* %120, i8** %11, align 8
  %121 = load %struct.guehdr*, %struct.guehdr** %10, align 8
  %122 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @GUE_FLAG_PRIV, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %173

127:                                              ; preds = %112
  %128 = load i8*, i8** %11, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr i8, i8* %128, i64 %130
  %132 = bitcast i8* %131 to i32*
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* @GUE_LEN_PRIV, align 4
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* @GUE_PFLAG_REMCSUM, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %172

141:                                              ; preds = %127
  %142 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %143 = load %struct.guehdr*, %struct.guehdr** %10, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr i8, i8* %144, i64 %146
  %148 = load i64, i64* %9, align 8
  %149 = load %struct.guehdr*, %struct.guehdr** %10, align 8
  %150 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.fou*, %struct.fou** %6, align 8
  %153 = getelementptr inbounds %struct.fou, %struct.fou* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @FOU_F_REMCSUM_NOPARTIAL, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = call %struct.guehdr* @gue_remcsum(%struct.sk_buff* %142, %struct.guehdr* %143, i8* %147, i64 %148, i32 %151, i32 %160)
  store %struct.guehdr* %161, %struct.guehdr** %10, align 8
  %162 = load %struct.guehdr*, %struct.guehdr** %10, align 8
  %163 = icmp ne %struct.guehdr* %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %141
  br label %201

165:                                              ; preds = %141
  %166 = load %struct.guehdr*, %struct.guehdr** %10, align 8
  %167 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %166, i64 1
  %168 = bitcast %struct.guehdr* %167 to i8*
  store i8* %168, i8** %11, align 8
  %169 = load i32, i32* @GUE_PLEN_REMCSUM, align 4
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %12, align 4
  br label %172

172:                                              ; preds = %165, %127
  br label %173

173:                                              ; preds = %172, %112
  %174 = load %struct.guehdr*, %struct.guehdr** %10, align 8
  %175 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @unlikely(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %173
  %180 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %181 = load %struct.guehdr*, %struct.guehdr** %10, align 8
  %182 = call i32 @gue_control_message(%struct.sk_buff* %180, %struct.guehdr* %181)
  store i32 %182, i32* %3, align 4
  br label %204

183:                                              ; preds = %173
  %184 = load %struct.guehdr*, %struct.guehdr** %10, align 8
  %185 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %13, align 4
  %187 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %188 = load i64, i64* %9, align 8
  %189 = add i64 4, %188
  %190 = trunc i64 %189 to i32
  %191 = call i32 @__skb_pull(%struct.sk_buff* %187, i32 %190)
  %192 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %193 = call i32 @skb_reset_transport_header(%struct.sk_buff* %192)
  %194 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %195 = call i64 @iptunnel_pull_offloads(%struct.sk_buff* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %183
  br label %201

198:                                              ; preds = %183
  %199 = load i32, i32* %13, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %3, align 4
  br label %204

201:                                              ; preds = %197, %164, %79, %69, %55, %51, %45, %26
  %202 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %203 = call i32 @kfree_skb(%struct.sk_buff* %202)
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %201, %198, %179, %52, %20
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local %struct.fou* @fou_from_sock(%struct.sock*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i32* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @fou_recv_pull(%struct.sk_buff*, %struct.fou*, i32) #1

declare dso_local i64 @validate_gue_flags(%struct.guehdr*, i64) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i64 @ntohs(i8*) #1

declare dso_local %struct.TYPE_4__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_postpull_rcsum(%struct.sk_buff*, i32*, i64) #1

declare dso_local %struct.guehdr* @gue_remcsum(%struct.sk_buff*, %struct.guehdr*, i8*, i64, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gue_control_message(%struct.sk_buff*, %struct.guehdr*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @iptunnel_pull_offloads(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
