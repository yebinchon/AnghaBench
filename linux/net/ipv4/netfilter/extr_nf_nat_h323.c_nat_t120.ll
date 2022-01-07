; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_t120.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_t120.c"
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
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_25__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }

@nf_nat_follow_master = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"nf_nat_h323: out of TCP ports\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"nf_nat_h323: expect T.120 %pI4:%hu->%pI4:%hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*, i32, %struct.nf_conntrack_expect*)* @nat_t120 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat_t120(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3, i8** %4, i32 %5, i32* %6, i32 %7, %struct.nf_conntrack_expect* %8) #0 {
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
  %25 = load i32, i32* %18, align 4
  %26 = call i64 @ntohs(i32 %25)
  store i64 %26, i64* %21, align 8
  %27 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %28 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %35 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* @nf_nat_follow_master, align 4
  %39 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %40 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %20, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %46 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %72, %9
  %48 = load i64, i64* %21, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %47
  %51 = load i64, i64* %21, align 8
  %52 = call i32 @htons(i64 %51)
  %53 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %54 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  store i32 %52, i32* %58, align 4
  %59 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %60 = call i32 @nf_ct_expect_related(%struct.nf_conntrack_expect* %59, i32 0)
  store i32 %60, i32* %22, align 4
  %61 = load i32, i32* %22, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %75

64:                                               ; preds = %50
  %65 = load i32, i32* %22, align 4
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i64 0, i64* %21, align 8
  br label %75

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %21, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %21, align 8
  br label %47

75:                                               ; preds = %69, %63, %47
  %76 = load i64, i64* %21, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 @net_notice_ratelimited(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %133

80:                                               ; preds = %75
  %81 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load i8**, i8*** %15, align 8
  %84 = load i32, i32* %16, align 4
  %85 = load i32*, i32** %17, align 8
  %86 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %87 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %86, i32 0, i32 0
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %87, align 8
  %89 = load i32, i32* %20, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i64, i64* %21, align 8
  %99 = call i32 @htons(i64 %98)
  %100 = call i64 @set_h245_addr(%struct.sk_buff* %81, i32 %82, i8** %83, i32 %84, i32* %85, i32* %97, i32 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %80
  %103 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %104 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %103)
  store i32 -1, i32* %10, align 4
  br label %133

105:                                              ; preds = %80
  %106 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %107 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 0
  %111 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %112 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @ntohs(i32 %117)
  %119 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %120 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %125 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @ntohs(i32 %130)
  %132 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32* %110, i64 %118, i32* %123, i64 %131)
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %105, %102, %78
  %134 = load i32, i32* %10, align 4
  ret i32 %134
}

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @nf_ct_expect_related(%struct.nf_conntrack_expect*, i32) #1

declare dso_local i32 @net_notice_ratelimited(i8*) #1

declare dso_local i64 @set_h245_addr(%struct.sk_buff*, i32, i8**, i32, i32*, i32*, i32) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @pr_debug(i8*, i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
