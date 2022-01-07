; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ip_tables.c_check_target.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ip_tables.c_check_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipt_entry = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.net = type { i32 }
%struct.xt_entry_target = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.xt_tgchk_param = type { i8*, i32, i32, i32, i32, %struct.ipt_entry*, %struct.net* }

@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@IPT_INV_PROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipt_entry*, %struct.net*, i8*)* @check_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_target(%struct.ipt_entry* %0, %struct.net* %1, i8* %2) #0 {
  %4 = alloca %struct.ipt_entry*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xt_entry_target*, align 8
  %8 = alloca %struct.xt_tgchk_param, align 8
  store %struct.ipt_entry* %0, %struct.ipt_entry** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.ipt_entry*, %struct.ipt_entry** %4, align 8
  %10 = call %struct.xt_entry_target* @ipt_get_target(%struct.ipt_entry* %9)
  store %struct.xt_entry_target* %10, %struct.xt_entry_target** %7, align 8
  %11 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 0
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 1
  %14 = load i32, i32* @NFPROTO_IPV4, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 2
  %16 = load %struct.ipt_entry*, %struct.ipt_entry** %4, align 8
  %17 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 3
  %20 = load %struct.xt_entry_target*, %struct.xt_entry_target** %7, align 8
  %21 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 8
  %23 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 4
  %24 = load %struct.xt_entry_target*, %struct.xt_entry_target** %7, align 8
  %25 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %23, align 4
  %29 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 5
  %30 = load %struct.ipt_entry*, %struct.ipt_entry** %4, align 8
  store %struct.ipt_entry* %30, %struct.ipt_entry** %29, align 8
  %31 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 6
  %32 = load %struct.net*, %struct.net** %5, align 8
  store %struct.net* %32, %struct.net** %31, align 8
  %33 = load %struct.xt_entry_target*, %struct.xt_entry_target** %7, align 8
  %34 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %36, 24
  %38 = load %struct.ipt_entry*, %struct.ipt_entry** %4, align 8
  %39 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ipt_entry*, %struct.ipt_entry** %4, align 8
  %43 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IPT_INV_PROTO, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @xt_check_target(%struct.xt_tgchk_param* %8, i64 %37, i32 %41, i32 %47)
  ret i32 %48
}

declare dso_local %struct.xt_entry_target* @ipt_get_target(%struct.ipt_entry*) #1

declare dso_local i32 @xt_check_target(%struct.xt_tgchk_param*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
