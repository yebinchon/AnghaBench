; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_q931.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_q931.c"
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
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_25__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i8* }
%struct.nf_ct_h323_master = type { i8** }
%union.nf_inet_addr = type { i32 }

@ip_nat_q931_expect = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"nf_nat_ras: out of TCP ports\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"nf_nat_ras: expect Q.931 %pI4:%hu->%pI4:%hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32*, i32, i8*, %struct.nf_conntrack_expect*)* @nat_q931 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat_q931(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3, i8** %4, i32* %5, i32 %6, i8* %7, %struct.nf_conntrack_expect* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.nf_conn*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.nf_conntrack_expect*, align 8
  %20 = alloca %struct.nf_ct_h323_master*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %union.nf_inet_addr, align 4
  %24 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %11, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8** %4, i8*** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store %struct.nf_conntrack_expect* %8, %struct.nf_conntrack_expect** %19, align 8
  %25 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %26 = call %struct.nf_ct_h323_master* @nfct_help_data(%struct.nf_conn* %25)
  store %struct.nf_ct_h323_master* %26, %struct.nf_ct_h323_master** %20, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @CTINFO2DIR(i32 %27)
  store i32 %28, i32* %21, align 4
  %29 = load i8*, i8** %18, align 8
  %30 = call i64 @ntohs(i8* %29)
  store i64 %30, i64* %22, align 8
  %31 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %32 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %39 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  store i8* %37, i8** %41, align 8
  %42 = load i32, i32* @ip_nat_q931_expect, align 4
  %43 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %44 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %21, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %50 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %20, align 8
  %52 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %21, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %18, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %9
  %61 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %20, align 8
  %62 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %21, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %63, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @ntohs(i8* %70)
  store i64 %71, i64* %22, align 8
  br label %72

72:                                               ; preds = %60, %9
  br label %73

73:                                               ; preds = %98, %72
  %74 = load i64, i64* %22, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %73
  %77 = load i64, i64* %22, align 8
  %78 = call i8* @htons(i64 %77)
  %79 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %80 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  store i8* %78, i8** %84, align 8
  %85 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %86 = call i32 @nf_ct_expect_related(%struct.nf_conntrack_expect* %85, i32 0)
  store i32 %86, i32* %24, align 4
  %87 = load i32, i32* %24, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  br label %101

90:                                               ; preds = %76
  %91 = load i32, i32* %24, align 4
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
  br label %73

101:                                              ; preds = %95, %89, %73
  %102 = load i64, i64* %22, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call i32 @net_notice_ratelimited(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %230

106:                                              ; preds = %101
  %107 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i8**, i8*** %15, align 8
  %110 = load i32*, i32** %16, align 8
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %115 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %114, i32 0, i32 0
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = load i32, i32* %21, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  %126 = load i64, i64* %22, align 8
  %127 = call i8* @htons(i64 %126)
  %128 = call i64 @set_h225_addr(%struct.sk_buff* %107, i32 %108, i8** %109, i32 0, i32* %113, i32* %125, i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %106
  %131 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %132 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %131)
  store i32 -1, i32* %10, align 4
  br label %230

133:                                              ; preds = %106
  %134 = load i8*, i8** %18, align 8
  %135 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %20, align 8
  %136 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %135, i32 0, i32 0
  %137 = load i8**, i8*** %136, align 8
  %138 = load i32, i32* %21, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  store i8* %134, i8** %140, align 8
  %141 = load i64, i64* %22, align 8
  %142 = call i8* @htons(i64 %141)
  %143 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %20, align 8
  %144 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %143, i32 0, i32 0
  %145 = load i8**, i8*** %144, align 8
  %146 = load i32, i32* %21, align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %145, i64 %150
  store i8* %142, i8** %151, align 8
  %152 = load i32, i32* %17, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %202

154:                                              ; preds = %133
  %155 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %156 = load i8**, i8*** %15, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = load i32*, i32** %16, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = call i64 @get_h225_addr(%struct.nf_conn* %155, i8* %157, i32* %159, %union.nf_inet_addr* %23, i8** %18)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %202

162:                                              ; preds = %154
  %163 = bitcast %union.nf_inet_addr* %23 to i32*
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @ntohl(i32 %164)
  %166 = and i32 %165, -16777216
  %167 = icmp eq i32 %166, 2130706432
  br i1 %167, label %168, label %202

168:                                              ; preds = %162
  %169 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %170 = load i32, i32* %14, align 4
  %171 = load i8**, i8*** %15, align 8
  %172 = load i32*, i32** %16, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %175 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %174, i32 0, i32 0
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %175, align 8
  %177 = load i32, i32* %21, align 4
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  %186 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %20, align 8
  %187 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %186, i32 0, i32 0
  %188 = load i8**, i8*** %187, align 8
  %189 = load i32, i32* %21, align 4
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %188, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = call i64 @set_h225_addr(%struct.sk_buff* %169, i32 %170, i8** %171, i32 0, i32* %173, i32* %185, i8* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %168
  %199 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %200 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %199)
  store i32 -1, i32* %10, align 4
  br label %230

201:                                              ; preds = %168
  br label %202

202:                                              ; preds = %201, %162, %154, %133
  %203 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %204 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  %208 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %209 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = call i64 @ntohs(i8* %214)
  %216 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %217 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %222 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = call i64 @ntohs(i8* %227)
  %229 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32* %207, i64 %215, i32* %220, i64 %228)
  store i32 0, i32* %10, align 4
  br label %230

230:                                              ; preds = %202, %198, %130, %104
  %231 = load i32, i32* %10, align 4
  ret i32 %231
}

declare dso_local %struct.nf_ct_h323_master* @nfct_help_data(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @ntohs(i8*) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @nf_ct_expect_related(%struct.nf_conntrack_expect*, i32) #1

declare dso_local i32 @net_notice_ratelimited(i8*) #1

declare dso_local i64 @set_h225_addr(%struct.sk_buff*, i32, i8**, i32, i32*, i32*, i8*) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i64 @get_h225_addr(%struct.nf_conn*, i8*, i32*, %union.nf_inet_addr*, i8**) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @pr_debug(i8*, i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
