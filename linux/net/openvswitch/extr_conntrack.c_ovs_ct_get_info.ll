; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.nf_conn = type { i32 }

@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@IP_CT_ESTABLISHED_REPLY = common dso_local global i32 0, align 4
@IPS_SEEN_REPLY_BIT = common dso_local global i32 0, align 4
@IP_CT_ESTABLISHED = common dso_local global i32 0, align 4
@IPS_EXPECTED_BIT = common dso_local global i32 0, align 4
@IP_CT_RELATED = common dso_local global i32 0, align 4
@IP_CT_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_tuple_hash*)* @ovs_ct_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_ct_get_info(%struct.nf_conntrack_tuple_hash* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %4 = alloca %struct.nf_conn*, align 8
  store %struct.nf_conntrack_tuple_hash* %0, %struct.nf_conntrack_tuple_hash** %3, align 8
  %5 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %3, align 8
  %6 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %5)
  store %struct.nf_conn* %6, %struct.nf_conn** %4, align 8
  %7 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %3, align 8
  %8 = call i64 @NF_CT_DIRECTION(%struct.nf_conntrack_tuple_hash* %7)
  %9 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @IP_CT_ESTABLISHED_REPLY, align 4
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load i32, i32* @IPS_SEEN_REPLY_BIT, align 4
  %15 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %16 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @IP_CT_ESTABLISHED, align 4
  store i32 %20, i32* %2, align 4
  br label %31

21:                                               ; preds = %13
  %22 = load i32, i32* @IPS_EXPECTED_BIT, align 4
  %23 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %24 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @IP_CT_RELATED, align 4
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @IP_CT_NEW, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %27, %19, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i64 @NF_CT_DIRECTION(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
