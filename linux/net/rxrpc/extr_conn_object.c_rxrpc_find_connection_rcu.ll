; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_object.c_rxrpc_find_connection_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_object.c_rxrpc_find_connection_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { %struct.TYPE_24__, %struct.TYPE_23__, i32 }
%struct.TYPE_24__ = type { %struct.rxrpc_peer*, %struct.rxrpc_local* }
%struct.rxrpc_peer = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_26__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i64 }
%struct.rxrpc_local = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rxrpc_conn_proto = type { i64, i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i64 }
%struct.sockaddr_rxrpc = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__, %struct.TYPE_28__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c",%x\00", align 1
@RXRPC_CIDMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"AF_RXRPC: Protocol mismatch %u not %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1
@rxrpc_client_conn_ids = common dso_local global i32 0, align 4
@RXRPC_CIDSHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"no conn\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" = NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rxrpc_connection* @rxrpc_find_connection_rcu(%struct.rxrpc_local* %0, %struct.sk_buff* %1, %struct.rxrpc_peer** %2) #0 {
  %4 = alloca %struct.rxrpc_connection*, align 8
  %5 = alloca %struct.rxrpc_local*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rxrpc_peer**, align 8
  %8 = alloca %struct.rxrpc_connection*, align 8
  %9 = alloca %struct.rxrpc_conn_proto, align 8
  %10 = alloca %struct.rxrpc_skb_priv*, align 8
  %11 = alloca %struct.sockaddr_rxrpc, align 4
  %12 = alloca %struct.rxrpc_peer*, align 8
  store %struct.rxrpc_local* %0, %struct.rxrpc_local** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.rxrpc_peer** %2, %struct.rxrpc_peer*** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %13)
  store %struct.rxrpc_skb_priv* %14, %struct.rxrpc_skb_priv** %10, align 8
  %15 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %16 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RXRPC_CIDMASK, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @_enter(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i64 @rxrpc_extract_addr_from_skb(%struct.sockaddr_rxrpc* %11, %struct.sk_buff* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %173

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %11, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %31 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %29, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %11, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 129
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %43 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 128
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %11, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %53 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %56)
  br label %173

58:                                               ; preds = %41, %36, %26
  %59 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %60 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.rxrpc_conn_proto, %struct.rxrpc_conn_proto* %9, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  %64 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %65 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @RXRPC_CIDMASK, align 4
  %69 = and i32 %67, %68
  %70 = getelementptr inbounds %struct.rxrpc_conn_proto, %struct.rxrpc_conn_proto* %9, i32 0, i32 1
  store i32 %69, i32* %70, align 8
  %71 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %72 = call i64 @rxrpc_to_server(%struct.rxrpc_skb_priv* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %58
  %75 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %76 = call %struct.rxrpc_peer* @rxrpc_lookup_peer_rcu(%struct.rxrpc_local* %75, %struct.sockaddr_rxrpc* %11)
  store %struct.rxrpc_peer* %76, %struct.rxrpc_peer** %12, align 8
  %77 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %12, align 8
  %78 = icmp ne %struct.rxrpc_peer* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %173

80:                                               ; preds = %74
  %81 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %12, align 8
  %82 = load %struct.rxrpc_peer**, %struct.rxrpc_peer*** %7, align 8
  store %struct.rxrpc_peer* %81, %struct.rxrpc_peer** %82, align 8
  %83 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %12, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = call %struct.rxrpc_connection* @rxrpc_find_service_conn_rcu(%struct.rxrpc_peer* %83, %struct.sk_buff* %84)
  store %struct.rxrpc_connection* %85, %struct.rxrpc_connection** %8, align 8
  %86 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %87 = icmp ne %struct.rxrpc_connection* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %90 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %89, i32 0, i32 2
  %91 = call i64 @atomic_read(i32* %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88, %80
  br label %173

94:                                               ; preds = %88
  %95 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %96 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.rxrpc_connection* %95)
  %97 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  store %struct.rxrpc_connection* %97, %struct.rxrpc_connection** %4, align 8
  br label %175

98:                                               ; preds = %58
  %99 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %100 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @RXRPC_CIDSHIFT, align 4
  %104 = ashr i32 %102, %103
  %105 = call %struct.rxrpc_connection* @idr_find(i32* @rxrpc_client_conn_ids, i32 %104)
  store %struct.rxrpc_connection* %105, %struct.rxrpc_connection** %8, align 8
  %106 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %107 = icmp ne %struct.rxrpc_connection* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %98
  %109 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %110 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %109, i32 0, i32 2
  %111 = call i64 @atomic_read(i32* %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108, %98
  %114 = call i32 @_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %173

115:                                              ; preds = %108
  %116 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %117 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.rxrpc_conn_proto, %struct.rxrpc_conn_proto* %9, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %119, %121
  br i1 %122, label %130, label %123

123:                                              ; preds = %115
  %124 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %125 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 1
  %127 = load %struct.rxrpc_local*, %struct.rxrpc_local** %126, align 8
  %128 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %129 = icmp ne %struct.rxrpc_local* %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %123, %115
  br label %173

131:                                              ; preds = %123
  %132 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %133 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  %135 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %134, align 8
  store %struct.rxrpc_peer* %135, %struct.rxrpc_peer** %12, align 8
  %136 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %11, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  switch i32 %138, label %167 [
    i32 129, label %139
  ]

139:                                              ; preds = %131
  %140 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %12, align 8
  %141 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %11, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %145, %149
  br i1 %150, label %165, label %151

151:                                              ; preds = %139
  %152 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %12, align 8
  %153 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %11, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %158, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %151, %139
  br label %173

166:                                              ; preds = %151
  br label %169

167:                                              ; preds = %131
  %168 = call i32 (...) @BUG()
  br label %169

169:                                              ; preds = %167, %166
  %170 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %171 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.rxrpc_connection* %170)
  %172 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  store %struct.rxrpc_connection* %172, %struct.rxrpc_connection** %4, align 8
  br label %175

173:                                              ; preds = %165, %130, %113, %93, %79, %48, %25
  %174 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store %struct.rxrpc_connection* null, %struct.rxrpc_connection** %4, align 8
  br label %175

175:                                              ; preds = %173, %169, %94
  %176 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  ret %struct.rxrpc_connection* %176
}

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i64 @rxrpc_extract_addr_from_skb(%struct.sockaddr_rxrpc*, %struct.sk_buff*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i32) #1

declare dso_local i64 @rxrpc_to_server(%struct.rxrpc_skb_priv*) #1

declare dso_local %struct.rxrpc_peer* @rxrpc_lookup_peer_rcu(%struct.rxrpc_local*, %struct.sockaddr_rxrpc*) #1

declare dso_local %struct.rxrpc_connection* @rxrpc_find_service_conn_rcu(%struct.rxrpc_peer*, %struct.sk_buff*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local %struct.rxrpc_connection* @idr_find(i32*, i32) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
