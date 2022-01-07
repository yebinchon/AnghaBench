; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ip_tables.c_check_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ip_tables.c_check_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_entry_match = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xt_mtchk_param = type { i32, i32, %struct.ipt_ip* }
%struct.ipt_ip = type { i32, i32 }

@IPT_INV_PROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_entry_match*, %struct.xt_mtchk_param*)* @check_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_match(%struct.xt_entry_match* %0, %struct.xt_mtchk_param* %1) #0 {
  %3 = alloca %struct.xt_entry_match*, align 8
  %4 = alloca %struct.xt_mtchk_param*, align 8
  %5 = alloca %struct.ipt_ip*, align 8
  store %struct.xt_entry_match* %0, %struct.xt_entry_match** %3, align 8
  store %struct.xt_mtchk_param* %1, %struct.xt_mtchk_param** %4, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %4, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 2
  %8 = load %struct.ipt_ip*, %struct.ipt_ip** %7, align 8
  store %struct.ipt_ip* %8, %struct.ipt_ip** %5, align 8
  %9 = load %struct.xt_entry_match*, %struct.xt_entry_match** %3, align 8
  %10 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %4, align 8
  %15 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.xt_entry_match*, %struct.xt_entry_match** %3, align 8
  %17 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %4, align 8
  %20 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %4, align 8
  %22 = load %struct.xt_entry_match*, %struct.xt_entry_match** %3, align 8
  %23 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %25, 24
  %27 = load %struct.ipt_ip*, %struct.ipt_ip** %5, align 8
  %28 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ipt_ip*, %struct.ipt_ip** %5, align 8
  %31 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IPT_INV_PROTO, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @xt_check_match(%struct.xt_mtchk_param* %21, i64 %26, i32 %29, i32 %34)
  ret i32 %35
}

declare dso_local i32 @xt_check_match(%struct.xt_mtchk_param*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
