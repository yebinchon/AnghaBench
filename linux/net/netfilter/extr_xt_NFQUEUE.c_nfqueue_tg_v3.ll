; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_NFQUEUE.c_nfqueue_tg_v3.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_NFQUEUE.c_nfqueue_tg_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_NFQ_info_v3* }
%struct.xt_NFQ_info_v3 = type { i32, i32, i64 }

@NFQ_FLAG_CPU_FANOUT = common dso_local global i32 0, align 4
@jhash_initval = common dso_local global i32 0, align 4
@NFQ_FLAG_BYPASS = common dso_local global i32 0, align 4
@NF_VERDICT_FLAG_QUEUE_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @nfqueue_tg_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfqueue_tg_v3(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_NFQ_info_v3*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %10 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %9, i32 0, i32 0
  %11 = load %struct.xt_NFQ_info_v3*, %struct.xt_NFQ_info_v3** %10, align 8
  store %struct.xt_NFQ_info_v3* %11, %struct.xt_NFQ_info_v3** %5, align 8
  %12 = load %struct.xt_NFQ_info_v3*, %struct.xt_NFQ_info_v3** %5, align 8
  %13 = getelementptr inbounds %struct.xt_NFQ_info_v3, %struct.xt_NFQ_info_v3* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.xt_NFQ_info_v3*, %struct.xt_NFQ_info_v3** %5, align 8
  %16 = getelementptr inbounds %struct.xt_NFQ_info_v3, %struct.xt_NFQ_info_v3* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %49

19:                                               ; preds = %2
  %20 = load %struct.xt_NFQ_info_v3*, %struct.xt_NFQ_info_v3** %5, align 8
  %21 = getelementptr inbounds %struct.xt_NFQ_info_v3, %struct.xt_NFQ_info_v3* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NFQ_FLAG_CPU_FANOUT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = call i32 (...) @smp_processor_id()
  store i32 %27, i32* %8, align 4
  %28 = load %struct.xt_NFQ_info_v3*, %struct.xt_NFQ_info_v3** %5, align 8
  %29 = getelementptr inbounds %struct.xt_NFQ_info_v3, %struct.xt_NFQ_info_v3* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.xt_NFQ_info_v3*, %struct.xt_NFQ_info_v3** %5, align 8
  %33 = getelementptr inbounds %struct.xt_NFQ_info_v3, %struct.xt_NFQ_info_v3* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = srem i32 %31, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %30, %36
  store i64 %37, i64* %6, align 8
  br label %48

38:                                               ; preds = %19
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.xt_NFQ_info_v3*, %struct.xt_NFQ_info_v3** %5, align 8
  %42 = getelementptr inbounds %struct.xt_NFQ_info_v3, %struct.xt_NFQ_info_v3* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %45 = call i32 @xt_family(%struct.xt_action_param* %44)
  %46 = load i32, i32* @jhash_initval, align 4
  %47 = call i64 @nfqueue_hash(%struct.sk_buff* %39, i64 %40, i32 %43, i32 %45, i32 %46)
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %38, %26
  br label %49

49:                                               ; preds = %48, %2
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @NF_QUEUE_NR(i64 %50)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.xt_NFQ_info_v3*, %struct.xt_NFQ_info_v3** %5, align 8
  %53 = getelementptr inbounds %struct.xt_NFQ_info_v3, %struct.xt_NFQ_info_v3* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NFQ_FLAG_BYPASS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load i32, i32* @NF_VERDICT_FLAG_QUEUE_BYPASS, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %49
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @nfqueue_hash(%struct.sk_buff*, i64, i32, i32, i32) #1

declare dso_local i32 @xt_family(%struct.xt_action_param*) #1

declare dso_local i32 @NF_QUEUE_NR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
