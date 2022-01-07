; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_callforwarding.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_callforwarding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.nf_conntrack_expect = type { i32, %struct.TYPE_20__, i32, %struct.TYPE_23__, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_30__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.TYPE_27__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@ip_nat_callforwarding_expect = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"nf_nat_q931: out of TCP ports\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"nf_nat_q931: expect Call Forwarding %pI4:%hu->%pI4:%hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*, i32, %struct.nf_conntrack_expect*)* @nat_callforwarding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat_callforwarding(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3, i8** %4, i32 %5, i32* %6, i32 %7, %struct.nf_conntrack_expect* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.nf_conn*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.nf_conntrack_expect*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %11, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8** %4, i8*** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store %struct.nf_conntrack_expect* %8, %struct.nf_conntrack_expect** %19, align 8
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @CTINFO2DIR(i32 %23)
  store i32 %24, i32* %20, align 4
  %25 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %26 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %25, i32 0, i32 4
  %27 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %28 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = bitcast %struct.TYPE_16__* %26 to i8*
  %32 = bitcast %struct.TYPE_16__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %34 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %33, i32 0, i32 0
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %34, align 8
  %36 = load i32, i32* %20, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %48 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 4
  %52 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %53 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %60 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* @ip_nat_callforwarding_expect, align 4
  %64 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %65 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %20, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %71 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %18, align 4
  %73 = call i64 @ntohs(i32 %72)
  store i64 %73, i64* %21, align 8
  br label %74

74:                                               ; preds = %99, %9
  %75 = load i64, i64* %21, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %74
  %78 = load i64, i64* %21, align 8
  %79 = call i32 @htons(i64 %78)
  %80 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %81 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  store i32 %79, i32* %85, align 4
  %86 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %87 = call i32 @nf_ct_expect_related(%struct.nf_conntrack_expect* %86, i32 0)
  store i32 %87, i32* %22, align 4
  %88 = load i32, i32* %22, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %102

91:                                               ; preds = %77
  %92 = load i32, i32* %22, align 4
  %93 = load i32, i32* @EBUSY, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i64 0, i64* %21, align 8
  br label %102

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %21, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %21, align 8
  br label %74

102:                                              ; preds = %96, %90, %74
  %103 = load i64, i64* %21, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 @net_notice_ratelimited(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %160

107:                                              ; preds = %102
  %108 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i8**, i8*** %15, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load i32*, i32** %17, align 8
  %113 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %114 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %113, i32 0, i32 0
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %114, align 8
  %116 = load i32, i32* %20, align 4
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = load i64, i64* %21, align 8
  %126 = call i32 @htons(i64 %125)
  %127 = call i64 @set_h225_addr(%struct.sk_buff* %108, i32 %109, i8** %110, i32 %111, i32* %112, %struct.TYPE_21__* %124, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %107
  %130 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %131 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %130)
  store i32 -1, i32* %10, align 4
  br label %160

132:                                              ; preds = %107
  %133 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %134 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %136, i32 0, i32 0
  %138 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %139 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @ntohs(i32 %144)
  %146 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %147 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %152 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @ntohs(i32 %157)
  %159 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32* %137, i64 %145, i32* %150, i64 %158)
  store i32 0, i32* %10, align 4
  br label %160

160:                                              ; preds = %132, %129, %105
  %161 = load i32, i32* %10, align 4
  ret i32 %161
}

declare dso_local i32 @CTINFO2DIR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @nf_ct_expect_related(%struct.nf_conntrack_expect*, i32) #1

declare dso_local i32 @net_notice_ratelimited(i8*) #1

declare dso_local i64 @set_h225_addr(%struct.sk_buff*, i32, i8**, i32, i32*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @pr_debug(i8*, i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
