; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sane.c_help.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sane.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nf_ct_sane_master = type { i64 }
%struct.nf_conntrack_expect = type { i32 }
%struct.sane_request = type { i64 }
%struct.sane_reply_net_start = type { i64, i64, i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@IP_CT_ESTABLISHED = common dso_local global i32 0, align 4
@IP_CT_ESTABLISHED_REPLY = common dso_local global i32 0, align 4
@nf_sane_lock = common dso_local global i32 0, align 4
@sane_buffer = common dso_local global %struct.tcphdr* null, align 8
@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@SANE_NET_START = common dso_local global i32 0, align 4
@SANE_STATE_NORMAL = common dso_local global i8* null, align 8
@SANE_STATE_START_REQUESTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"NET_START reply too short\0A\00", align 1
@SANE_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unsuccessful SANE_STATUS = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"cannot alloc expectation\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@NF_CT_EXPECT_CLASS_DEFAULT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"expect: \00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"cannot add expectation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conn*, i32)* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help(%struct.sk_buff* %0, i32 %1, %struct.nf_conn* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcphdr*, align 8
  %13 = alloca %struct.tcphdr, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nf_ct_sane_master*, align 8
  %18 = alloca %struct.nf_conntrack_expect*, align 8
  %19 = alloca %struct.nf_conntrack_tuple*, align 8
  %20 = alloca %struct.sane_request*, align 8
  %21 = alloca %struct.sane_reply_net_start*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_conn* %2, %struct.nf_conn** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @CTINFO2DIR(i32 %23)
  store i32 %24, i32* %16, align 4
  %25 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %26 = call %struct.nf_ct_sane_master* @nfct_help_data(%struct.nf_conn* %25)
  store %struct.nf_ct_sane_master* %26, %struct.nf_ct_sane_master** %17, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @IP_CT_ESTABLISHED, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @IP_CT_ESTABLISHED_REPLY, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %35, i32* %5, align 4
  br label %189

36:                                               ; preds = %30, %4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i8* @skb_header_pointer(%struct.sk_buff* %37, i32 %38, i32 4, %struct.tcphdr* %13)
  %40 = bitcast i8* %39 to %struct.tcphdr*
  store %struct.tcphdr* %40, %struct.tcphdr** %12, align 8
  %41 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %42 = icmp eq %struct.tcphdr* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %44, i32* %5, align 4
  br label %189

45:                                               ; preds = %36
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %48 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 4
  %51 = add i32 %46, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp uge i32 %52, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %58, i32* %5, align 4
  br label %189

59:                                               ; preds = %45
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sub i32 %62, %63
  store i32 %64, i32* %11, align 4
  %65 = call i32 @spin_lock_bh(i32* @nf_sane_lock)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.tcphdr*, %struct.tcphdr** @sane_buffer, align 8
  %70 = call i8* @skb_header_pointer(%struct.sk_buff* %66, i32 %67, i32 %68, %struct.tcphdr* %69)
  store i8* %70, i8** %14, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = icmp eq i8* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @BUG_ON(i32 %73)
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %59
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = icmp ne i64 %80, 8
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %186

83:                                               ; preds = %78
  %84 = load i8*, i8** %14, align 8
  %85 = bitcast i8* %84 to %struct.sane_request*
  store %struct.sane_request* %85, %struct.sane_request** %20, align 8
  %86 = load %struct.sane_request*, %struct.sane_request** %20, align 8
  %87 = getelementptr inbounds %struct.sane_request, %struct.sane_request* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @SANE_NET_START, align 4
  %90 = call i64 @htonl(i32 %89)
  %91 = icmp ne i64 %88, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = load i8*, i8** @SANE_STATE_NORMAL, align 8
  %94 = ptrtoint i8* %93 to i64
  %95 = load %struct.nf_ct_sane_master*, %struct.nf_ct_sane_master** %17, align 8
  %96 = getelementptr inbounds %struct.nf_ct_sane_master, %struct.nf_ct_sane_master* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %186

97:                                               ; preds = %83
  %98 = load i64, i64* @SANE_STATE_START_REQUESTED, align 8
  %99 = load %struct.nf_ct_sane_master*, %struct.nf_ct_sane_master** %17, align 8
  %100 = getelementptr inbounds %struct.nf_ct_sane_master, %struct.nf_ct_sane_master* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %186

101:                                              ; preds = %59
  %102 = load %struct.nf_ct_sane_master*, %struct.nf_ct_sane_master** %17, align 8
  %103 = getelementptr inbounds %struct.nf_ct_sane_master, %struct.nf_ct_sane_master* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SANE_STATE_START_REQUESTED, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %186

108:                                              ; preds = %101
  %109 = load i8*, i8** @SANE_STATE_NORMAL, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = load %struct.nf_ct_sane_master*, %struct.nf_ct_sane_master** %17, align 8
  %112 = getelementptr inbounds %struct.nf_ct_sane_master, %struct.nf_ct_sane_master* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* %11, align 4
  %114 = zext i32 %113 to i64
  %115 = icmp ult i64 %114, 24
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %186

118:                                              ; preds = %108
  %119 = load i8*, i8** %14, align 8
  %120 = bitcast i8* %119 to %struct.sane_reply_net_start*
  store %struct.sane_reply_net_start* %120, %struct.sane_reply_net_start** %21, align 8
  %121 = load %struct.sane_reply_net_start*, %struct.sane_reply_net_start** %21, align 8
  %122 = getelementptr inbounds %struct.sane_reply_net_start, %struct.sane_reply_net_start* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @SANE_STATUS_SUCCESS, align 4
  %125 = call i64 @htonl(i32 %124)
  %126 = icmp ne i64 %123, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %118
  %128 = load %struct.sane_reply_net_start*, %struct.sane_reply_net_start** %21, align 8
  %129 = getelementptr inbounds %struct.sane_reply_net_start, %struct.sane_reply_net_start* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @ntohl(i64 %130)
  %132 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  br label %186

133:                                              ; preds = %118
  %134 = load %struct.sane_reply_net_start*, %struct.sane_reply_net_start** %21, align 8
  %135 = getelementptr inbounds %struct.sane_reply_net_start, %struct.sane_reply_net_start* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %186

139:                                              ; preds = %133
  %140 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %141 = call %struct.nf_conntrack_expect* @nf_ct_expect_alloc(%struct.nf_conn* %140)
  store %struct.nf_conntrack_expect* %141, %struct.nf_conntrack_expect** %18, align 8
  %142 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %143 = icmp eq %struct.nf_conntrack_expect* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %146 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %147 = call i32 @nf_ct_helper_log(%struct.sk_buff* %145, %struct.nf_conn* %146, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %148 = load i32, i32* @NF_DROP, align 4
  store i32 %148, i32* %15, align 4
  br label %186

149:                                              ; preds = %139
  %150 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %151 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %150, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  store %struct.nf_conntrack_tuple* %156, %struct.nf_conntrack_tuple** %19, align 8
  %157 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %158 = load i32, i32* @NF_CT_EXPECT_CLASS_DEFAULT, align 4
  %159 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %160 = call i32 @nf_ct_l3num(%struct.nf_conn* %159)
  %161 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %19, align 8
  %162 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %19, align 8
  %165 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* @IPPROTO_TCP, align 4
  %168 = load %struct.sane_reply_net_start*, %struct.sane_reply_net_start** %21, align 8
  %169 = getelementptr inbounds %struct.sane_reply_net_start, %struct.sane_reply_net_start* %168, i32 0, i32 2
  %170 = call i32 @nf_ct_expect_init(%struct.nf_conntrack_expect* %157, i32 %158, i32 %160, i32* %163, i32* %166, i32 %167, i32* null, i32* %169)
  %171 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %172 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %173 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %172, i32 0, i32 0
  %174 = call i32 @nf_ct_dump_tuple(i32* %173)
  %175 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %176 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %175, i32 0)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %149
  %179 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %180 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %181 = call i32 @nf_ct_helper_log(%struct.sk_buff* %179, %struct.nf_conn* %180, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %182 = load i32, i32* @NF_DROP, align 4
  store i32 %182, i32* %15, align 4
  br label %183

183:                                              ; preds = %178, %149
  %184 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %185 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %184)
  br label %186

186:                                              ; preds = %183, %144, %138, %127, %116, %107, %97, %92, %82
  %187 = call i32 @spin_unlock_bh(i32* @nf_sane_lock)
  %188 = load i32, i32* %15, align 4
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %186, %57, %43, %34
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local %struct.nf_ct_sane_master* @nfct_help_data(%struct.nf_conn*) #1

declare dso_local i8* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local %struct.nf_conntrack_expect* @nf_ct_expect_alloc(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_helper_log(%struct.sk_buff*, %struct.nf_conn*, i8*) #1

declare dso_local i32 @nf_ct_expect_init(%struct.nf_conntrack_expect*, i32, i32, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_dump_tuple(i32*) #1

declare dso_local i64 @nf_ct_expect_related(%struct.nf_conntrack_expect*, i32) #1

declare dso_local i32 @nf_ct_expect_put(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
