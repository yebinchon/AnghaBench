; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_helper.c_nf_ct_lookup_helper.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_helper.c_nf_ct_lookup_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_helper = type { i32 }
%struct.nf_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [185 x i8] c"nf_conntrack: default automatic helper assignment has been turned off for security reasons and CT-based  firewall rule not found. Use the iptables CT target to attach helpers instead.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_conntrack_helper* (%struct.nf_conn*, %struct.net*)* @nf_ct_lookup_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_conntrack_helper* @nf_ct_lookup_helper(%struct.nf_conn* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.nf_conntrack_helper*, align 8
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca %struct.net*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  %6 = load %struct.net*, %struct.net** %5, align 8
  %7 = getelementptr inbounds %struct.net, %struct.net* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %2
  %12 = load %struct.net*, %struct.net** %5, align 8
  %13 = getelementptr inbounds %struct.net, %struct.net* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store %struct.nf_conntrack_helper* null, %struct.nf_conntrack_helper** %3, align 8
  br label %41

18:                                               ; preds = %11
  %19 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %20 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call %struct.nf_conntrack_helper* @__nf_ct_helper_find(i32* %24)
  %26 = icmp ne %struct.nf_conntrack_helper* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  store %struct.nf_conntrack_helper* null, %struct.nf_conntrack_helper** %3, align 8
  br label %41

28:                                               ; preds = %18
  %29 = call i32 @pr_info(i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.net*, %struct.net** %5, align 8
  %31 = getelementptr inbounds %struct.net, %struct.net* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  store %struct.nf_conntrack_helper* null, %struct.nf_conntrack_helper** %3, align 8
  br label %41

33:                                               ; preds = %2
  %34 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %35 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call %struct.nf_conntrack_helper* @__nf_ct_helper_find(i32* %39)
  store %struct.nf_conntrack_helper* %40, %struct.nf_conntrack_helper** %3, align 8
  br label %41

41:                                               ; preds = %33, %28, %27, %17
  %42 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %3, align 8
  ret %struct.nf_conntrack_helper* %42
}

declare dso_local %struct.nf_conntrack_helper* @__nf_ct_helper_find(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
