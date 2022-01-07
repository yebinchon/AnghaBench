; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_do_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_do_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 (%struct.sock*)*, i32 (%struct.sock*)*, %struct.sk_buff_head, i32, i32 (%struct.sock*)* }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32* }
%struct.pep_sock = type { i32, i32, i32, i32, i32, %struct.sk_buff_head }
%struct.pnpipehdr = type { i32, i32 }

@TCP_CLOSE_WAIT = common dso_local global i64 0, align 8
@PN_PIPE_ERR_PEP_IN_USE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PN_PIPE_NO_ERROR = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PNPIPE_CTRLREQ_MAX = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@TCP_SYN_RECV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Phonet unknown PEP message: %u\0A\00", align 1
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @pipe_do_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_do_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pep_sock*, align 8
  %7 = alloca %struct.pnpipehdr*, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.pep_sock* @pep_sk(%struct.sock* %10)
  store %struct.pep_sock* %11, %struct.pep_sock** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff* %12)
  store %struct.pnpipehdr* %13, %struct.pnpipehdr** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TCP_CLOSE_WAIT, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %22 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %192 [
    i32 143, label %24
    i32 140, label %30
    i32 139, label %50
    i32 138, label %56
    i32 141, label %70
    i32 142, label %79
    i32 136, label %94
    i32 134, label %97
    i32 137, label %134
    i32 131, label %138
    i32 135, label %142
    i32 130, label %150
    i32 132, label %157
    i32 133, label %186
  ]

24:                                               ; preds = %2
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load i32, i32* @PN_PIPE_ERR_PEP_IN_USE, align 4
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call i32 @pep_reject_conn(%struct.sock* %25, %struct.sk_buff* %26, i32 %27, i32 %28)
  br label %199

30:                                               ; preds = %2
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load i32, i32* @PN_PIPE_NO_ERROR, align 4
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call i32 @pep_reply(%struct.sock* %31, %struct.sk_buff* %32, i32 %33, i32* null, i32 0, i32 %34)
  %36 = load i64, i64* @TCP_CLOSE_WAIT, align 8
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = load i32, i32* @SOCK_DEAD, align 4
  %41 = call i32 @sock_flag(%struct.sock* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %30
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 5
  %46 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %45, align 8
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = call i32 %46(%struct.sock* %47)
  br label %49

49:                                               ; preds = %43, %30
  br label %199

50:                                               ; preds = %2
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load i32, i32* @PN_PIPE_NO_ERROR, align 4
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call i32 @pep_reply(%struct.sock* %51, %struct.sk_buff* %52, i32 %53, i32* null, i32 0, i32 %54)
  br label %199

56:                                               ; preds = %2
  %57 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %58 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %66 [
    i32 129, label %60
    i32 128, label %63
  ]

60:                                               ; preds = %56
  %61 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %62 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  br label %69

63:                                               ; preds = %56
  %64 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %65 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  br label %69

66:                                               ; preds = %56
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %200

69:                                               ; preds = %63, %60
  br label %70

70:                                               ; preds = %2, %69
  %71 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %72 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %71, i32 0, i32 2
  %73 = call i32 @atomic_set(i32* %72, i32 0)
  %74 = load %struct.sock*, %struct.sock** %4, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = load i32, i32* @PN_PIPE_NO_ERROR, align 4
  %77 = load i32, i32* @GFP_ATOMIC, align 4
  %78 = call i32 @pep_reply(%struct.sock* %74, %struct.sk_buff* %75, i32 %76, i32* null, i32 0, i32 %77)
  br label %199

79:                                               ; preds = %2
  %80 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %81 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %80, i32 0, i32 5
  %82 = call i32 @skb_queue_len(%struct.sk_buff_head* %81)
  %83 = load i32, i32* @PNPIPE_CTRLREQ_MAX, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.sock*, %struct.sock** %4, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 4
  %88 = call i32 @atomic_inc(i32* %87)
  br label %199

89:                                               ; preds = %79
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i32 @__skb_pull(%struct.sk_buff* %90, i32 4)
  %92 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %93 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %92, i32 0, i32 5
  store %struct.sk_buff_head* %93, %struct.sk_buff_head** %8, align 8
  br label %213

94:                                               ; preds = %2
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = call i32 @__skb_pull(%struct.sk_buff* %95, i32 1)
  br label %97

97:                                               ; preds = %2, %94
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = call i32 @__skb_pull(%struct.sk_buff* %98, i32 3)
  %100 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %101 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pn_flow_safe(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %97
  %106 = load %struct.sock*, %struct.sock** %4, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call i32 @sock_queue_rcv_skb(%struct.sock* %106, %struct.sk_buff* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %112, i32* %3, align 4
  br label %234

113:                                              ; preds = %105
  %114 = load i32, i32* @ENOBUFS, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %9, align 4
  br label %199

116:                                              ; preds = %97
  %117 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %118 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load %struct.sock*, %struct.sock** %4, align 8
  %123 = getelementptr inbounds %struct.sock, %struct.sock* %122, i32 0, i32 4
  %124 = call i32 @atomic_inc(i32* %123)
  %125 = load i32, i32* @ENOBUFS, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %9, align 4
  br label %199

127:                                              ; preds = %116
  %128 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %129 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.sock*, %struct.sock** %4, align 8
  %133 = getelementptr inbounds %struct.sock, %struct.sock* %132, i32 0, i32 3
  store %struct.sk_buff_head* %133, %struct.sk_buff_head** %8, align 8
  br label %213

134:                                              ; preds = %2
  %135 = load %struct.sock*, %struct.sock** %4, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = call i32 @pipe_rcv_status(%struct.sock* %135, %struct.sk_buff* %136)
  br label %199

138:                                              ; preds = %2
  %139 = load %struct.sock*, %struct.sock** %4, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %141 = call i32 @pipe_rcv_created(%struct.sock* %139, %struct.sk_buff* %140)
  store i32 %141, i32* %9, align 4
  br label %199

142:                                              ; preds = %2
  %143 = load %struct.sock*, %struct.sock** %4, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = call i32 @pipe_rcv_created(%struct.sock* %143, %struct.sk_buff* %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %199

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %2, %149
  %151 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %152 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %150
  br label %199

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %2, %156
  %158 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %159 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @pn_flow_safe(i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %157
  %164 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %165 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %164, i32 0, i32 2
  %166 = call i32 @atomic_set(i32* %165, i32 1)
  %167 = load %struct.sock*, %struct.sock** %4, align 8
  %168 = getelementptr inbounds %struct.sock, %struct.sock* %167, i32 0, i32 2
  %169 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %168, align 8
  %170 = load %struct.sock*, %struct.sock** %4, align 8
  %171 = call i32 %169(%struct.sock* %170)
  br label %172

172:                                              ; preds = %163, %157
  %173 = load %struct.sock*, %struct.sock** %4, align 8
  %174 = getelementptr inbounds %struct.sock, %struct.sock* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @TCP_ESTABLISHED, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  br label %199

179:                                              ; preds = %172
  %180 = load i64, i64* @TCP_ESTABLISHED, align 8
  %181 = load %struct.sock*, %struct.sock** %4, align 8
  %182 = getelementptr inbounds %struct.sock, %struct.sock* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  %183 = load %struct.sock*, %struct.sock** %4, align 8
  %184 = load i32, i32* @GFP_ATOMIC, align 4
  %185 = call i32 @pipe_grant_credits(%struct.sock* %183, i32 %184)
  br label %199

186:                                              ; preds = %2
  %187 = load i64, i64* @TCP_SYN_RECV, align 8
  %188 = load %struct.sock*, %struct.sock** %4, align 8
  %189 = getelementptr inbounds %struct.sock, %struct.sock* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  %190 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %191 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %190, i32 0, i32 1
  store i32 0, i32* %191, align 4
  br label %199

192:                                              ; preds = %2
  %193 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %194 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %9, align 4
  br label %199

199:                                              ; preds = %192, %186, %179, %178, %155, %148, %138, %134, %121, %113, %85, %70, %50, %49, %24
  br label %200

200:                                              ; preds = %199, %66
  %201 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %202 = call i32 @kfree_skb(%struct.sk_buff* %201)
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* @ENOBUFS, align 4
  %205 = sub nsw i32 0, %204
  %206 = icmp eq i32 %203, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %200
  %208 = load i32, i32* @NET_RX_DROP, align 4
  br label %211

209:                                              ; preds = %200
  %210 = load i32, i32* @NET_RX_SUCCESS, align 4
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i32 [ %208, %207 ], [ %210, %209 ]
  store i32 %212, i32* %3, align 4
  br label %234

213:                                              ; preds = %127, %89
  %214 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %215 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %214, i32 0, i32 0
  store i32* null, i32** %215, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %217 = load %struct.sock*, %struct.sock** %4, align 8
  %218 = call i32 @skb_set_owner_r(%struct.sk_buff* %216, %struct.sock* %217)
  %219 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %220 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %221 = call i32 @skb_queue_tail(%struct.sk_buff_head* %219, %struct.sk_buff* %220)
  %222 = load %struct.sock*, %struct.sock** %4, align 8
  %223 = load i32, i32* @SOCK_DEAD, align 4
  %224 = call i32 @sock_flag(%struct.sock* %222, i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %213
  %227 = load %struct.sock*, %struct.sock** %4, align 8
  %228 = getelementptr inbounds %struct.sock, %struct.sock* %227, i32 0, i32 1
  %229 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %228, align 8
  %230 = load %struct.sock*, %struct.sock** %4, align 8
  %231 = call i32 %229(%struct.sock* %230)
  br label %232

232:                                              ; preds = %226, %213
  %233 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %233, i32* %3, align 4
  br label %234

234:                                              ; preds = %232, %211, %111
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pep_reject_conn(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @pep_reply(%struct.sock*, %struct.sk_buff*, i32, i32*, i32, i32) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @skb_queue_len(%struct.sk_buff_head*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @pn_flow_safe(i32) #1

declare dso_local i32 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @pipe_rcv_status(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @pipe_rcv_created(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @pipe_grant_credits(%struct.sock*, i32) #1

declare dso_local i32 @net_dbg_ratelimited(i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
