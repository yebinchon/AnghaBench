; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_arp_tables.c_check_target.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_arp_tables.c_check_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arpt_entry = type { i32 }
%struct.xt_entry_target = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xt_tgchk_param = type { i8*, i32, i32, i32, i32, %struct.arpt_entry* }

@NFPROTO_ARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arpt_entry*, i8*)* @check_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_target(%struct.arpt_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.arpt_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xt_entry_target*, align 8
  %6 = alloca %struct.xt_tgchk_param, align 8
  store %struct.arpt_entry* %0, %struct.arpt_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.arpt_entry*, %struct.arpt_entry** %3, align 8
  %8 = call %struct.xt_entry_target* @arpt_get_target(%struct.arpt_entry* %7)
  store %struct.xt_entry_target* %8, %struct.xt_entry_target** %5, align 8
  %9 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 0
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 1
  %12 = load i32, i32* @NFPROTO_ARP, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 2
  %14 = load %struct.arpt_entry*, %struct.arpt_entry** %3, align 8
  %15 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 3
  %18 = load %struct.xt_entry_target*, %struct.xt_entry_target** %5, align 8
  %19 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %17, align 8
  %21 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 4
  %22 = load %struct.xt_entry_target*, %struct.xt_entry_target** %5, align 8
  %23 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %21, align 4
  %27 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 5
  %28 = load %struct.arpt_entry*, %struct.arpt_entry** %3, align 8
  store %struct.arpt_entry* %28, %struct.arpt_entry** %27, align 8
  %29 = load %struct.xt_entry_target*, %struct.xt_entry_target** %5, align 8
  %30 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %32, 24
  %34 = call i32 @xt_check_target(%struct.xt_tgchk_param* %6, i64 %33, i32 0, i32 0)
  ret i32 %34
}

declare dso_local %struct.xt_entry_target* @arpt_get_target(%struct.arpt_entry*) #1

declare dso_local i32 @xt_check_target(%struct.xt_tgchk_param*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
