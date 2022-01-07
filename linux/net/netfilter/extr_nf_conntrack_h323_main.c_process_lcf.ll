; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_process_lcf.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_process_lcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.nf_conntrack_expect = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"nf_ct_ras: LCF\0A\00", align 1
@NF_CT_EXPECT_CLASS_DEFAULT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@NF_CT_EXPECT_PERMANENT = common dso_local global i32 0, align 4
@nf_conntrack_helper_q931 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"nf_ct_ras: expect Q.931 \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, %struct.TYPE_9__*)* @process_lcf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_lcf(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3, i8** %4, %struct.TYPE_9__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %union.nf_inet_addr, align 4
  %18 = alloca %struct.nf_conntrack_expect*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %13, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @CTINFO2DIR(i32 %19)
  store i32 %20, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %23 = load i8**, i8*** %12, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = call i32 @get_h225_addr(%struct.nf_conn* %22, i8* %24, i32* %26, %union.nf_inet_addr* %17, i32* %16)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %73

30:                                               ; preds = %6
  %31 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %32 = call %struct.nf_conntrack_expect* @nf_ct_expect_alloc(%struct.nf_conn* %31)
  store %struct.nf_conntrack_expect* %32, %struct.nf_conntrack_expect** %18, align 8
  %33 = icmp eq %struct.nf_conntrack_expect* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %7, align 4
  br label %73

35:                                               ; preds = %30
  %36 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %37 = load i32, i32* @NF_CT_EXPECT_CLASS_DEFAULT, align 4
  %38 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %39 = call i32 @nf_ct_l3num(%struct.nf_conn* %38)
  %40 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %41 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* @IPPROTO_TCP, align 4
  %53 = call i32 @nf_ct_expect_init(%struct.nf_conntrack_expect* %36, i32 %37, i32 %39, i32* %51, %union.nf_inet_addr* %17, i32 %52, i32* null, i32* %16)
  %54 = load i32, i32* @NF_CT_EXPECT_PERMANENT, align 4
  %55 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %56 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @nf_conntrack_helper_q931, align 4
  %58 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %59 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %61 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %60, i32 0)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %35
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %66 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %65, i32 0, i32 0
  %67 = call i32 @nf_ct_dump_tuple(i32* %66)
  br label %69

68:                                               ; preds = %35
  store i32 -1, i32* %15, align 4
  br label %69

69:                                               ; preds = %68, %63
  %70 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %71 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %70)
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %69, %34, %29
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @get_h225_addr(%struct.nf_conn*, i8*, i32*, %union.nf_inet_addr*, i32*) #1

declare dso_local %struct.nf_conntrack_expect* @nf_ct_expect_alloc(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_expect_init(%struct.nf_conntrack_expect*, i32, i32, i32*, %union.nf_inet_addr*, i32, i32*, i32*) #1

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
