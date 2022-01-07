; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_nfacct.c_nfacct_mt_checkentry.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_nfacct.c_nfacct_mt_checkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { i32, %struct.xt_nfacct_match_info* }
%struct.xt_nfacct_match_info = type { %struct.nf_acct*, i32 }
%struct.nf_acct = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"accounting object `%s' does not exists\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @nfacct_mt_checkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfacct_mt_checkentry(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_nfacct_match_info*, align 8
  %5 = alloca %struct.nf_acct*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 1
  %8 = load %struct.xt_nfacct_match_info*, %struct.xt_nfacct_match_info** %7, align 8
  store %struct.xt_nfacct_match_info* %8, %struct.xt_nfacct_match_info** %4, align 8
  %9 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %10 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.xt_nfacct_match_info*, %struct.xt_nfacct_match_info** %4, align 8
  %13 = getelementptr inbounds %struct.xt_nfacct_match_info, %struct.xt_nfacct_match_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.nf_acct* @nfnl_acct_find_get(i32 %11, i32 %14)
  store %struct.nf_acct* %15, %struct.nf_acct** %5, align 8
  %16 = load %struct.nf_acct*, %struct.nf_acct** %5, align 8
  %17 = icmp eq %struct.nf_acct* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.xt_nfacct_match_info*, %struct.xt_nfacct_match_info** %4, align 8
  %20 = getelementptr inbounds %struct.xt_nfacct_match_info, %struct.xt_nfacct_match_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.nf_acct*, %struct.nf_acct** %5, align 8
  %27 = load %struct.xt_nfacct_match_info*, %struct.xt_nfacct_match_info** %4, align 8
  %28 = getelementptr inbounds %struct.xt_nfacct_match_info, %struct.xt_nfacct_match_info* %27, i32 0, i32 0
  store %struct.nf_acct* %26, %struct.nf_acct** %28, align 8
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %18
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.nf_acct* @nfnl_acct_find_get(i32, i32) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
