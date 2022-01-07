; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_log.c_nft_log_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_log.c_nft_log_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_log = type { i64, %struct.nf_loginfo }
%struct.nf_loginfo = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@nft_log_null_prefix = common dso_local global i64 0, align 8
@NFT_LOGLEVEL_AUDIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.nft_expr*)* @nft_log_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_log_destroy(%struct.nft_ctx* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca %struct.nft_ctx*, align 8
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_log*, align 8
  %6 = alloca %struct.nf_loginfo*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %3, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %4, align 8
  %7 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %8 = call %struct.nft_log* @nft_expr_priv(%struct.nft_expr* %7)
  store %struct.nft_log* %8, %struct.nft_log** %5, align 8
  %9 = load %struct.nft_log*, %struct.nft_log** %5, align 8
  %10 = getelementptr inbounds %struct.nft_log, %struct.nft_log* %9, i32 0, i32 1
  store %struct.nf_loginfo* %10, %struct.nf_loginfo** %6, align 8
  %11 = load %struct.nft_log*, %struct.nft_log** %5, align 8
  %12 = getelementptr inbounds %struct.nft_log, %struct.nft_log* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @nft_log_null_prefix, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.nft_log*, %struct.nft_log** %5, align 8
  %18 = getelementptr inbounds %struct.nft_log, %struct.nft_log* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @kfree(i64 %19)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load %struct.nf_loginfo*, %struct.nf_loginfo** %6, align 8
  %23 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NFT_LOGLEVEL_AUDIT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %38

30:                                               ; preds = %21
  %31 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nf_loginfo*, %struct.nf_loginfo** %6, align 8
  %35 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @nf_logger_put(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %30, %29
  ret void
}

declare dso_local %struct.nft_log* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @nf_logger_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
