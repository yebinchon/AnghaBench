; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_udp_recv_core.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_udp_recv_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_tunnel = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i8* }
%struct.l2tp_session = type { i32 }

@L2TP_HDR_SIZE_MAX = common dso_local global i32 0, align 4
@L2TP_MSG_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: recv short packet (len=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s: recv\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@L2TP_HDR_VER_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"%s: recv protocol version mismatch: got %d expected %d\0A\00", align 1
@L2TP_HDRFLAG_T = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"%s: recv control packet, len=%d\0A\00", align 1
@L2TP_HDR_VER_2 = common dso_local global i32 0, align 4
@L2TP_HDRFLAG_L = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"%s: no session found (%u/%u). Passing up.\0A\00", align 1
@L2TP_HDR_VER_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2tp_tunnel*, %struct.sk_buff*)* @l2tp_udp_recv_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_udp_recv_core(%struct.l2tp_tunnel* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2tp_tunnel*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.l2tp_session*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.l2tp_tunnel* %0, %struct.l2tp_tunnel** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.l2tp_session* null, %struct.l2tp_session** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @__skb_pull(%struct.sk_buff* %14, i32 4)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load i32, i32* @L2TP_HDR_SIZE_MAX, align 4
  %18 = call i32 @pskb_may_pull(%struct.sk_buff* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %22 = load i32, i32* @L2TP_MSG_DATA, align 4
  %23 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %24 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (%struct.l2tp_tunnel*, i32, i8*, i32, i32, ...) @l2tp_info(%struct.l2tp_tunnel* %21, i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  br label %190

30:                                               ; preds = %2
  %31 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %32 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @L2TP_MSG_DATA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @min(i32 32, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @pskb_may_pull(%struct.sk_buff* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  br label %190

47:                                               ; preds = %37
  %48 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %49 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %52, i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %47, %30
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %7, align 8
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ntohs(i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @L2TP_HDR_VER_MASK, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %71 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %58
  %75 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %76 = load i32, i32* @L2TP_MSG_DATA, align 4
  %77 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %78 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %82 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (%struct.l2tp_tunnel*, i32, i8*, i32, i32, ...) @l2tp_info(%struct.l2tp_tunnel* %75, i32 %76, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %80, i32 %83)
  br label %190

85:                                               ; preds = %58
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @L2TP_HDRFLAG_T, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %85
  %94 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %95 = load i32, i32* @L2TP_MSG_DATA, align 4
  %96 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %97 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @l2tp_dbg(%struct.l2tp_tunnel* %94, i32 %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %98, i32 %99)
  br label %190

101:                                              ; preds = %85
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  store i8* %103, i8** %7, align 8
  %104 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %105 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @L2TP_HDR_VER_2, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %101
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @L2TP_HDRFLAG_L, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 2
  store i8* %116, i8** %7, align 8
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i8*, i8** %7, align 8
  %119 = bitcast i8* %118 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ntohs(i32 %120)
  store i32 %121, i32* %10, align 4
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 2
  store i8* %123, i8** %7, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = bitcast i8* %124 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ntohs(i32 %126)
  store i32 %127, i32* %11, align 4
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  store i8* %129, i8** %7, align 8
  br label %142

130:                                              ; preds = %101
  %131 = load i8*, i8** %7, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  store i8* %132, i8** %7, align 8
  %133 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %134 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %10, align 4
  %136 = load i8*, i8** %7, align 8
  %137 = bitcast i8* %136 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ntohl(i32 %138)
  store i32 %139, i32* %11, align 4
  %140 = load i8*, i8** %7, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 4
  store i8* %141, i8** %7, align 8
  br label %142

142:                                              ; preds = %130, %117
  %143 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call %struct.l2tp_session* @l2tp_tunnel_get_session(%struct.l2tp_tunnel* %143, i32 %144)
  store %struct.l2tp_session* %145, %struct.l2tp_session** %6, align 8
  %146 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %147 = icmp ne %struct.l2tp_session* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %142
  %149 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %150 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %168, label %153

153:                                              ; preds = %148, %142
  %154 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %155 = icmp ne %struct.l2tp_session* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %158 = call i32 @l2tp_session_dec_refcount(%struct.l2tp_session* %157)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %161 = load i32, i32* @L2TP_MSG_DATA, align 4
  %162 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %163 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %11, align 4
  %167 = call i32 (%struct.l2tp_tunnel*, i32, i8*, i32, i32, ...) @l2tp_info(%struct.l2tp_tunnel* %160, i32 %161, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %164, i32 %165, i32 %166)
  br label %190

168:                                              ; preds = %148
  %169 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %170 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @L2TP_HDR_VER_3, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %168
  %175 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %177 = call i64 @l2tp_v3_ensure_opt_in_linear(%struct.l2tp_session* %175, %struct.sk_buff* %176, i8** %7, i8** %8)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %190

180:                                              ; preds = %174, %168
  %181 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %183 = load i8*, i8** %7, align 8
  %184 = load i8*, i8** %8, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @l2tp_recv_common(%struct.l2tp_session* %181, %struct.sk_buff* %182, i8* %183, i8* %184, i32 %185, i32 %186)
  %188 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %189 = call i32 @l2tp_session_dec_refcount(%struct.l2tp_session* %188)
  store i32 0, i32* %3, align 4
  br label %193

190:                                              ; preds = %179, %159, %93, %74, %46, %20
  %191 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %192 = call i32 @__skb_push(%struct.sk_buff* %191, i32 4)
  store i32 1, i32* %3, align 4
  br label %193

193:                                              ; preds = %190, %180
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @l2tp_info(%struct.l2tp_tunnel*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @l2tp_dbg(%struct.l2tp_tunnel*, i32, i8*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.l2tp_session* @l2tp_tunnel_get_session(%struct.l2tp_tunnel*, i32) #1

declare dso_local i32 @l2tp_session_dec_refcount(%struct.l2tp_session*) #1

declare dso_local i64 @l2tp_v3_ensure_opt_in_linear(%struct.l2tp_session*, %struct.sk_buff*, i8**, i8**) #1

declare dso_local i32 @l2tp_recv_common(%struct.l2tp_session*, %struct.sk_buff*, i8*, i8*, i32, i32) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
