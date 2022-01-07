; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_pptp.c_pptp_exp_gre.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_pptp.c_pptp_exp_gre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { i32, %struct.TYPE_11__, %struct.TYPE_14__, %struct.nf_conn* }
%struct.TYPE_11__ = type { %struct.TYPE_20__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_conn_nat = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.nf_nat_pptp }
%struct.nf_nat_pptp = type { i32, i32 }
%struct.nf_ct_pptp_master = type { i32, i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@IP_CT_DIR_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conntrack_expect*, %struct.nf_conntrack_expect*)* @pptp_exp_gre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pptp_exp_gre(%struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect* %1) #0 {
  %3 = alloca %struct.nf_conntrack_expect*, align 8
  %4 = alloca %struct.nf_conntrack_expect*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nf_conn_nat*, align 8
  %7 = alloca %struct.nf_ct_pptp_master*, align 8
  %8 = alloca %struct.nf_nat_pptp*, align 8
  store %struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect** %3, align 8
  store %struct.nf_conntrack_expect* %1, %struct.nf_conntrack_expect** %4, align 8
  %9 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %10 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %9, i32 0, i32 3
  %11 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  store %struct.nf_conn* %11, %struct.nf_conn** %5, align 8
  %12 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %13 = call %struct.nf_conn_nat* @nfct_nat(%struct.nf_conn* %12)
  store %struct.nf_conn_nat* %13, %struct.nf_conn_nat** %6, align 8
  %14 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %6, align 8
  %15 = icmp ne %struct.nf_conn_nat* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON_ONCE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %88

21:                                               ; preds = %2
  %22 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %6, align 8
  %23 = getelementptr inbounds %struct.nf_conn_nat, %struct.nf_conn_nat* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store %struct.nf_nat_pptp* %24, %struct.nf_nat_pptp** %8, align 8
  %25 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %26 = call %struct.nf_ct_pptp_master* @nfct_help_data(%struct.nf_conn* %25)
  store %struct.nf_ct_pptp_master* %26, %struct.nf_ct_pptp_master** %7, align 8
  %27 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %7, align 8
  %28 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nf_nat_pptp*, %struct.nf_nat_pptp** %8, align 8
  %31 = getelementptr inbounds %struct.nf_nat_pptp, %struct.nf_nat_pptp* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %7, align 8
  %33 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %36 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.nf_nat_pptp*, %struct.nf_nat_pptp** %8, align 8
  %40 = getelementptr inbounds %struct.nf_nat_pptp, %struct.nf_nat_pptp* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %43 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  store i32 %41, i32* %47, align 4
  %48 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %7, align 8
  %49 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %52 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  store i32 %50, i32* %56, align 4
  %57 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %58 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %59 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.nf_nat_pptp*, %struct.nf_nat_pptp** %8, align 8
  %61 = getelementptr inbounds %struct.nf_nat_pptp, %struct.nf_nat_pptp* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %64 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 4
  %67 = load %struct.nf_nat_pptp*, %struct.nf_nat_pptp** %8, align 8
  %68 = getelementptr inbounds %struct.nf_nat_pptp, %struct.nf_nat_pptp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %71 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  store i32 %69, i32* %75, align 4
  %76 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %7, align 8
  %77 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %80 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  store i32 %78, i32* %84, align 4
  %85 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %86 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %87 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.nf_conn_nat* @nfct_nat(%struct.nf_conn*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.nf_ct_pptp_master* @nfct_help_data(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
