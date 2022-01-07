; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto.c_nf_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto.c_nf_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_conn_help = type { i32 }
%struct.nf_conntrack_helper = type { i32 (%struct.sk_buff*, i32, %struct.nf_conn.0*, i32)* }
%struct.nf_conn.0 = type opaque

@NF_ACCEPT = common dso_local global i32 0, align 4
@IPS_SEQ_ADJUST_BIT = common dso_local global i32 0, align 4
@drop = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_confirm(%struct.sk_buff* %0, i32 %1, %struct.nf_conn* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conn_help*, align 8
  %11 = alloca %struct.nf_conntrack_helper*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_conn* %2, %struct.nf_conn** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %14 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %13)
  store %struct.nf_conn_help* %14, %struct.nf_conn_help** %10, align 8
  %15 = load %struct.nf_conn_help*, %struct.nf_conn_help** %10, align 8
  %16 = icmp ne %struct.nf_conn_help* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %4
  %18 = load %struct.nf_conn_help*, %struct.nf_conn_help** %10, align 8
  %19 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.nf_conntrack_helper* @rcu_dereference(i32 %20)
  store %struct.nf_conntrack_helper* %21, %struct.nf_conntrack_helper** %11, align 8
  %22 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %11, align 8
  %23 = icmp ne %struct.nf_conntrack_helper* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %11, align 8
  %26 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %25, i32 0, i32 0
  %27 = load i32 (%struct.sk_buff*, i32, %struct.nf_conn.0*, i32)*, i32 (%struct.sk_buff*, i32, %struct.nf_conn.0*, i32)** %26, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %31 = bitcast %struct.nf_conn* %30 to %struct.nf_conn.0*
  %32 = load i32, i32* %9, align 4
  %33 = call i32 %27(%struct.sk_buff* %28, i32 %29, %struct.nf_conn.0* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @NF_ACCEPT, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %5, align 4
  br label %68

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %17
  br label %41

41:                                               ; preds = %40, %4
  %42 = load i32, i32* @IPS_SEQ_ADJUST_BIT, align 4
  %43 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %44 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %43, i32 0, i32 0
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %41
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @nf_is_loopback_packet(%struct.sk_buff* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %47
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @nf_ct_seq_adjust(%struct.sk_buff* %52, %struct.nf_conn* %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %51
  %59 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %60 = call i32 @nf_ct_net(%struct.nf_conn* %59)
  %61 = load i32, i32* @drop, align 4
  %62 = call i32 @NF_CT_STAT_INC_ATOMIC(i32 %60, i32 %61)
  %63 = load i32, i32* @NF_DROP, align 4
  store i32 %63, i32* %5, align 4
  br label %68

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %47, %41
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = call i32 @nf_conntrack_confirm(%struct.sk_buff* %66)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %58, %37
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local %struct.nf_conntrack_helper* @rcu_dereference(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nf_is_loopback_packet(%struct.sk_buff*) #1

declare dso_local i32 @nf_ct_seq_adjust(%struct.sk_buff*, %struct.nf_conn*, i32, i32) #1

declare dso_local i32 @NF_CT_STAT_INC_ATOMIC(i32, i32) #1

declare dso_local i32 @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @nf_conntrack_confirm(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
