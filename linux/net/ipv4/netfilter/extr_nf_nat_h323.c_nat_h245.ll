; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_h245.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_h245.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.nf_conntrack_expect = type { i32, %struct.TYPE_19__, i32, %struct.TYPE_21__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_28__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_25__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.nf_ct_h323_master = type { i64* }

@nf_nat_follow_master = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"nf_nat_q931: out of TCP ports\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"nf_nat_q931: expect H.245 %pI4:%hu->%pI4:%hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*, i64, %struct.nf_conntrack_expect*)* @nat_h245 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat_h245(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3, i8** %4, i32 %5, i32* %6, i64 %7, %struct.nf_conntrack_expect* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.nf_conn*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.nf_conntrack_expect*, align 8
  %20 = alloca %struct.nf_ct_h323_master*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %11, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8** %4, i8*** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i64 %7, i64* %18, align 8
  store %struct.nf_conntrack_expect* %8, %struct.nf_conntrack_expect** %19, align 8
  %24 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %25 = call %struct.nf_ct_h323_master* @nfct_help_data(%struct.nf_conn* %24)
  store %struct.nf_ct_h323_master* %25, %struct.nf_ct_h323_master** %20, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @CTINFO2DIR(i32 %26)
  store i32 %27, i32* %21, align 4
  %28 = load i64, i64* %18, align 8
  %29 = call i64 @ntohs(i64 %28)
  store i64 %29, i64* %22, align 8
  %30 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %31 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %38 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  %41 = load i32, i32* @nf_nat_follow_master, align 4
  %42 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %43 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %21, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %49 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %20, align 8
  %51 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %21, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %18, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %9
  %60 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %20, align 8
  %61 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %21, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %62, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @ntohs(i64 %69)
  store i64 %70, i64* %22, align 8
  br label %71

71:                                               ; preds = %59, %9
  br label %72

72:                                               ; preds = %98, %71
  %73 = load i64, i64* %22, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %101

75:                                               ; preds = %72
  %76 = load i64, i64* %22, align 8
  %77 = call i8* @htons(i64 %76)
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %80 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  store i64 %78, i64* %84, align 8
  %85 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %86 = call i32 @nf_ct_expect_related(%struct.nf_conntrack_expect* %85, i32 0)
  store i32 %86, i32* %23, align 4
  %87 = load i32, i32* %23, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %101

90:                                               ; preds = %75
  %91 = load i32, i32* %23, align 4
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i64 0, i64* %22, align 8
  br label %101

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %22, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %22, align 8
  br label %72

101:                                              ; preds = %95, %89, %72
  %102 = load i64, i64* %22, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call i32 @net_notice_ratelimited(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %178

106:                                              ; preds = %101
  %107 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i8**, i8*** %15, align 8
  %110 = load i32, i32* %16, align 4
  %111 = load i32*, i32** %17, align 8
  %112 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %113 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %112, i32 0, i32 0
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %113, align 8
  %115 = load i32, i32* %21, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load i64, i64* %22, align 8
  %125 = call i8* @htons(i64 %124)
  %126 = call i64 @set_h225_addr(%struct.sk_buff* %107, i32 %108, i8** %109, i32 %110, i32* %111, i32* %123, i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %106
  %129 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %130 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %129)
  store i32 -1, i32* %10, align 4
  br label %178

131:                                              ; preds = %106
  %132 = load i64, i64* %18, align 8
  %133 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %20, align 8
  %134 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %21, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  store i64 %132, i64* %138, align 8
  %139 = load i64, i64* %22, align 8
  %140 = call i8* @htons(i64 %139)
  %141 = ptrtoint i8* %140 to i64
  %142 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %20, align 8
  %143 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %21, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %144, i64 %149
  store i64 %141, i64* %150, align 8
  %151 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %152 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 0
  %156 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %157 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @ntohs(i64 %162)
  %164 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %165 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %170 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i64 @ntohs(i64 %175)
  %177 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32* %155, i64 %163, i32* %168, i64 %176)
  store i32 0, i32* %10, align 4
  br label %178

178:                                              ; preds = %131, %128, %104
  %179 = load i32, i32* %10, align 4
  ret i32 %179
}

declare dso_local %struct.nf_ct_h323_master* @nfct_help_data(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @nf_ct_expect_related(%struct.nf_conntrack_expect*, i32) #1

declare dso_local i32 @net_notice_ratelimited(i8*) #1

declare dso_local i64 @set_h225_addr(%struct.sk_buff*, i32, i8**, i32, i32*, i32*, i8*) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @pr_debug(i8*, i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
