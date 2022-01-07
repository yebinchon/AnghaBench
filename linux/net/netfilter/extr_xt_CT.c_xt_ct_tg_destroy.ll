; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CT.c_xt_ct_tg_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CT.c_xt_ct_tg_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgdtor_param = type { i32, i32 }
%struct.xt_ct_target_info_v1 = type { %struct.nf_conn* }
%struct.nf_conn = type { i32 }
%struct.nf_conn_help = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xt_tgdtor_param*, %struct.xt_ct_target_info_v1*)* @xt_ct_tg_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xt_ct_tg_destroy(%struct.xt_tgdtor_param* %0, %struct.xt_ct_target_info_v1* %1) #0 {
  %3 = alloca %struct.xt_tgdtor_param*, align 8
  %4 = alloca %struct.xt_ct_target_info_v1*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nf_conn_help*, align 8
  store %struct.xt_tgdtor_param* %0, %struct.xt_tgdtor_param** %3, align 8
  store %struct.xt_ct_target_info_v1* %1, %struct.xt_ct_target_info_v1** %4, align 8
  %7 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %4, align 8
  %8 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %7, i32 0, i32 0
  %9 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  store %struct.nf_conn* %9, %struct.nf_conn** %5, align 8
  %10 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %11 = icmp ne %struct.nf_conn* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %14 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %13)
  store %struct.nf_conn_help* %14, %struct.nf_conn_help** %6, align 8
  %15 = load %struct.nf_conn_help*, %struct.nf_conn_help** %6, align 8
  %16 = icmp ne %struct.nf_conn_help* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.nf_conn_help*, %struct.nf_conn_help** %6, align 8
  %19 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nf_conntrack_helper_put(i32 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.xt_tgdtor_param*, %struct.xt_tgdtor_param** %3, align 8
  %24 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xt_tgdtor_param*, %struct.xt_tgdtor_param** %3, align 8
  %27 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nf_ct_netns_put(i32 %25, i32 %28)
  %30 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %31 = call i32 @nf_ct_destroy_timeout(%struct.nf_conn* %30)
  %32 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %4, align 8
  %33 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %32, i32 0, i32 0
  %34 = load %struct.nf_conn*, %struct.nf_conn** %33, align 8
  %35 = call i32 @nf_ct_put(%struct.nf_conn* %34)
  br label %36

36:                                               ; preds = %22, %2
  ret void
}

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @nf_conntrack_helper_put(i32) #1

declare dso_local i32 @nf_ct_netns_put(i32, i32) #1

declare dso_local i32 @nf_ct_destroy_timeout(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
