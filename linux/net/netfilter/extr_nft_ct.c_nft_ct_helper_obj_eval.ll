; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_helper_obj_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_helper_obj_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_object = type { i32 }
%struct.nft_regs = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.nft_ct_helper_obj = type { i64, %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper* }
%struct.nf_conntrack_helper = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_conn_help = type { i32 }

@IPS_HELPER_BIT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_object*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_ct_helper_obj_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_ct_helper_obj_eval(%struct.nft_object* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_object*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_ct_helper_obj*, align 8
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca %struct.nf_conntrack_helper*, align 8
  %10 = alloca %struct.nf_conn_help*, align 8
  store %struct.nft_object* %0, %struct.nft_object** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %11 = load %struct.nft_object*, %struct.nft_object** %4, align 8
  %12 = call %struct.nft_ct_helper_obj* @nft_obj_data(%struct.nft_object* %11)
  store %struct.nft_ct_helper_obj* %12, %struct.nft_ct_helper_obj** %7, align 8
  %13 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %14 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @skb_nfct(i32 %15)
  %17 = inttoptr i64 %16 to %struct.nf_conn*
  store %struct.nf_conn* %17, %struct.nf_conn** %8, align 8
  store %struct.nf_conntrack_helper* null, %struct.nf_conntrack_helper** %9, align 8
  %18 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %19 = icmp ne %struct.nf_conn* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %22 = call i64 @nf_ct_is_confirmed(%struct.nf_conn* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %26 = call i64 @nf_ct_is_template(%struct.nf_conn* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %7, align 8
  %30 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %33 = call i64 @nf_ct_protonum(%struct.nf_conn* %32)
  %34 = icmp ne i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %24, %20, %3
  br label %76

36:                                               ; preds = %28
  %37 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %38 = call i32 @nf_ct_l3num(%struct.nf_conn* %37)
  switch i32 %38, label %47 [
    i32 129, label %39
    i32 128, label %43
  ]

39:                                               ; preds = %36
  %40 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %7, align 8
  %41 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %40, i32 0, i32 2
  %42 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %41, align 8
  store %struct.nf_conntrack_helper* %42, %struct.nf_conntrack_helper** %9, align 8
  br label %49

43:                                               ; preds = %36
  %44 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %7, align 8
  %45 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %44, i32 0, i32 1
  %46 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %45, align 8
  store %struct.nf_conntrack_helper* %46, %struct.nf_conntrack_helper** %9, align 8
  br label %49

47:                                               ; preds = %36
  %48 = call i32 @WARN_ON_ONCE(i32 1)
  br label %76

49:                                               ; preds = %43, %39
  %50 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %9, align 8
  %51 = icmp ne %struct.nf_conntrack_helper* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  br label %76

53:                                               ; preds = %49
  %54 = load i32, i32* @IPS_HELPER_BIT, align 4
  %55 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %56 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %55, i32 0, i32 0
  %57 = call i64 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %76

60:                                               ; preds = %53
  %61 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn* %61, i32 %62)
  store %struct.nf_conn_help* %63, %struct.nf_conn_help** %10, align 8
  %64 = load %struct.nf_conn_help*, %struct.nf_conn_help** %10, align 8
  %65 = icmp ne %struct.nf_conn_help* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load %struct.nf_conn_help*, %struct.nf_conn_help** %10, align 8
  %68 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %9, align 8
  %71 = call i32 @rcu_assign_pointer(i32 %69, %struct.nf_conntrack_helper* %70)
  %72 = load i32, i32* @IPS_HELPER_BIT, align 4
  %73 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %74 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %73, i32 0, i32 0
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  br label %76

76:                                               ; preds = %35, %47, %52, %59, %66, %60
  ret void
}

declare dso_local %struct.nft_ct_helper_obj* @nft_obj_data(%struct.nft_object*) #1

declare dso_local i64 @skb_nfct(i32) #1

declare dso_local i64 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i64 @nf_ct_is_template(%struct.nf_conn*) #1

declare dso_local i64 @nf_ct_protonum(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.nf_conntrack_helper*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
