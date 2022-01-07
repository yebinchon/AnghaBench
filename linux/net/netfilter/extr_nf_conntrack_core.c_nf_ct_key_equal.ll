; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_key_equal.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_key_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.net = type { i32 }
%struct.nf_conn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_zone*, %struct.net*)* @nf_ct_key_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ct_key_equal(%struct.nf_conntrack_tuple_hash* %0, %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_zone* %2, %struct.net* %3) #0 {
  %5 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %6 = alloca %struct.nf_conntrack_tuple*, align 8
  %7 = alloca %struct.nf_conntrack_zone*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.nf_conn*, align 8
  store %struct.nf_conntrack_tuple_hash* %0, %struct.nf_conntrack_tuple_hash** %5, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %6, align 8
  store %struct.nf_conntrack_zone* %2, %struct.nf_conntrack_zone** %7, align 8
  store %struct.net* %3, %struct.net** %8, align 8
  %10 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %5, align 8
  %11 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %10)
  store %struct.nf_conn* %11, %struct.nf_conn** %9, align 8
  %12 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %13 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %5, align 8
  %14 = getelementptr inbounds %struct.nf_conntrack_tuple_hash, %struct.nf_conntrack_tuple_hash* %13, i32 0, i32 0
  %15 = call i64 @nf_ct_tuple_equal(%struct.nf_conntrack_tuple* %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %4
  %18 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %19 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %7, align 8
  %20 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %5, align 8
  %21 = call i32 @NF_CT_DIRECTION(%struct.nf_conntrack_tuple_hash* %20)
  %22 = call i64 @nf_ct_zone_equal(%struct.nf_conn* %18, %struct.nf_conntrack_zone* %19, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %26 = call i64 @nf_ct_is_confirmed(%struct.nf_conn* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.net*, %struct.net** %8, align 8
  %30 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %31 = call i32 @nf_ct_net(%struct.nf_conn* %30)
  %32 = call i64 @net_eq(%struct.net* %29, i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %28, %24, %17, %4
  %35 = phi i1 [ false, %24 ], [ false, %17 ], [ false, %4 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i64 @nf_ct_tuple_equal(%struct.nf_conntrack_tuple*, i32*) #1

declare dso_local i64 @nf_ct_zone_equal(%struct.nf_conn*, %struct.nf_conntrack_zone*, i32) #1

declare dso_local i32 @NF_CT_DIRECTION(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i64 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i64 @net_eq(%struct.net*, i32) #1

declare dso_local i32 @nf_ct_net(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
