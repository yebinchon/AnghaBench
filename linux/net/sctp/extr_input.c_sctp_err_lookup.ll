; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_err_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_err_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sctphdr = type { i32 }
%struct.sctp_association = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.sock* }
%struct.sctp_transport = type { i32 }
%struct.sctp_init_chunk = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%union.sctp_addr = type { i32 }
%struct.sctp_af = type { i32 (%union.sctp_addr*, %struct.sk_buff*, i32)* }

@SCTP_CID_INIT = common dso_local global i64 0, align 8
@LINUX_MIB_LOCKDROPPEDICMPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @sctp_err_lookup(%struct.net* %0, i32 %1, %struct.sk_buff* %2, %struct.sctphdr* %3, %struct.sctp_association** %4, %struct.sctp_transport** %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sctphdr*, align 8
  %12 = alloca %struct.sctp_association**, align 8
  %13 = alloca %struct.sctp_transport**, align 8
  %14 = alloca %struct.sctp_init_chunk*, align 8
  %15 = alloca %struct.sctp_init_chunk, align 8
  %16 = alloca %union.sctp_addr, align 4
  %17 = alloca %union.sctp_addr, align 4
  %18 = alloca %struct.sctp_af*, align 8
  %19 = alloca %struct.sock*, align 8
  %20 = alloca %struct.sctp_association*, align 8
  %21 = alloca %struct.sctp_transport*, align 8
  %22 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.sctphdr* %3, %struct.sctphdr** %11, align 8
  store %struct.sctp_association** %4, %struct.sctp_association*** %12, align 8
  store %struct.sctp_transport** %5, %struct.sctp_transport*** %13, align 8
  store %struct.sock* null, %struct.sock** %19, align 8
  store %struct.sctp_transport* null, %struct.sctp_transport** %21, align 8
  %23 = load %struct.sctphdr*, %struct.sctphdr** %11, align 8
  %24 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ntohl(i32 %25)
  store i64 %26, i64* %22, align 8
  %27 = load %struct.sctp_association**, %struct.sctp_association*** %12, align 8
  store %struct.sctp_association* null, %struct.sctp_association** %27, align 8
  %28 = load %struct.sctp_transport**, %struct.sctp_transport*** %13, align 8
  store %struct.sctp_transport* null, %struct.sctp_transport** %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.sctp_af* @sctp_get_af_specific(i32 %29)
  store %struct.sctp_af* %30, %struct.sctp_af** %18, align 8
  %31 = load %struct.sctp_af*, %struct.sctp_af** %18, align 8
  %32 = icmp ne %struct.sctp_af* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %117

38:                                               ; preds = %6
  %39 = load %struct.sctp_af*, %struct.sctp_af** %18, align 8
  %40 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %39, i32 0, i32 0
  %41 = load i32 (%union.sctp_addr*, %struct.sk_buff*, i32)*, i32 (%union.sctp_addr*, %struct.sk_buff*, i32)** %40, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = call i32 %41(%union.sctp_addr* %16, %struct.sk_buff* %42, i32 1)
  %44 = load %struct.sctp_af*, %struct.sctp_af** %18, align 8
  %45 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %44, i32 0, i32 0
  %46 = load i32 (%union.sctp_addr*, %struct.sk_buff*, i32)*, i32 (%union.sctp_addr*, %struct.sk_buff*, i32)** %45, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %48 = call i32 %46(%union.sctp_addr* %17, %struct.sk_buff* %47, i32 0)
  %49 = load %struct.net*, %struct.net** %8, align 8
  %50 = call %struct.sctp_association* @__sctp_lookup_association(%struct.net* %49, %union.sctp_addr* %16, %union.sctp_addr* %17, %struct.sctp_transport** %21)
  store %struct.sctp_association* %50, %struct.sctp_association** %20, align 8
  %51 = load %struct.sctp_association*, %struct.sctp_association** %20, align 8
  %52 = icmp ne %struct.sctp_association* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %38
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %117

54:                                               ; preds = %38
  %55 = load %struct.sctp_association*, %struct.sctp_association** %20, align 8
  %56 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.sock*, %struct.sock** %57, align 8
  store %struct.sock* %58, %struct.sock** %19, align 8
  %59 = load i64, i64* %22, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %54
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %64 = call i64 @skb_transport_offset(%struct.sk_buff* %63)
  %65 = add i64 %64, 4
  %66 = call %struct.sctp_init_chunk* @skb_header_pointer(%struct.sk_buff* %62, i64 %65, i32 8, %struct.sctp_init_chunk* %15)
  store %struct.sctp_init_chunk* %66, %struct.sctp_init_chunk** %14, align 8
  %67 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %14, align 8
  %68 = icmp ne %struct.sctp_init_chunk* %67, null
  br i1 %68, label %69, label %87

69:                                               ; preds = %61
  %70 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %14, align 8
  %71 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SCTP_CID_INIT, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %87, label %76

76:                                               ; preds = %69
  %77 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %14, align 8
  %78 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @ntohl(i32 %80)
  %82 = load %struct.sctp_association*, %struct.sctp_association** %20, align 8
  %83 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %81, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %76, %69, %61
  br label %114

88:                                               ; preds = %76
  br label %98

89:                                               ; preds = %54
  %90 = load i64, i64* %22, align 8
  %91 = load %struct.sctp_association*, %struct.sctp_association** %20, align 8
  %92 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %90, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %114

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %88
  %99 = load %struct.sock*, %struct.sock** %19, align 8
  %100 = call i32 @bh_lock_sock(%struct.sock* %99)
  %101 = load %struct.sock*, %struct.sock** %19, align 8
  %102 = call i64 @sock_owned_by_user(%struct.sock* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load %struct.net*, %struct.net** %8, align 8
  %106 = load i32, i32* @LINUX_MIB_LOCKDROPPEDICMPS, align 4
  %107 = call i32 @__NET_INC_STATS(%struct.net* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %98
  %109 = load %struct.sctp_association*, %struct.sctp_association** %20, align 8
  %110 = load %struct.sctp_association**, %struct.sctp_association*** %12, align 8
  store %struct.sctp_association* %109, %struct.sctp_association** %110, align 8
  %111 = load %struct.sctp_transport*, %struct.sctp_transport** %21, align 8
  %112 = load %struct.sctp_transport**, %struct.sctp_transport*** %13, align 8
  store %struct.sctp_transport* %111, %struct.sctp_transport** %112, align 8
  %113 = load %struct.sock*, %struct.sock** %19, align 8
  store %struct.sock* %113, %struct.sock** %7, align 8
  br label %117

114:                                              ; preds = %96, %87
  %115 = load %struct.sctp_transport*, %struct.sctp_transport** %21, align 8
  %116 = call i32 @sctp_transport_put(%struct.sctp_transport* %115)
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %117

117:                                              ; preds = %114, %108, %53, %37
  %118 = load %struct.sock*, %struct.sock** %7, align 8
  ret %struct.sock* %118
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sctp_association* @__sctp_lookup_association(%struct.net*, %union.sctp_addr*, %union.sctp_addr*, %struct.sctp_transport**) #1

declare dso_local %struct.sctp_init_chunk* @skb_header_pointer(%struct.sk_buff*, i64, i32, %struct.sctp_init_chunk*) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @__NET_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @sctp_transport_put(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
