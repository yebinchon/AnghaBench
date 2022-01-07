; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_conntrack.c_conntrack_mt_origdst.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_conntrack.c_conntrack_mt_origdst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xt_conntrack_mtinfo2 = type { i32, i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.xt_conntrack_mtinfo2*, i32)* @conntrack_mt_origdst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conntrack_mt_origdst(%struct.nf_conn* %0, %struct.xt_conntrack_mtinfo2* %1, i32 %2) #0 {
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca %struct.xt_conntrack_mtinfo2*, align 8
  %6 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store %struct.xt_conntrack_mtinfo2* %1, %struct.xt_conntrack_mtinfo2** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %8 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %5, align 8
  %16 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %15, i32 0, i32 1
  %17 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %5, align 8
  %18 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %17, i32 0, i32 0
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @conntrack_addrcmp(i32* %14, i32* %16, i32* %18, i32 %19)
  ret i32 %20
}

declare dso_local i32 @conntrack_addrcmp(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
