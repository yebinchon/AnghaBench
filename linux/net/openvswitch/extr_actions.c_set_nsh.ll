; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_set_nsh.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_set_nsh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, i8* }
%struct.nlattr = type { i32 }
%struct.nshhdr = type { i8*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8** }
%struct.ovs_key_nsh = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@NSH_BASE_HDR_LEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@NSH_MD1_CONTEXT_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sw_flow_key*, %struct.nlattr*)* @set_nsh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_nsh(%struct.sk_buff* %0, %struct.sw_flow_key* %1, %struct.nlattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sw_flow_key*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nshhdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ovs_key_nsh, align 8
  %15 = alloca %struct.ovs_key_nsh, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %6, align 8
  store %struct.nlattr* %2, %struct.nlattr** %7, align 8
  %16 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %17 = call i32 @nsh_key_from_nlattr(%struct.nlattr* %16, %struct.ovs_key_nsh* %14, %struct.ovs_key_nsh* %15)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %173

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i64 @skb_network_offset(%struct.sk_buff* %24)
  %26 = load i64, i64* @NSH_BASE_HDR_LEN, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @pskb_may_pull(%struct.sk_buff* %23, i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %173

33:                                               ; preds = %22
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call %struct.nshhdr* @nsh_hdr(%struct.sk_buff* %34)
  store %struct.nshhdr* %35, %struct.nshhdr** %8, align 8
  %36 = load %struct.nshhdr*, %struct.nshhdr** %8, align 8
  %37 = call i64 @nsh_hdr_len(%struct.nshhdr* %36)
  store i64 %37, i64* %9, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i64 @skb_network_offset(%struct.sk_buff* %39)
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %40, %41
  %43 = call i32 @skb_ensure_writable(%struct.sk_buff* %38, i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %173

49:                                               ; preds = %33
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call %struct.nshhdr* @nsh_hdr(%struct.sk_buff* %50)
  store %struct.nshhdr* %51, %struct.nshhdr** %8, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load %struct.nshhdr*, %struct.nshhdr** %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %52, %struct.nshhdr* %53, i64 %54)
  %56 = load %struct.nshhdr*, %struct.nshhdr** %8, align 8
  %57 = call i8* @nsh_get_flags(%struct.nshhdr* %56)
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds %struct.ovs_key_nsh, %struct.ovs_key_nsh* %14, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.ovs_key_nsh, %struct.ovs_key_nsh* %15, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @OVS_MASKED(i8* %58, i32 %61, i32 %64)
  store i8* %65, i8** %11, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %68 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  store i8* %66, i8** %70, align 8
  %71 = load %struct.nshhdr*, %struct.nshhdr** %8, align 8
  %72 = call i8* @nsh_get_ttl(%struct.nshhdr* %71)
  store i8* %72, i8** %12, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds %struct.ovs_key_nsh, %struct.ovs_key_nsh* %14, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.ovs_key_nsh, %struct.ovs_key_nsh* %15, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @OVS_MASKED(i8* %73, i32 %76, i32 %79)
  store i8* %80, i8** %12, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %83 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i8* %81, i8** %85, align 8
  %86 = load %struct.nshhdr*, %struct.nshhdr** %8, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 @nsh_set_flags_and_ttl(%struct.nshhdr* %86, i8* %87, i8* %88)
  %90 = load %struct.nshhdr*, %struct.nshhdr** %8, align 8
  %91 = getelementptr inbounds %struct.nshhdr, %struct.nshhdr* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds %struct.ovs_key_nsh, %struct.ovs_key_nsh* %14, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.ovs_key_nsh, %struct.ovs_key_nsh* %15, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @OVS_MASKED(i8* %92, i32 %95, i32 %98)
  %100 = load %struct.nshhdr*, %struct.nshhdr** %8, align 8
  %101 = getelementptr inbounds %struct.nshhdr, %struct.nshhdr* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load %struct.nshhdr*, %struct.nshhdr** %8, align 8
  %103 = getelementptr inbounds %struct.nshhdr, %struct.nshhdr* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %106 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i8* %104, i8** %108, align 8
  %109 = load %struct.nshhdr*, %struct.nshhdr** %8, align 8
  %110 = getelementptr inbounds %struct.nshhdr, %struct.nshhdr* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %165 [
    i32 129, label %112
    i32 128, label %159
  ]

112:                                              ; preds = %49
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %146, %112
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @NSH_MD1_CONTEXT_SIZE, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %149

117:                                              ; preds = %113
  %118 = load %struct.nshhdr*, %struct.nshhdr** %8, align 8
  %119 = getelementptr inbounds %struct.nshhdr, %struct.nshhdr* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i8**, i8*** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds %struct.ovs_key_nsh, %struct.ovs_key_nsh* %14, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.ovs_key_nsh, %struct.ovs_key_nsh* %15, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @OVS_MASKED(i8* %125, i32 %131, i32 %137)
  %139 = load %struct.nshhdr*, %struct.nshhdr** %8, align 8
  %140 = getelementptr inbounds %struct.nshhdr, %struct.nshhdr* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i8**, i8*** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  store i8* %138, i8** %145, align 8
  br label %146

146:                                              ; preds = %117
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %113

149:                                              ; preds = %113
  %150 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %151 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.nshhdr*, %struct.nshhdr** %8, align 8
  %155 = getelementptr inbounds %struct.nshhdr, %struct.nshhdr* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i8**, i8*** %156, align 8
  %158 = call i32 @memcpy(i32 %153, i8** %157, i32 8)
  br label %168

159:                                              ; preds = %49
  %160 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %161 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @memset(i32 %163, i32 0, i32 4)
  br label %168

165:                                              ; preds = %49
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %4, align 4
  br label %173

168:                                              ; preds = %159, %149
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = load %struct.nshhdr*, %struct.nshhdr** %8, align 8
  %171 = load i64, i64* %9, align 8
  %172 = call i32 @skb_postpush_rcsum(%struct.sk_buff* %169, %struct.nshhdr* %170, i64 %171)
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %168, %165, %47, %30, %20
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @nsh_key_from_nlattr(%struct.nlattr*, %struct.ovs_key_nsh*, %struct.ovs_key_nsh*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local %struct.nshhdr* @nsh_hdr(%struct.sk_buff*) #1

declare dso_local i64 @nsh_hdr_len(%struct.nshhdr*) #1

declare dso_local i32 @skb_ensure_writable(%struct.sk_buff*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_postpull_rcsum(%struct.sk_buff*, %struct.nshhdr*, i64) #1

declare dso_local i8* @nsh_get_flags(%struct.nshhdr*) #1

declare dso_local i8* @OVS_MASKED(i8*, i32, i32) #1

declare dso_local i8* @nsh_get_ttl(%struct.nshhdr*) #1

declare dso_local i32 @nsh_set_flags_and_ttl(%struct.nshhdr*, i8*, i8*) #1

declare dso_local i32 @memcpy(i32, i8**, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @skb_postpush_rcsum(%struct.sk_buff*, %struct.nshhdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
