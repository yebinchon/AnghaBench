; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_15__, %struct.TYPE_23__ }
%struct.TYPE_15__ = type { %struct.TYPE_28__, %struct.TYPE_26__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.nf_nat_hook = type { i64 (%struct.sk_buff*, %struct.nf_conn*, i32, i64)* }
%struct.nf_conn = type opaque
%struct.nf_conn.0 = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_25__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_27__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_21__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@IPS_SRC_NAT = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@IPS_DST_NAT = common dso_local global i32 0, align 4
@nf_nat_hook = common dso_local global i32 0, align 4
@NF_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i64 0, align 8
@NF_NAT_MANIP_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*)* @nf_conntrack_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_conntrack_update(%struct.net* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %7 = alloca %struct.nf_conntrack_tuple, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_nat_hook*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_conn.0*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.nf_conn.0* @nf_ct_get(%struct.sk_buff* %15, i32* %8)
  store %struct.nf_conn.0* %16, %struct.nf_conn.0** %11, align 8
  %17 = load %struct.nf_conn.0*, %struct.nf_conn.0** %11, align 8
  %18 = icmp ne %struct.nf_conn.0* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.nf_conn.0*, %struct.nf_conn.0** %11, align 8
  %21 = call i64 @nf_ct_is_confirmed(%struct.nf_conn.0* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %180

24:                                               ; preds = %19
  %25 = load %struct.nf_conn.0*, %struct.nf_conn.0** %11, align 8
  %26 = call i32 @nf_ct_l3num(%struct.nf_conn.0* %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @skb_network_offset(%struct.sk_buff* %28)
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @get_l4proto(%struct.sk_buff* %27, i32 %29, i32 %30, i32* %14)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %180

35:                                               ; preds = %24
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @skb_network_offset(%struct.sk_buff* %37)
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.net*, %struct.net** %4, align 8
  %43 = call i32 @nf_ct_get_tuple(%struct.sk_buff* %36, i32 %38, i32 %39, i32 %40, i32 %41, %struct.net* %42, %struct.nf_conntrack_tuple* %7)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %180

46:                                               ; preds = %35
  %47 = load %struct.nf_conn.0*, %struct.nf_conn.0** %11, align 8
  %48 = getelementptr inbounds %struct.nf_conn.0, %struct.nf_conn.0* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IPS_SRC_NAT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %7, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nf_conn.0*, %struct.nf_conn.0** %11, align 8
  %59 = getelementptr inbounds %struct.nf_conn.0, %struct.nf_conn.0* %58, i32 0, i32 1
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @memcpy(i32 %57, i32 %67, i32 4)
  %69 = load %struct.nf_conn.0*, %struct.nf_conn.0** %11, align 8
  %70 = getelementptr inbounds %struct.nf_conn.0, %struct.nf_conn.0* %69, i32 0, i32 1
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  %72 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %7, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %53, %46
  %83 = load %struct.nf_conn.0*, %struct.nf_conn.0** %11, align 8
  %84 = getelementptr inbounds %struct.nf_conn.0, %struct.nf_conn.0* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IPS_DST_NAT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %118

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %7, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.nf_conn.0*, %struct.nf_conn.0** %11, align 8
  %95 = getelementptr inbounds %struct.nf_conn.0, %struct.nf_conn.0* %94, i32 0, i32 1
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memcpy(i32 %93, i32 %103, i32 4)
  %105 = load %struct.nf_conn.0*, %struct.nf_conn.0** %11, align 8
  %106 = getelementptr inbounds %struct.nf_conn.0, %struct.nf_conn.0* %105, i32 0, i32 1
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %7, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 4
  br label %118

118:                                              ; preds = %89, %82
  %119 = load %struct.net*, %struct.net** %4, align 8
  %120 = load %struct.nf_conn.0*, %struct.nf_conn.0** %11, align 8
  %121 = call i32 @nf_ct_zone(%struct.nf_conn.0* %120)
  %122 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net* %119, i32 %121, %struct.nf_conntrack_tuple* %7)
  store %struct.nf_conntrack_tuple_hash* %122, %struct.nf_conntrack_tuple_hash** %6, align 8
  %123 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %6, align 8
  %124 = icmp ne %struct.nf_conntrack_tuple_hash* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %118
  store i32 0, i32* %3, align 4
  br label %180

126:                                              ; preds = %118
  %127 = load %struct.nf_conn.0*, %struct.nf_conn.0** %11, align 8
  %128 = getelementptr inbounds %struct.nf_conn.0, %struct.nf_conn.0* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %10, align 4
  %130 = load %struct.nf_conn.0*, %struct.nf_conn.0** %11, align 8
  %131 = call i32 @nf_ct_put(%struct.nf_conn.0* %130)
  %132 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %6, align 8
  %133 = call %struct.nf_conn.0* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %132)
  store %struct.nf_conn.0* %133, %struct.nf_conn.0** %11, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = load %struct.nf_conn.0*, %struct.nf_conn.0** %11, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @nf_ct_set(%struct.sk_buff* %134, %struct.nf_conn.0* %135, i32 %136)
  %138 = load i32, i32* @nf_nat_hook, align 4
  %139 = call %struct.nf_nat_hook* @rcu_dereference(i32 %138)
  store %struct.nf_nat_hook* %139, %struct.nf_nat_hook** %9, align 8
  %140 = load %struct.nf_nat_hook*, %struct.nf_nat_hook** %9, align 8
  %141 = icmp ne %struct.nf_nat_hook* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %180

143:                                              ; preds = %126
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @IPS_SRC_NAT, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %143
  %149 = load %struct.nf_nat_hook*, %struct.nf_nat_hook** %9, align 8
  %150 = getelementptr inbounds %struct.nf_nat_hook, %struct.nf_nat_hook* %149, i32 0, i32 0
  %151 = load i64 (%struct.sk_buff*, %struct.nf_conn*, i32, i64)*, i64 (%struct.sk_buff*, %struct.nf_conn*, i32, i64)** %150, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %153 = load %struct.nf_conn.0*, %struct.nf_conn.0** %11, align 8
  %154 = bitcast %struct.nf_conn.0* %153 to %struct.nf_conn*
  %155 = load i32, i32* @NF_NAT_MANIP_SRC, align 4
  %156 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %157 = call i64 %151(%struct.sk_buff* %152, %struct.nf_conn* %154, i32 %155, i64 %156)
  %158 = load i64, i64* @NF_DROP, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %148
  store i32 -1, i32* %3, align 4
  br label %180

161:                                              ; preds = %148, %143
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @IPS_DST_NAT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %161
  %167 = load %struct.nf_nat_hook*, %struct.nf_nat_hook** %9, align 8
  %168 = getelementptr inbounds %struct.nf_nat_hook, %struct.nf_nat_hook* %167, i32 0, i32 0
  %169 = load i64 (%struct.sk_buff*, %struct.nf_conn*, i32, i64)*, i64 (%struct.sk_buff*, %struct.nf_conn*, i32, i64)** %168, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %171 = load %struct.nf_conn.0*, %struct.nf_conn.0** %11, align 8
  %172 = bitcast %struct.nf_conn.0* %171 to %struct.nf_conn*
  %173 = load i32, i32* @NF_NAT_MANIP_DST, align 4
  %174 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %175 = call i64 %169(%struct.sk_buff* %170, %struct.nf_conn* %172, i32 %173, i64 %174)
  %176 = load i64, i64* @NF_DROP, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %166
  store i32 -1, i32* %3, align 4
  br label %180

179:                                              ; preds = %166, %161
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %179, %178, %160, %142, %125, %45, %34, %23
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.nf_conn.0* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i64 @nf_ct_is_confirmed(%struct.nf_conn.0*) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn.0*) #1

declare dso_local i32 @get_l4proto(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @nf_ct_get_tuple(%struct.sk_buff*, i32, i32, i32, i32, %struct.net*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net*, i32, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @nf_ct_zone(%struct.nf_conn.0*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn.0*) #1

declare dso_local %struct.nf_conn.0* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i32 @nf_ct_set(%struct.sk_buff*, %struct.nf_conn.0*, i32) #1

declare dso_local %struct.nf_nat_hook* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
