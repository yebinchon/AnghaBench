; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_expect_obj_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_expect_obj_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_object = type { i32 }
%struct.nft_regs = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.nft_pktinfo = type { i32 }
%struct.nft_ct_expect_obj = type { i64, i64, i32, i32, i32 }
%struct.nf_conntrack_expect = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.nf_conn_help = type { i64* }
%struct.nf_conn = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@IP_CT_UNTRACKED = common dso_local global i32 0, align 4
@NFT_BREAK = common dso_local global i8* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i8* null, align 8
@NF_CT_EXPECT_CLASS_DEFAULT = common dso_local global i64 0, align 8
@NFPROTO_INET = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_object*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_ct_expect_obj_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_ct_expect_obj_eval(%struct.nft_object* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_object*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_ct_expect_obj*, align 8
  %8 = alloca %struct.nf_conntrack_expect*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conn_help*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.nf_conn*, align 8
  store %struct.nft_object* %0, %struct.nft_object** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %14 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %15 = call %struct.nft_ct_expect_obj* @nft_obj_data(%struct.nft_object* %14)
  store %struct.nft_ct_expect_obj* %15, %struct.nft_ct_expect_obj** %7, align 8
  %16 = load %struct.nft_ct_expect_obj*, %struct.nft_ct_expect_obj** %7, align 8
  %17 = getelementptr inbounds %struct.nft_ct_expect_obj, %struct.nft_ct_expect_obj* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  %19 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %20 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.nf_conn* @nf_ct_get(i32 %21, i32* %9)
  store %struct.nf_conn* %22, %struct.nf_conn** %13, align 8
  %23 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %24 = icmp ne %struct.nf_conn* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @IP_CT_UNTRACKED, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %3
  %30 = load i8*, i8** @NFT_BREAK, align 8
  %31 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %32 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  br label %139

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @CTINFO2DIR(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %38 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %37)
  store %struct.nf_conn_help* %38, %struct.nf_conn_help** %10, align 8
  %39 = load %struct.nf_conn_help*, %struct.nf_conn_help** %10, align 8
  %40 = icmp ne %struct.nf_conn_help* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn* %42, i32 %43)
  store %struct.nf_conn_help* %44, %struct.nf_conn_help** %10, align 8
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.nf_conn_help*, %struct.nf_conn_help** %10, align 8
  %47 = icmp ne %struct.nf_conn_help* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** @NF_DROP, align 8
  %50 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %51 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  store i8* %49, i8** %52, align 8
  br label %139

53:                                               ; preds = %45
  %54 = load %struct.nf_conn_help*, %struct.nf_conn_help** %10, align 8
  %55 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @NF_CT_EXPECT_CLASS_DEFAULT, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nft_ct_expect_obj*, %struct.nft_ct_expect_obj** %7, align 8
  %61 = getelementptr inbounds %struct.nft_ct_expect_obj, %struct.nft_ct_expect_obj* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load i8*, i8** @NFT_BREAK, align 8
  %66 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %67 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  br label %139

69:                                               ; preds = %53
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* @NFPROTO_INET, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %75 = call i64 @nf_ct_l3num(%struct.nf_conn* %74)
  store i64 %75, i64* %12, align 8
  br label %76

76:                                               ; preds = %73, %69
  %77 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %78 = call %struct.nf_conntrack_expect* @nf_ct_expect_alloc(%struct.nf_conn* %77)
  store %struct.nf_conntrack_expect* %78, %struct.nf_conntrack_expect** %8, align 8
  %79 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %8, align 8
  %80 = icmp eq %struct.nf_conntrack_expect* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i8*, i8** @NF_DROP, align 8
  %83 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %84 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  br label %139

86:                                               ; preds = %76
  %87 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %8, align 8
  %88 = load i64, i64* @NF_CT_EXPECT_CLASS_DEFAULT, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %91 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %103 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load %struct.nft_ct_expect_obj*, %struct.nft_ct_expect_obj** %7, align 8
  %115 = getelementptr inbounds %struct.nft_ct_expect_obj, %struct.nft_ct_expect_obj* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.nft_ct_expect_obj*, %struct.nft_ct_expect_obj** %7, align 8
  %118 = getelementptr inbounds %struct.nft_ct_expect_obj, %struct.nft_ct_expect_obj* %117, i32 0, i32 3
  %119 = call i32 @nf_ct_expect_init(%struct.nf_conntrack_expect* %87, i64 %88, i64 %89, i32* %101, i32* %113, i32 %116, i32* null, i32* %118)
  %120 = load i64, i64* @jiffies, align 8
  %121 = load %struct.nft_ct_expect_obj*, %struct.nft_ct_expect_obj** %7, align 8
  %122 = getelementptr inbounds %struct.nft_ct_expect_obj, %struct.nft_ct_expect_obj* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @HZ, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %120, %126
  %128 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %8, align 8
  %129 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store i64 %127, i64* %130, align 8
  %131 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %8, align 8
  %132 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %131, i32 0)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %86
  %135 = load i8*, i8** @NF_DROP, align 8
  %136 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %137 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store i8* %135, i8** %138, align 8
  br label %139

139:                                              ; preds = %29, %48, %64, %81, %134, %86
  ret void
}

declare dso_local %struct.nft_ct_expect_obj* @nft_obj_data(%struct.nft_object*) #1

declare dso_local %struct.nf_conn* @nf_ct_get(i32, i32*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn*, i32) #1

declare dso_local i64 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local %struct.nf_conntrack_expect* @nf_ct_expect_alloc(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_expect_init(%struct.nf_conntrack_expect*, i64, i64, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @nf_ct_expect_related(%struct.nf_conntrack_expect*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
