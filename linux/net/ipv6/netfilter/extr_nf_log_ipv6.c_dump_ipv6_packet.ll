; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_log_ipv6.c_dump_ipv6_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_log_ipv6.c_dump_ipv6_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nf_log_buf = type { i32 }
%struct.nf_loginfo = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.ipv6hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipv6_opt_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.frag_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ip_auth_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ip_esp_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.icmp6hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NF_LOG_TYPE_LOG = common dso_local global i64 0, align 8
@NF_LOG_DEFAULT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"TRUNCATED\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"SRC=%pI6 DST=%pI6 \00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"LEN=%zu TC=%u HOPLIMIT=%u FLOWLBL=%u \00", align 1
@NEXTHDR_NONE = common dso_local global i32 0, align 4
@NF_LOG_IPOPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"OPT ( \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"FRAG:\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"TRUNCATED \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"INCOMPLETE \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"ID:%08x \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"AH \00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"INCOMPLETE [%u bytes] )\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"SPI=0x%x \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"ESP \00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"SPI=0x%x )\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Unknown Ext Hdr %u\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"PROTO=ICMPv6 \00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"INCOMPLETE [%u bytes] \00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"TYPE=%u CODE=%u \00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"ID=%u SEQ=%u \00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"POINTER=%08x \00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"MTU=%u \00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"PROTO=%u \00", align 1
@NF_LOG_UID = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"MARK=0x%x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.nf_log_buf*, %struct.nf_loginfo*, %struct.sk_buff*, i32, i32)* @dump_ipv6_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ipv6_packet(%struct.net* %0, %struct.nf_log_buf* %1, %struct.nf_loginfo* %2, %struct.sk_buff* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.nf_log_buf*, align 8
  %9 = alloca %struct.nf_loginfo*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ipv6hdr, align 4
  %16 = alloca %struct.ipv6hdr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ipv6_opt_hdr, align 4
  %21 = alloca %struct.ipv6_opt_hdr*, align 8
  %22 = alloca %struct.frag_hdr, align 4
  %23 = alloca %struct.frag_hdr*, align 8
  %24 = alloca %struct.ip_auth_hdr, align 4
  %25 = alloca %struct.ip_auth_hdr*, align 8
  %26 = alloca %struct.ip_esp_hdr, align 4
  %27 = alloca %struct.ip_esp_hdr*, align 8
  %28 = alloca %struct.icmp6hdr, align 4
  %29 = alloca %struct.icmp6hdr*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.nf_log_buf* %1, %struct.nf_log_buf** %8, align 8
  store %struct.nf_loginfo* %2, %struct.nf_loginfo** %9, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %18, align 4
  %30 = load %struct.nf_loginfo*, %struct.nf_loginfo** %9, align 8
  %31 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NF_LOG_TYPE_LOG, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %6
  %36 = load %struct.nf_loginfo*, %struct.nf_loginfo** %9, align 8
  %37 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %19, align 4
  br label %43

41:                                               ; preds = %6
  %42 = load i32, i32* @NF_LOG_DEFAULT_MASK, align 4
  store i32 %42, i32* %19, align 4
  br label %43

43:                                               ; preds = %41, %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff* %44, i32 %45, i32 56, %struct.ipv6hdr* %15)
  store %struct.ipv6hdr* %46, %struct.ipv6hdr** %16, align 8
  %47 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %48 = icmp eq %struct.ipv6hdr* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %51 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %415

52:                                               ; preds = %43
  %53 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %54 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %55 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %54, i32 0, i32 13
  %56 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %57 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %56, i32 0, i32 12
  %58 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %55, i32* %57)
  %59 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %60 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %61 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ntohs(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, 56
  %66 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %67 = bitcast %struct.ipv6hdr* %66 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ntohl(i32 %68)
  %70 = and i32 %69, 267386880
  %71 = ashr i32 %70, 20
  %72 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %73 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %76 = bitcast %struct.ipv6hdr* %75 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ntohl(i32 %77)
  %79 = and i32 %78, 1048575
  %80 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %65, i32 %71, i32 %74, i32 %79)
  store i32 0, i32* %14, align 4
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = add i64 %82, 56
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %17, align 4
  %85 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %86 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %269, %52
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @NEXTHDR_NONE, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32, i32* %13, align 4
  %94 = call i64 @nf_ip6_ext_hdr(i32 %93)
  %95 = icmp ne i64 %94, 0
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i1 [ false, %88 ], [ %95, %92 ]
  br i1 %97, label %98, label %276

98:                                               ; preds = %96
  %99 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %100 = load i32, i32* %17, align 4
  %101 = bitcast %struct.ipv6_opt_hdr* %20 to %struct.ipv6hdr*
  %102 = call %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff* %99, i32 %100, i32 56, %struct.ipv6hdr* %101)
  %103 = bitcast %struct.ipv6hdr* %102 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %103, %struct.ipv6_opt_hdr** %21, align 8
  %104 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %21, align 8
  %105 = icmp eq %struct.ipv6_opt_hdr* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %108 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %415

109:                                              ; preds = %98
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* @NF_LOG_IPOPT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %116 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i32, i32* %13, align 4
  switch i32 %118, label %257 [
    i32 134, label %119
    i32 136, label %164
    i32 131, label %164
    i32 133, label %164
    i32 137, label %180
    i32 135, label %220
  ]

119:                                              ; preds = %117
  %120 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %121 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %122 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %123 = load i32, i32* %17, align 4
  %124 = bitcast %struct.frag_hdr* %22 to %struct.ipv6hdr*
  %125 = call %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff* %122, i32 %123, i32 56, %struct.ipv6hdr* %124)
  %126 = bitcast %struct.ipv6hdr* %125 to %struct.frag_hdr*
  store %struct.frag_hdr* %126, %struct.frag_hdr** %23, align 8
  %127 = load %struct.frag_hdr*, %struct.frag_hdr** %23, align 8
  %128 = icmp eq %struct.frag_hdr* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %119
  %130 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %131 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %415

132:                                              ; preds = %119
  %133 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %134 = load %struct.frag_hdr*, %struct.frag_hdr** %23, align 8
  %135 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ntohs(i32 %136)
  %138 = and i32 %137, 65528
  %139 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  %140 = load %struct.frag_hdr*, %struct.frag_hdr** %23, align 8
  %141 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @htons(i32 1)
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %132
  %147 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %148 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %132
  %150 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %151 = load %struct.frag_hdr*, %struct.frag_hdr** %23, align 8
  %152 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %151, i32 0, i32 10
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ntohl(i32 %153)
  %155 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %154)
  %156 = load %struct.frag_hdr*, %struct.frag_hdr** %23, align 8
  %157 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ntohs(i32 %158)
  %160 = and i32 %159, 65528
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %149
  store i32 1, i32* %14, align 4
  br label %163

163:                                              ; preds = %162, %149
  store i32 8, i32* %18, align 4
  br label %261

164:                                              ; preds = %117, %117, %117
  %165 = load i32, i32* %14, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %164
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* @NF_LOG_IPOPT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %174 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %173, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %167
  br label %415

176:                                              ; preds = %164
  %177 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %21, align 8
  %178 = bitcast %struct.ipv6_opt_hdr* %177 to %struct.ipv6hdr*
  %179 = call i32 @ipv6_optlen(%struct.ipv6hdr* %178)
  store i32 %179, i32* %18, align 4
  br label %261

180:                                              ; preds = %117
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* @NF_LOG_IPOPT, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %216

185:                                              ; preds = %180
  %186 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %187 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %188 = load i32, i32* %14, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %192 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %415

193:                                              ; preds = %185
  %194 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %195 = load i32, i32* %17, align 4
  %196 = bitcast %struct.ip_auth_hdr* %24 to %struct.ipv6hdr*
  %197 = call %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff* %194, i32 %195, i32 56, %struct.ipv6hdr* %196)
  %198 = bitcast %struct.ipv6hdr* %197 to %struct.ip_auth_hdr*
  store %struct.ip_auth_hdr* %198, %struct.ip_auth_hdr** %25, align 8
  %199 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %25, align 8
  %200 = icmp eq %struct.ip_auth_hdr* %199, null
  br i1 %200, label %201, label %209

201:                                              ; preds = %193
  %202 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %204 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %17, align 4
  %207 = sub i32 %205, %206
  %208 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %202, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %207)
  br label %415

209:                                              ; preds = %193
  %210 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %211 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %25, align 8
  %212 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %211, i32 0, i32 9
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ntohl(i32 %213)
  %215 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %210, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %209, %180
  %217 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %21, align 8
  %218 = bitcast %struct.ipv6_opt_hdr* %217 to %struct.ipv6hdr*
  %219 = call i32 @ipv6_authlen(%struct.ipv6hdr* %218)
  store i32 %219, i32* %18, align 4
  br label %261

220:                                              ; preds = %117
  %221 = load i32, i32* %19, align 4
  %222 = load i32, i32* @NF_LOG_IPOPT, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %256

225:                                              ; preds = %220
  %226 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %227 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %228 = load i32, i32* %14, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %232 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %231, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %415

233:                                              ; preds = %225
  %234 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %235 = load i32, i32* %17, align 4
  %236 = bitcast %struct.ip_esp_hdr* %26 to %struct.ipv6hdr*
  %237 = call %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff* %234, i32 %235, i32 56, %struct.ipv6hdr* %236)
  %238 = bitcast %struct.ipv6hdr* %237 to %struct.ip_esp_hdr*
  store %struct.ip_esp_hdr* %238, %struct.ip_esp_hdr** %27, align 8
  %239 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %27, align 8
  %240 = icmp eq %struct.ip_esp_hdr* %239, null
  br i1 %240, label %241, label %249

241:                                              ; preds = %233
  %242 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %243 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %244 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %17, align 4
  %247 = sub i32 %245, %246
  %248 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %242, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %247)
  br label %415

249:                                              ; preds = %233
  %250 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %251 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %27, align 8
  %252 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %251, i32 0, i32 9
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @ntohl(i32 %253)
  %255 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %250, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %254)
  br label %256

256:                                              ; preds = %249, %220
  br label %415

257:                                              ; preds = %117
  %258 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %259 = load i32, i32* %13, align 4
  %260 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %258, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %259)
  br label %415

261:                                              ; preds = %216, %176, %163
  %262 = load i32, i32* %19, align 4
  %263 = load i32, i32* @NF_LOG_IPOPT, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %261
  %267 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %268 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %267, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  br label %269

269:                                              ; preds = %266, %261
  %270 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %21, align 8
  %271 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %13, align 4
  %273 = load i32, i32* %18, align 4
  %274 = load i32, i32* %17, align 4
  %275 = add i32 %274, %273
  store i32 %275, i32* %17, align 4
  br label %88

276:                                              ; preds = %96
  %277 = load i32, i32* %13, align 4
  switch i32 %277, label %382 [
    i32 130, label %278
    i32 129, label %289
    i32 128, label %289
    i32 132, label %299
  ]

278:                                              ; preds = %276
  %279 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %280 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %281 = load i32, i32* %13, align 4
  %282 = load i32, i32* %14, align 4
  %283 = load i32, i32* %17, align 4
  %284 = load i32, i32* %19, align 4
  %285 = call i32 @nf_log_dump_tcp_header(%struct.nf_log_buf* %279, %struct.sk_buff* %280, i32 %281, i32 %282, i32 %283, i32 %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %278
  br label %415

288:                                              ; preds = %278
  br label %386

289:                                              ; preds = %276, %276
  %290 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %291 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %292 = load i32, i32* %13, align 4
  %293 = load i32, i32* %14, align 4
  %294 = load i32, i32* %17, align 4
  %295 = call i32 @nf_log_dump_udp_header(%struct.nf_log_buf* %290, %struct.sk_buff* %291, i32 %292, i32 %293, i32 %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %289
  br label %415

298:                                              ; preds = %289
  br label %386

299:                                              ; preds = %276
  %300 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %301 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %300, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %302 = load i32, i32* %14, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %299
  br label %386

305:                                              ; preds = %299
  %306 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %307 = load i32, i32* %17, align 4
  %308 = bitcast %struct.icmp6hdr* %28 to %struct.ipv6hdr*
  %309 = call %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff* %306, i32 %307, i32 56, %struct.ipv6hdr* %308)
  %310 = bitcast %struct.ipv6hdr* %309 to %struct.icmp6hdr*
  store %struct.icmp6hdr* %310, %struct.icmp6hdr** %29, align 8
  %311 = load %struct.icmp6hdr*, %struct.icmp6hdr** %29, align 8
  %312 = icmp eq %struct.icmp6hdr* %311, null
  br i1 %312, label %313, label %321

313:                                              ; preds = %305
  %314 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %315 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %316 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %17, align 4
  %319 = sub i32 %317, %318
  %320 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %314, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 %319)
  br label %415

321:                                              ; preds = %305
  %322 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %323 = load %struct.icmp6hdr*, %struct.icmp6hdr** %29, align 8
  %324 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.icmp6hdr*, %struct.icmp6hdr** %29, align 8
  %327 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %326, i32 0, i32 8
  %328 = load i32, i32* %327, align 4
  %329 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %322, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 %325, i32 %328)
  %330 = load %struct.icmp6hdr*, %struct.icmp6hdr** %29, align 8
  %331 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  switch i32 %332, label %381 [
    i32 144, label %333
    i32 145, label %333
    i32 143, label %344
    i32 141, label %344
    i32 142, label %344
    i32 140, label %345
    i32 146, label %352
    i32 139, label %352
    i32 138, label %352
  ]

333:                                              ; preds = %321, %321
  %334 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %335 = load %struct.icmp6hdr*, %struct.icmp6hdr** %29, align 8
  %336 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @ntohs(i32 %337)
  %339 = load %struct.icmp6hdr*, %struct.icmp6hdr** %29, align 8
  %340 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %339, i32 0, i32 5
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @ntohs(i32 %341)
  %343 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %334, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 %338, i32 %342)
  br label %381

344:                                              ; preds = %321, %321, %321
  br label %381

345:                                              ; preds = %321
  %346 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %347 = load %struct.icmp6hdr*, %struct.icmp6hdr** %29, align 8
  %348 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %347, i32 0, i32 7
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @ntohl(i32 %349)
  %351 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %346, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 %350)
  br label %352

352:                                              ; preds = %321, %321, %321, %345
  %353 = load i32, i32* %12, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %368

355:                                              ; preds = %352
  %356 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %357 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %356, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %358 = load %struct.net*, %struct.net** %7, align 8
  %359 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %360 = load %struct.nf_loginfo*, %struct.nf_loginfo** %9, align 8
  %361 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %362 = load i32, i32* %17, align 4
  %363 = zext i32 %362 to i64
  %364 = add i64 %363, 56
  %365 = trunc i64 %364 to i32
  call void @dump_ipv6_packet(%struct.net* %358, %struct.nf_log_buf* %359, %struct.nf_loginfo* %360, %struct.sk_buff* %361, i32 %365, i32 0)
  %366 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %367 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %366, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  br label %368

368:                                              ; preds = %355, %352
  %369 = load %struct.icmp6hdr*, %struct.icmp6hdr** %29, align 8
  %370 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 4
  %372 = icmp eq i32 %371, 139
  br i1 %372, label %373, label %380

373:                                              ; preds = %368
  %374 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %375 = load %struct.icmp6hdr*, %struct.icmp6hdr** %29, align 8
  %376 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %375, i32 0, i32 6
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @ntohl(i32 %377)
  %379 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %374, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i32 %378)
  br label %380

380:                                              ; preds = %373, %368
  br label %381

381:                                              ; preds = %380, %321, %344, %333
  br label %386

382:                                              ; preds = %276
  %383 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %384 = load i32, i32* %13, align 4
  %385 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %383, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i32 %384)
  br label %386

386:                                              ; preds = %382, %381, %304, %298, %288
  %387 = load i32, i32* %19, align 4
  %388 = load i32, i32* @NF_LOG_UID, align 4
  %389 = and i32 %387, %388
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %401

391:                                              ; preds = %386
  %392 = load i32, i32* %12, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %401

394:                                              ; preds = %391
  %395 = load %struct.net*, %struct.net** %7, align 8
  %396 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %397 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %398 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @nf_log_dump_sk_uid_gid(%struct.net* %395, %struct.nf_log_buf* %396, i32 %399)
  br label %401

401:                                              ; preds = %394, %391, %386
  %402 = load i32, i32* %12, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %415

404:                                              ; preds = %401
  %405 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %406 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %415

409:                                              ; preds = %404
  %410 = load %struct.nf_log_buf*, %struct.nf_log_buf** %8, align 8
  %411 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %412 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %410, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i32 %413)
  br label %415

415:                                              ; preds = %49, %106, %129, %175, %190, %201, %230, %241, %256, %257, %287, %297, %313, %409, %404, %401
  ret void
}

declare dso_local %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.ipv6hdr*) #1

declare dso_local i32 @nf_log_buf_add(%struct.nf_log_buf*, i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @nf_ip6_ext_hdr(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ipv6_optlen(%struct.ipv6hdr*) #1

declare dso_local i32 @ipv6_authlen(%struct.ipv6hdr*) #1

declare dso_local i32 @nf_log_dump_tcp_header(%struct.nf_log_buf*, %struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nf_log_dump_udp_header(%struct.nf_log_buf*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nf_log_dump_sk_uid_gid(%struct.net*, %struct.nf_log_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
