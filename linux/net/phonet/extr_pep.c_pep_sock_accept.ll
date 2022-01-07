; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_sock_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_sock_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32, i32, i32 }
%struct.pep_sock = type { i32, i32, i64, i64, i32, i32, i64, i64, i32, i64, i32, %struct.sock*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8* }
%struct.sk_buff = type { i32 }
%struct.pnpipehdr = type { i64, i32, i32, i64* }
%struct.sockaddr_pn = type { i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@PN_PIPE_ERR_INVALID_PARAM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PN_PIPE_ERR_PEP_IN_USE = common dso_local global i32 0, align 4
@PF_PHONET = common dso_local global i32 0, align 4
@PN_PIPE_ERR_OVERLOAD = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@TCP_SYN_RECV = common dso_local global i64 0, align 8
@pipe_do_rcv = common dso_local global i32 0, align 4
@pipe_destruct = common dso_local global i32 0, align 4
@PN_LEGACY_FLOW_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*, i32, i32*, i32)* @pep_sock_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @pep_sock_accept(%struct.sock* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pep_sock*, align 8
  %11 = alloca %struct.pep_sock*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.pnpipehdr*, align 8
  %15 = alloca %struct.sockaddr_pn, align 4
  %16 = alloca %struct.sockaddr_pn, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca [1 x i64], align 8
  %25 = alloca i64, align 8
  %26 = alloca i64*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %27 = load %struct.sock*, %struct.sock** %6, align 8
  %28 = call %struct.pep_sock* @pep_sk(%struct.sock* %27)
  store %struct.pep_sock* %28, %struct.pep_sock** %10, align 8
  store %struct.sock* null, %struct.sock** %12, align 8
  store i64 0, i64* %22, align 8
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @O_NONBLOCK, align 4
  %32 = and i32 %30, %31
  %33 = load i32*, i32** %8, align 8
  %34 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %29, i32 0, i32 %32, i32* %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %13, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %4
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %244

38:                                               ; preds = %4
  %39 = load %struct.sock*, %struct.sock** %6, align 8
  %40 = call i32 @lock_sock(%struct.sock* %39)
  %41 = load %struct.sock*, %struct.sock** %6, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TCP_LISTEN, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %17, align 4
  br label %236

49:                                               ; preds = %38
  %50 = load %struct.sock*, %struct.sock** %6, align 8
  %51 = call i32 @sk_acceptq_removed(%struct.sock* %50)
  %52 = load i32, i32* @EPROTO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %17, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %55 = call i32 @pskb_may_pull(%struct.sk_buff* %54, i32 28)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %236

58:                                               ; preds = %49
  %59 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %60 = call %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff* %59)
  store %struct.pnpipehdr* %60, %struct.pnpipehdr** %14, align 8
  %61 = load %struct.pnpipehdr*, %struct.pnpipehdr** %14, align 8
  %62 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %19, align 8
  %64 = load %struct.pnpipehdr*, %struct.pnpipehdr** %14, align 8
  %65 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %69 [
    i32 131, label %67
    i32 130, label %68
  ]

67:                                               ; preds = %58
  store i64 0, i64* %20, align 8
  br label %75

68:                                               ; preds = %58
  store i64 1, i64* %20, align 8
  br label %75

69:                                               ; preds = %58
  %70 = load %struct.sock*, %struct.sock** %6, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %72 = load i32, i32* @PN_PIPE_ERR_INVALID_PARAM, align 4
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i32 @pep_reject_conn(%struct.sock* %70, %struct.sk_buff* %71, i32 %72, i32 %73)
  br label %236

75:                                               ; preds = %68, %67
  %76 = load %struct.pnpipehdr*, %struct.pnpipehdr** %14, align 8
  %77 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 8
  store i32 %79, i32* %18, align 4
  %80 = load %struct.pnpipehdr*, %struct.pnpipehdr** %14, align 8
  %81 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %80, i32 0, i32 3
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 3
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %21, align 8
  br label %85

85:                                               ; preds = %117, %75
  %86 = load i64, i64* %21, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %120

88:                                               ; preds = %85
  store i64 8, i64* %25, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %90 = getelementptr inbounds [1 x i64], [1 x i64]* %24, i64 0, i64 0
  %91 = call i64* @pep_get_sb(%struct.sk_buff* %89, i64* %23, i64* %25, i64* %90)
  store i64* %91, i64** %26, align 8
  %92 = load i64*, i64** %26, align 8
  %93 = icmp eq i64* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %236

95:                                               ; preds = %88
  %96 = load i64, i64* %23, align 8
  switch i64 %96, label %117 [
    i64 128, label %97
    i64 129, label %110
  ]

97:                                               ; preds = %95
  %98 = load i64, i64* %25, align 8
  %99 = icmp slt i64 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %236

101:                                              ; preds = %97
  %102 = load i32, i32* %18, align 4
  %103 = and i32 %102, 65280
  %104 = sext i32 %103 to i64
  %105 = load i64*, i64** %26, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 0
  %107 = load i64, i64* %106, align 8
  %108 = or i64 %104, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %18, align 4
  br label %117

110:                                              ; preds = %95
  %111 = load i64*, i64** %26, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %22, align 8
  br label %117

117:                                              ; preds = %95, %110, %101
  %118 = load i64, i64* %21, align 8
  %119 = add nsw i64 %118, -1
  store i64 %119, i64* %21, align 8
  br label %85

120:                                              ; preds = %85
  %121 = load %struct.pep_sock*, %struct.pep_sock** %10, align 8
  %122 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %121, i32 0, i32 1
  %123 = load i64, i64* %19, align 8
  %124 = call %struct.sock* @pep_find_pipe(i32* %122, %struct.sockaddr_pn* %15, i64 %123)
  store %struct.sock* %124, %struct.sock** %12, align 8
  %125 = load %struct.sock*, %struct.sock** %12, align 8
  %126 = call i64 @unlikely(%struct.sock* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %120
  %129 = load %struct.sock*, %struct.sock** %12, align 8
  %130 = call i32 @__sock_put(%struct.sock* %129)
  store %struct.sock* null, %struct.sock** %12, align 8
  %131 = load %struct.sock*, %struct.sock** %6, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %133 = load i32, i32* @PN_PIPE_ERR_PEP_IN_USE, align 4
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = call i32 @pep_reject_conn(%struct.sock* %131, %struct.sk_buff* %132, i32 %133, i32 %134)
  br label %236

136:                                              ; preds = %120
  %137 = load %struct.sock*, %struct.sock** %6, align 8
  %138 = call i32 @sock_net(%struct.sock* %137)
  %139 = load i32, i32* @PF_PHONET, align 4
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = load %struct.sock*, %struct.sock** %6, align 8
  %142 = getelementptr inbounds %struct.sock, %struct.sock* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %9, align 4
  %145 = call %struct.sock* @sk_alloc(i32 %138, i32 %139, i32 %140, i32 %143, i32 %144)
  store %struct.sock* %145, %struct.sock** %12, align 8
  %146 = load %struct.sock*, %struct.sock** %12, align 8
  %147 = icmp ne %struct.sock* %146, null
  br i1 %147, label %156, label %148

148:                                              ; preds = %136
  %149 = load %struct.sock*, %struct.sock** %6, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %151 = load i32, i32* @PN_PIPE_ERR_OVERLOAD, align 4
  %152 = load i32, i32* @GFP_KERNEL, align 4
  %153 = call i32 @pep_reject_conn(%struct.sock* %149, %struct.sk_buff* %150, i32 %151, i32 %152)
  %154 = load i32, i32* @ENOBUFS, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %17, align 4
  br label %236

156:                                              ; preds = %136
  %157 = load %struct.sock*, %struct.sock** %12, align 8
  %158 = call i32 @sock_init_data(i32* null, %struct.sock* %157)
  %159 = load i64, i64* @TCP_SYN_RECV, align 8
  %160 = load %struct.sock*, %struct.sock** %12, align 8
  %161 = getelementptr inbounds %struct.sock, %struct.sock* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  %162 = load i32, i32* @pipe_do_rcv, align 4
  %163 = load %struct.sock*, %struct.sock** %12, align 8
  %164 = getelementptr inbounds %struct.sock, %struct.sock* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 8
  %165 = load %struct.sock*, %struct.sock** %6, align 8
  %166 = getelementptr inbounds %struct.sock, %struct.sock* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.sock*, %struct.sock** %12, align 8
  %169 = getelementptr inbounds %struct.sock, %struct.sock* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @pipe_destruct, align 4
  %171 = load %struct.sock*, %struct.sock** %12, align 8
  %172 = getelementptr inbounds %struct.sock, %struct.sock* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 8
  %173 = load %struct.sock*, %struct.sock** %12, align 8
  %174 = call %struct.pep_sock* @pep_sk(%struct.sock* %173)
  store %struct.pep_sock* %174, %struct.pep_sock** %11, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %176 = call i32 @pn_skb_get_dst_sockaddr(%struct.sk_buff* %175, %struct.sockaddr_pn* %15)
  %177 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %178 = call i32 @pn_skb_get_src_sockaddr(%struct.sk_buff* %177, %struct.sockaddr_pn* %16)
  %179 = call i8* @pn_sockaddr_get_object(%struct.sockaddr_pn* %15)
  %180 = load %struct.pep_sock*, %struct.pep_sock** %11, align 8
  %181 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %180, i32 0, i32 12
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 2
  store i8* %179, i8** %182, align 8
  %183 = call i8* @pn_sockaddr_get_object(%struct.sockaddr_pn* %16)
  %184 = load %struct.pep_sock*, %struct.pep_sock** %11, align 8
  %185 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %184, i32 0, i32 12
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  store i8* %183, i8** %186, align 8
  %187 = call i32 @pn_sockaddr_get_resource(%struct.sockaddr_pn* %15)
  %188 = load %struct.pep_sock*, %struct.pep_sock** %11, align 8
  %189 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %188, i32 0, i32 12
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  store i32 %187, i32* %190, align 8
  %191 = load %struct.sock*, %struct.sock** %6, align 8
  %192 = call i32 @sock_hold(%struct.sock* %191)
  %193 = load %struct.sock*, %struct.sock** %6, align 8
  %194 = load %struct.pep_sock*, %struct.pep_sock** %11, align 8
  %195 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %194, i32 0, i32 11
  store %struct.sock* %193, %struct.sock** %195, align 8
  %196 = load %struct.pep_sock*, %struct.pep_sock** %11, align 8
  %197 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %196, i32 0, i32 10
  %198 = call i32 @skb_queue_head_init(i32* %197)
  %199 = load i64, i64* %19, align 8
  %200 = load %struct.pep_sock*, %struct.pep_sock** %11, align 8
  %201 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %200, i32 0, i32 9
  store i64 %199, i64* %201, align 8
  %202 = load %struct.pep_sock*, %struct.pep_sock** %11, align 8
  %203 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %202, i32 0, i32 8
  %204 = call i32 @atomic_set(i32* %203, i32 0)
  %205 = load %struct.pep_sock*, %struct.pep_sock** %11, align 8
  %206 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %205, i32 0, i32 7
  store i64 0, i64* %206, align 8
  %207 = load i32, i32* %18, align 4
  %208 = load %struct.pep_sock*, %struct.pep_sock** %11, align 8
  %209 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  %210 = load %struct.pep_sock*, %struct.pep_sock** %11, align 8
  %211 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %210, i32 0, i32 6
  store i64 0, i64* %211, align 8
  %212 = load i32, i32* @PN_LEGACY_FLOW_CONTROL, align 4
  %213 = load %struct.pep_sock*, %struct.pep_sock** %11, align 8
  %214 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %213, i32 0, i32 4
  store i32 %212, i32* %214, align 8
  %215 = load %struct.pep_sock*, %struct.pep_sock** %11, align 8
  %216 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %215, i32 0, i32 5
  store i32 %212, i32* %216, align 4
  %217 = load i64, i64* %20, align 8
  %218 = load %struct.pep_sock*, %struct.pep_sock** %11, align 8
  %219 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %218, i32 0, i32 3
  store i64 %217, i64* %219, align 8
  %220 = load i64, i64* %22, align 8
  %221 = load %struct.pep_sock*, %struct.pep_sock** %11, align 8
  %222 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %221, i32 0, i32 2
  store i64 %220, i64* %222, align 8
  %223 = load %struct.sock*, %struct.sock** %12, align 8
  %224 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %225 = call i32 @pep_accept_conn(%struct.sock* %223, %struct.sk_buff* %224)
  store i32 %225, i32* %17, align 4
  %226 = load i32, i32* %17, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %156
  %229 = load %struct.sock*, %struct.sock** %12, align 8
  %230 = call i32 @sock_put(%struct.sock* %229)
  store %struct.sock* null, %struct.sock** %12, align 8
  br label %236

231:                                              ; preds = %156
  %232 = load %struct.sock*, %struct.sock** %12, align 8
  %233 = load %struct.pep_sock*, %struct.pep_sock** %10, align 8
  %234 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %233, i32 0, i32 1
  %235 = call i32 @sk_add_node(%struct.sock* %232, i32* %234)
  br label %236

236:                                              ; preds = %231, %228, %148, %128, %100, %94, %69, %57, %46
  %237 = load %struct.sock*, %struct.sock** %6, align 8
  %238 = call i32 @release_sock(%struct.sock* %237)
  %239 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %240 = call i32 @kfree_skb(%struct.sk_buff* %239)
  %241 = load i32, i32* %17, align 4
  %242 = load i32*, i32** %8, align 8
  store i32 %241, i32* %242, align 4
  %243 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %243, %struct.sock** %5, align 8
  br label %244

244:                                              ; preds = %236, %37
  %245 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %245
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sk_acceptq_removed(%struct.sock*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @pep_reject_conn(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64* @pep_get_sb(%struct.sk_buff*, i64*, i64*, i64*) #1

declare dso_local %struct.sock* @pep_find_pipe(i32*, %struct.sockaddr_pn*, i64) #1

declare dso_local i64 @unlikely(%struct.sock*) #1

declare dso_local i32 @__sock_put(%struct.sock*) #1

declare dso_local %struct.sock* @sk_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sock_init_data(i32*, %struct.sock*) #1

declare dso_local i32 @pn_skb_get_dst_sockaddr(%struct.sk_buff*, %struct.sockaddr_pn*) #1

declare dso_local i32 @pn_skb_get_src_sockaddr(%struct.sk_buff*, %struct.sockaddr_pn*) #1

declare dso_local i8* @pn_sockaddr_get_object(%struct.sockaddr_pn*) #1

declare dso_local i32 @pn_sockaddr_get_resource(%struct.sockaddr_pn*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @pep_accept_conn(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @sk_add_node(%struct.sock*, i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
