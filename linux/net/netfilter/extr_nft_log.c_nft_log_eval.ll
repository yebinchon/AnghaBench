; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_log.c_nft_log_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_log.c_nft_log_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.nft_log = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@NF_LOG_TYPE_LOG = common dso_local global i64 0, align 8
@NFT_LOGLEVEL_AUDIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_log_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_log_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_log*, align 8
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %8 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %9 = call %struct.nft_log* @nft_expr_priv(%struct.nft_expr* %8)
  store %struct.nft_log* %9, %struct.nft_log** %7, align 8
  %10 = load %struct.nft_log*, %struct.nft_log** %7, align 8
  %11 = getelementptr inbounds %struct.nft_log, %struct.nft_log* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NF_LOG_TYPE_LOG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.nft_log*, %struct.nft_log** %7, align 8
  %18 = getelementptr inbounds %struct.nft_log, %struct.nft_log* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NFT_LOGLEVEL_AUDIT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %27 = call i32 @nft_log_eval_audit(%struct.nft_pktinfo* %26)
  br label %48

28:                                               ; preds = %16, %3
  %29 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %30 = call i32 @nft_net(%struct.nft_pktinfo* %29)
  %31 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %32 = call i32 @nft_pf(%struct.nft_pktinfo* %31)
  %33 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %34 = call i32 @nft_hook(%struct.nft_pktinfo* %33)
  %35 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %36 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %39 = call i32 @nft_in(%struct.nft_pktinfo* %38)
  %40 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %41 = call i32 @nft_out(%struct.nft_pktinfo* %40)
  %42 = load %struct.nft_log*, %struct.nft_log** %7, align 8
  %43 = getelementptr inbounds %struct.nft_log, %struct.nft_log* %42, i32 0, i32 1
  %44 = load %struct.nft_log*, %struct.nft_log** %7, align 8
  %45 = getelementptr inbounds %struct.nft_log, %struct.nft_log* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @nf_log_packet(i32 %30, i32 %32, i32 %34, i32 %37, i32 %39, i32 %41, %struct.TYPE_6__* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %28, %25
  ret void
}

declare dso_local %struct.nft_log* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_log_eval_audit(%struct.nft_pktinfo*) #1

declare dso_local i32 @nf_log_packet(i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @nft_net(%struct.nft_pktinfo*) #1

declare dso_local i32 @nft_pf(%struct.nft_pktinfo*) #1

declare dso_local i32 @nft_hook(%struct.nft_pktinfo*) #1

declare dso_local i32 @nft_in(%struct.nft_pktinfo*) #1

declare dso_local i32 @nft_out(%struct.nft_pktinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
