; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_icmp.c_nf_conntrack_inet_error.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_icmp.c_nf_conntrack_inet_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %union.nf_inet_addr }
%union.nf_inet_addr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i64, i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.nf_conntrack_zone = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"outer daddr %pI4 != inner %pI4\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"outer daddr %pI6 != inner %pI6\00", align 1
@IP_CT_RELATED = common dso_local global i32 0, align 4
@IP_CT_DIR_REPLY = common dso_local global i32 0, align 4
@IP_CT_IS_REPLY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_conntrack_inet_error(%struct.nf_conn* %0, %struct.sk_buff* %1, i32 %2, %struct.nf_hook_state* %3, i32 %4, %union.nf_inet_addr* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_hook_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.nf_inet_addr*, align 8
  %14 = alloca %struct.nf_conntrack_tuple, align 4
  %15 = alloca %struct.nf_conntrack_tuple, align 4
  %16 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %17 = alloca %struct.nf_conntrack_zone*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.nf_conntrack_zone, align 4
  %20 = alloca %union.nf_inet_addr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.nf_conn*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.nf_hook_state* %3, %struct.nf_hook_state** %11, align 8
  store i32 %4, i32* %12, align 4
  store %union.nf_inet_addr* %5, %union.nf_inet_addr** %13, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = call i32 @skb_nfct(%struct.sk_buff* %23)
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = call %struct.nf_conntrack_zone* @nf_ct_zone_tmpl(%struct.nf_conn* %26, %struct.sk_buff* %27, %struct.nf_conntrack_zone* %19)
  store %struct.nf_conntrack_zone* %28, %struct.nf_conntrack_zone** %17, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.nf_hook_state*, %struct.nf_hook_state** %11, align 8
  %32 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.nf_hook_state*, %struct.nf_hook_state** %11, align 8
  %35 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @nf_ct_get_tuplepr(%struct.sk_buff* %29, i32 %30, i64 %33, i32 %36, %struct.nf_conntrack_tuple* %15)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %6
  %40 = load i32, i32* @NF_ACCEPT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %140

42:                                               ; preds = %6
  %43 = call i32 @nf_ct_invert_tuple(%struct.nf_conntrack_tuple* %14, %struct.nf_conntrack_tuple* %15)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @NF_ACCEPT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %140

48:                                               ; preds = %42
  %49 = load %struct.nf_hook_state*, %struct.nf_hook_state** %11, align 8
  %50 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %17, align 8
  %53 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(i32 %51, %struct.nf_conntrack_zone* %52, %struct.nf_conntrack_tuple* %14)
  store %struct.nf_conntrack_tuple_hash* %53, %struct.nf_conntrack_tuple_hash** %16, align 8
  %54 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %16, align 8
  %55 = icmp ne %struct.nf_conntrack_tuple_hash* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* @NF_ACCEPT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %140

59:                                               ; preds = %48
  %60 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %16, align 8
  %61 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %60)
  store %struct.nf_conn* %61, %struct.nf_conn** %22, align 8
  %62 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %16, align 8
  %63 = call i32 @NF_CT_DIRECTION(%struct.nf_conntrack_tuple_hash* %62)
  store i32 %63, i32* %21, align 4
  %64 = load %struct.nf_conn*, %struct.nf_conn** %22, align 8
  %65 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %21, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store %union.nf_inet_addr* %72, %union.nf_inet_addr** %20, align 8
  %73 = load %union.nf_inet_addr*, %union.nf_inet_addr** %13, align 8
  %74 = load %union.nf_inet_addr*, %union.nf_inet_addr** %20, align 8
  %75 = call i32 @nf_inet_addr_cmp(%union.nf_inet_addr* %73, %union.nf_inet_addr* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %123, label %77

77:                                               ; preds = %59
  %78 = load %struct.nf_hook_state*, %struct.nf_hook_state** %11, align 8
  %79 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AF_INET, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %77
  %84 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %85 = load %struct.nf_hook_state*, %struct.nf_hook_state** %11, align 8
  %86 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.nf_hook_state*, %struct.nf_hook_state** %11, align 8
  %89 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load %union.nf_inet_addr*, %union.nf_inet_addr** %13, align 8
  %93 = bitcast %union.nf_inet_addr* %92 to i32*
  %94 = load %union.nf_inet_addr*, %union.nf_inet_addr** %20, align 8
  %95 = bitcast %union.nf_inet_addr* %94 to i32*
  %96 = call i32 @nf_l4proto_log_invalid(%struct.sk_buff* %84, i32 %87, i64 %90, i32 %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %93, i32* %95)
  br label %118

97:                                               ; preds = %77
  %98 = load %struct.nf_hook_state*, %struct.nf_hook_state** %11, align 8
  %99 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @AF_INET6, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %97
  %104 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %105 = load %struct.nf_hook_state*, %struct.nf_hook_state** %11, align 8
  %106 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.nf_hook_state*, %struct.nf_hook_state** %11, align 8
  %109 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load %union.nf_inet_addr*, %union.nf_inet_addr** %13, align 8
  %113 = bitcast %union.nf_inet_addr* %112 to i32*
  %114 = load %union.nf_inet_addr*, %union.nf_inet_addr** %20, align 8
  %115 = bitcast %union.nf_inet_addr* %114 to i32*
  %116 = call i32 @nf_l4proto_log_invalid(%struct.sk_buff* %104, i32 %107, i64 %110, i32 %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %113, i32* %115)
  br label %117

117:                                              ; preds = %103, %97
  br label %118

118:                                              ; preds = %117, %83
  %119 = load %struct.nf_conn*, %struct.nf_conn** %22, align 8
  %120 = call i32 @nf_ct_put(%struct.nf_conn* %119)
  %121 = load i32, i32* @NF_ACCEPT, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %7, align 4
  br label %140

123:                                              ; preds = %59
  %124 = load i32, i32* @IP_CT_RELATED, align 4
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load i64, i64* @IP_CT_IS_REPLY, align 8
  %130 = load i32, i32* %18, align 4
  %131 = zext i32 %130 to i64
  %132 = add nsw i64 %131, %129
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %18, align 4
  br label %134

134:                                              ; preds = %128, %123
  %135 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %136 = load %struct.nf_conn*, %struct.nf_conn** %22, align 8
  %137 = load i32, i32* %18, align 4
  %138 = call i32 @nf_ct_set(%struct.sk_buff* %135, %struct.nf_conn* %136, i32 %137)
  %139 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %134, %118, %56, %45, %39
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @skb_nfct(%struct.sk_buff*) #1

declare dso_local %struct.nf_conntrack_zone* @nf_ct_zone_tmpl(%struct.nf_conn*, %struct.sk_buff*, %struct.nf_conntrack_zone*) #1

declare dso_local i32 @nf_ct_get_tuplepr(%struct.sk_buff*, i32, i64, i32, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @nf_ct_invert_tuple(%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(i32, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i32 @NF_CT_DIRECTION(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i32 @nf_inet_addr_cmp(%union.nf_inet_addr*, %union.nf_inet_addr*) #1

declare dso_local i32 @nf_l4proto_log_invalid(%struct.sk_buff*, i32, i64, i32, i8*, i32*, i32*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_set(%struct.sk_buff*, %struct.nf_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
