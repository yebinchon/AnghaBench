; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_nf_nat_icmp_reply_translation.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_nf_nat_icmp_reply_translation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i64 }
%struct.nf_conn = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.anon = type { %struct.icmphdr, %struct.iphdr }
%struct.icmphdr = type { i64, i64 }
%struct.iphdr = type { i32 }

@IP_CT_RELATED = common dso_local global i32 0, align 4
@IP_CT_RELATED_REPLY = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i32 0, align 4
@ICMP_REDIRECT = common dso_local global i64 0, align 8
@IPS_NAT_DONE_MASK = common dso_local global i32 0, align 4
@IPS_NAT_MASK = common dso_local global i32 0, align 4
@NF_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@IPS_SRC_NAT = common dso_local global i64 0, align 8
@IPS_DST_NAT = common dso_local global i64 0, align 8
@IP_CT_DIR_REPLY = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_icmp_reply_translation(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.anon*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nf_conntrack_tuple, align 4
  %15 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @CTINFO2DIR(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @HOOK2MANIP(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i32 @ip_hdrlen(%struct.sk_buff* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @IP_CT_RELATED, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @IP_CT_RELATED_REPLY, align 4
  %28 = icmp ne i32 %26, %27
  br label %29

29:                                               ; preds = %25, %4
  %30 = phi i1 [ false, %4 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load i32, i32* %13, align 4
  %35 = zext i32 %34 to i64
  %36 = add i64 %35, 24
  %37 = trunc i64 %36 to i32
  %38 = call i64 @skb_ensure_writable(%struct.sk_buff* %33, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %183

41:                                               ; preds = %29
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @IPPROTO_ICMP, align 4
  %46 = call i64 @nf_ip_checksum(%struct.sk_buff* %42, i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %183

49:                                               ; preds = %41
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load i32, i32* %13, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr i8, i8* %53, i64 %55
  %57 = bitcast i8* %56 to %struct.anon*
  store %struct.anon* %57, %struct.anon** %10, align 8
  %58 = load %struct.anon*, %struct.anon** %10, align 8
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ICMP_REDIRECT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %49
  %65 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %66 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IPS_NAT_DONE_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @IPS_NAT_DONE_MASK, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %183

73:                                               ; preds = %64
  %74 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %75 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IPS_NAT_MASK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %183

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %49
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @NF_NAT_MANIP_SRC, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i64, i64* @IPS_SRC_NAT, align 8
  store i64 %87, i64* %15, align 8
  br label %90

88:                                               ; preds = %82
  %89 = load i64, i64* @IPS_DST_NAT, align 8
  store i64 %89, i64* %15, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i32, i32* @IPS_NAT_MASK, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %15, align 8
  %98 = xor i64 %97, %96
  store i64 %98, i64* %15, align 8
  br label %99

99:                                               ; preds = %94, %90
  %100 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %101 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %15, align 8
  %105 = and i64 %103, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %99
  store i32 1, i32* %5, align 4
  br label %183

108:                                              ; preds = %99
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = add i64 %111, 16
  %113 = trunc i64 %112 to i32
  %114 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %115 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %114, i32 0, i32 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i32 @nf_nat_ipv4_manip_pkt(%struct.sk_buff* %109, i32 %113, %struct.nf_conntrack_tuple* %123, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %108
  store i32 0, i32* %5, align 4
  br label %183

131:                                              ; preds = %108
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %162

137:                                              ; preds = %131
  %138 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = load i32, i32* %13, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr i8, i8* %141, i64 %143
  %145 = bitcast i8* %144 to %struct.anon*
  store %struct.anon* %145, %struct.anon** %10, align 8
  %146 = load %struct.anon*, %struct.anon** %10, align 8
  %147 = getelementptr inbounds %struct.anon, %struct.anon* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %147, i32 0, i32 1
  store i64 0, i64* %148, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = zext i32 %154 to i64
  %156 = sub nsw i64 %153, %155
  %157 = call i32 @skb_checksum(%struct.sk_buff* %149, i32 %150, i64 %156, i32 0)
  %158 = call i64 @csum_fold(i32 %157)
  %159 = load %struct.anon*, %struct.anon** %10, align 8
  %160 = getelementptr inbounds %struct.anon, %struct.anon* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %160, i32 0, i32 1
  store i64 %158, i64* %161, align 8
  br label %162

162:                                              ; preds = %137, %131
  %163 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %164 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %163, i32 0, i32 1
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = call i32 @nf_ct_invert_tuple(%struct.nf_conntrack_tuple* %14, %struct.nf_conntrack_tuple* %172)
  %174 = load i32, i32* @IPPROTO_ICMP, align 4
  %175 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %14, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 4
  %177 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @nf_nat_ipv4_manip_pkt(%struct.sk_buff* %177, i32 0, %struct.nf_conntrack_tuple* %14, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %162
  store i32 0, i32* %5, align 4
  br label %183

182:                                              ; preds = %162
  store i32 1, i32* %5, align 4
  br label %183

183:                                              ; preds = %182, %181, %130, %107, %80, %72, %48, %40
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @HOOK2MANIP(i32) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @nf_ip_checksum(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nf_nat_ipv4_manip_pkt(%struct.sk_buff*, i32, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i64 @csum_fold(i32) #1

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @nf_ct_invert_tuple(%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
