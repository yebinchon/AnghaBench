; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sendmcast.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sendmcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.tipc_name_seq = type { i32, i32, i32 }
%struct.msghdr = type { i32 }
%struct.tipc_sock = type { i32, i64, %struct.tipc_mc_method, %struct.tipc_msg }
%struct.tipc_mc_method = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_nlist = type { i32, i32 }

@EACCES = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@TIPC_MCAST_MSG = common dso_local global i32 0, align 4
@MCAST_H_SIZE = common dso_local global i32 0, align 4
@TIPC_CLUSTER_SCOPE = common dso_local global i32 0, align 4
@TIPC_DUMP_SK_SNDQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.tipc_name_seq*, %struct.msghdr*, i64, i64)* @tipc_sendmcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_sendmcast(%struct.socket* %0, %struct.tipc_name_seq* %1, %struct.msghdr* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.tipc_name_seq*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.tipc_sock*, align 8
  %14 = alloca %struct.tipc_msg*, align 8
  %15 = alloca %struct.net*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.tipc_mc_method*, align 8
  %18 = alloca %struct.sk_buff_head, align 4
  %19 = alloca %struct.tipc_nlist, align 4
  %20 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store %struct.tipc_name_seq* %1, %struct.tipc_name_seq** %8, align 8
  store %struct.msghdr* %2, %struct.msghdr** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load %struct.socket*, %struct.socket** %7, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load %struct.sock*, %struct.sock** %22, align 8
  store %struct.sock* %23, %struct.sock** %12, align 8
  %24 = load %struct.sock*, %struct.sock** %12, align 8
  %25 = call %struct.tipc_sock* @tipc_sk(%struct.sock* %24)
  store %struct.tipc_sock* %25, %struct.tipc_sock** %13, align 8
  %26 = load %struct.tipc_sock*, %struct.tipc_sock** %13, align 8
  %27 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %26, i32 0, i32 3
  store %struct.tipc_msg* %27, %struct.tipc_msg** %14, align 8
  %28 = load %struct.sock*, %struct.sock** %12, align 8
  %29 = call %struct.net* @sock_net(%struct.sock* %28)
  store %struct.net* %29, %struct.net** %15, align 8
  %30 = load %struct.net*, %struct.net** %15, align 8
  %31 = call i32 @tipc_bcast_get_mtu(%struct.net* %30)
  store i32 %31, i32* %16, align 4
  %32 = load %struct.tipc_sock*, %struct.tipc_sock** %13, align 8
  %33 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %32, i32 0, i32 2
  store %struct.tipc_mc_method* %33, %struct.tipc_mc_method** %17, align 8
  %34 = load %struct.tipc_sock*, %struct.tipc_sock** %13, align 8
  %35 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %5
  %39 = load i32, i32* @EACCES, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %144

41:                                               ; preds = %5
  %42 = load %struct.socket*, %struct.socket** %7, align 8
  %43 = load %struct.tipc_sock*, %struct.tipc_sock** %13, align 8
  %44 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @tipc_wait_for_cond(%struct.socket* %42, i64* %11, i32 %48)
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* %20, align 4
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %20, align 4
  store i32 %54, i32* %6, align 4
  br label %144

55:                                               ; preds = %41
  %56 = load %struct.net*, %struct.net** %15, align 8
  %57 = call i32 @tipc_own_addr(%struct.net* %56)
  %58 = call i32 @tipc_nlist_init(%struct.tipc_nlist* %19, i32 %57)
  %59 = load %struct.net*, %struct.net** %15, align 8
  %60 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %8, align 8
  %61 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %8, align 8
  %64 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %8, align 8
  %67 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @tipc_nametbl_lookup_dst_nodes(%struct.net* %59, i32 %62, i32 %65, i32 %68, %struct.tipc_nlist* %19)
  %70 = getelementptr inbounds %struct.tipc_nlist, %struct.tipc_nlist* %19, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %55
  %74 = getelementptr inbounds %struct.tipc_nlist, %struct.tipc_nlist* %19, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @EHOSTUNREACH, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %144

80:                                               ; preds = %73, %55
  %81 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %82 = load i32, i32* @TIPC_MCAST_MSG, align 4
  %83 = call i32 @msg_set_type(%struct.tipc_msg* %81, i32 %82)
  %84 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %85 = load i32, i32* @MCAST_H_SIZE, align 4
  %86 = call i32 @msg_set_hdr_sz(%struct.tipc_msg* %84, i32 %85)
  %87 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %88 = load i32, i32* @TIPC_CLUSTER_SCOPE, align 4
  %89 = call i32 @msg_set_lookup_scope(%struct.tipc_msg* %87, i32 %88)
  %90 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %91 = call i32 @msg_set_destport(%struct.tipc_msg* %90, i32 0)
  %92 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %93 = call i32 @msg_set_destnode(%struct.tipc_msg* %92, i32 0)
  %94 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %95 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %8, align 8
  %96 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @msg_set_nametype(%struct.tipc_msg* %94, i32 %97)
  %99 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %100 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %8, align 8
  %101 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @msg_set_namelower(%struct.tipc_msg* %99, i32 %102)
  %104 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %105 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %8, align 8
  %106 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @msg_set_nameupper(%struct.tipc_msg* %104, i32 %107)
  %109 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %18)
  %110 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %111 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @tipc_msg_build(%struct.tipc_msg* %110, %struct.msghdr* %111, i32 0, i64 %112, i32 %113, %struct.sk_buff_head* %18)
  store i32 %114, i32* %20, align 4
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %10, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %80
  %123 = load %struct.sock*, %struct.sock** %12, align 8
  %124 = call i32 @skb_peek(%struct.sk_buff_head* %18)
  %125 = load i32, i32* @TIPC_DUMP_SK_SNDQ, align 4
  %126 = call i32 @trace_tipc_sk_sendmcast(%struct.sock* %123, i32 %124, i32 %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %127 = load %struct.net*, %struct.net** %15, align 8
  %128 = load %struct.tipc_mc_method*, %struct.tipc_mc_method** %17, align 8
  %129 = load %struct.tipc_sock*, %struct.tipc_sock** %13, align 8
  %130 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %129, i32 0, i32 0
  %131 = call i32 @tipc_mcast_xmit(%struct.net* %127, %struct.sk_buff_head* %18, %struct.tipc_mc_method* %128, %struct.tipc_nlist* %19, i32* %130)
  store i32 %131, i32* %20, align 4
  br label %132

132:                                              ; preds = %122, %80
  %133 = call i32 @tipc_nlist_purge(%struct.tipc_nlist* %19)
  %134 = load i32, i32* %20, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* %20, align 4
  %138 = sext i32 %137 to i64
  br label %141

139:                                              ; preds = %132
  %140 = load i64, i64* %10, align 8
  br label %141

141:                                              ; preds = %139, %136
  %142 = phi i64 [ %138, %136 ], [ %140, %139 ]
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %141, %77, %53, %38
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local %struct.tipc_sock* @tipc_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @tipc_bcast_get_mtu(%struct.net*) #1

declare dso_local i32 @tipc_wait_for_cond(%struct.socket*, i64*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tipc_nlist_init(%struct.tipc_nlist*, i32) #1

declare dso_local i32 @tipc_own_addr(%struct.net*) #1

declare dso_local i32 @tipc_nametbl_lookup_dst_nodes(%struct.net*, i32, i32, i32, %struct.tipc_nlist*) #1

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_hdr_sz(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_lookup_scope(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_destport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_destnode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_nametype(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_namelower(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_nameupper(%struct.tipc_msg*, i32) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_msg_build(%struct.tipc_msg*, %struct.msghdr*, i32, i64, i32, %struct.sk_buff_head*) #1

declare dso_local i32 @trace_tipc_sk_sendmcast(%struct.sock*, i32, i32, i8*) #1

declare dso_local i32 @skb_peek(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_mcast_xmit(%struct.net*, %struct.sk_buff_head*, %struct.tipc_mc_method*, %struct.tipc_nlist*, i32*) #1

declare dso_local i32 @tipc_nlist_purge(%struct.tipc_nlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
