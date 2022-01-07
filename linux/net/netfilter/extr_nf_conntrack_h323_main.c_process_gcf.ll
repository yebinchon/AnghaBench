; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_process_gcf.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_process_gcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.nf_conntrack_expect = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"nf_ct_ras: GCF\0A\00", align 1
@IPS_EXPECTED_BIT = common dso_local global i32 0, align 4
@NF_CT_EXPECT_CLASS_DEFAULT = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@nf_conntrack_helper_ras = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"nf_ct_ras: expect RAS \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, %struct.TYPE_13__*)* @process_gcf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_gcf(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3, i8** %4, %struct.TYPE_13__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %union.nf_inet_addr, align 4
  %18 = alloca %struct.nf_conntrack_expect*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %13, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @CTINFO2DIR(i32 %19)
  store i32 %20, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %23 = load i8**, i8*** %12, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = call i32 @get_h225_addr(%struct.nf_conn* %22, i8* %24, i32* %26, %union.nf_inet_addr* %17, i64* %16)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %105

30:                                               ; preds = %6
  %31 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %32 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = call i32 @memcmp(%union.nf_inet_addr* %17, i32* %39, i32 4)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %30
  %43 = load i64, i64* %16, align 8
  %44 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %45 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %43, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %105

58:                                               ; preds = %42, %30
  %59 = load i32, i32* @IPS_EXPECTED_BIT, align 4
  %60 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %61 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %60, i32 0, i32 1
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %105

65:                                               ; preds = %58
  %66 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %67 = call %struct.nf_conntrack_expect* @nf_ct_expect_alloc(%struct.nf_conn* %66)
  store %struct.nf_conntrack_expect* %67, %struct.nf_conntrack_expect** %18, align 8
  %68 = icmp eq %struct.nf_conntrack_expect* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 -1, i32* %7, align 4
  br label %105

70:                                               ; preds = %65
  %71 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %72 = load i32, i32* @NF_CT_EXPECT_CLASS_DEFAULT, align 4
  %73 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %74 = call i32 @nf_ct_l3num(%struct.nf_conn* %73)
  %75 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %76 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %75, i32 0, i32 0
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* @IPPROTO_UDP, align 4
  %88 = call i32 @nf_ct_expect_init(%struct.nf_conntrack_expect* %71, i32 %72, i32 %74, i32* %86, %union.nf_inet_addr* %17, i32 %87, i32* null, i64* %16)
  %89 = load i32, i32* @nf_conntrack_helper_ras, align 4
  %90 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %91 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %93 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %92, i32 0)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %70
  %96 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %98 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %97, i32 0, i32 0
  %99 = call i32 @nf_ct_dump_tuple(i32* %98)
  br label %101

100:                                              ; preds = %70
  store i32 -1, i32* %15, align 4
  br label %101

101:                                              ; preds = %100, %95
  %102 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %103 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %102)
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %69, %64, %57, %29
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @get_h225_addr(%struct.nf_conn*, i8*, i32*, %union.nf_inet_addr*, i64*) #1

declare dso_local i32 @memcmp(%union.nf_inet_addr*, i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.nf_conntrack_expect* @nf_ct_expect_alloc(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_expect_init(%struct.nf_conntrack_expect*, i32, i32, i32*, %union.nf_inet_addr*, i32, i32*, i64*) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i64 @nf_ct_expect_related(%struct.nf_conntrack_expect*, i32) #1

declare dso_local i32 @nf_ct_dump_tuple(i32*) #1

declare dso_local i32 @nf_ct_expect_put(%struct.nf_conntrack_expect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
