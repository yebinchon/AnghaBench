; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_tg.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ipt_clusterip_tgt_info* }
%struct.ipt_clusterip_tgt_info = type { i32 }
%struct.nf_conn = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@NF_DROP = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@XT_CONTINUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"hash=%u ct_hash=%u \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"not responsible\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"responsible\0A\00", align 1
@PACKET_HOST = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @clusterip_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterip_tg(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.ipt_clusterip_tgt_info*, align 8
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %10 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %11 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %10, i32 0, i32 0
  %12 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %11, align 8
  store %struct.ipt_clusterip_tgt_info* %12, %struct.ipt_clusterip_tgt_info** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %13, i32* %8)
  store %struct.nf_conn* %14, %struct.nf_conn** %7, align 8
  %15 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %16 = icmp eq %struct.nf_conn* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @NF_DROP, align 4
  store i32 %18, i32* %3, align 4
  br label %68

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IPPROTO_ICMP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 129
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 128
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %33, i32* %3, align 4
  br label %68

34:                                               ; preds = %29, %19
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %6, align 8
  %37 = getelementptr inbounds %struct.ipt_clusterip_tgt_info, %struct.ipt_clusterip_tgt_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @clusterip_hashfn(%struct.sk_buff* %35, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %46 [
    i32 130, label %41
    i32 129, label %45
    i32 128, label %45
    i32 132, label %45
    i32 131, label %45
  ]

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %44 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %47

45:                                               ; preds = %34, %34, %34, %34
  br label %47

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %45, %41
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %50 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %6, align 8
  %54 = getelementptr inbounds %struct.ipt_clusterip_tgt_info, %struct.ipt_clusterip_tgt_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @clusterip_responsible(i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %47
  %60 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @NF_DROP, align 4
  store i32 %61, i32* %3, align 4
  br label %68

62:                                               ; preds = %47
  %63 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @PACKET_HOST, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %59, %32, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.TYPE_4__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @clusterip_hashfn(%struct.sk_buff*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @clusterip_responsible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
