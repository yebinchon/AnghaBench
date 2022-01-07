; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_arp_tables.c_cleanup_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_arp_tables.c_cleanup_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arpt_entry = type { i32 }
%struct.xt_tgdtor_param = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 (%struct.xt_tgdtor_param*)* }
%struct.xt_entry_target = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }

@NFPROTO_ARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arpt_entry*)* @cleanup_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_entry(%struct.arpt_entry* %0) #0 {
  %2 = alloca %struct.arpt_entry*, align 8
  %3 = alloca %struct.xt_tgdtor_param, align 8
  %4 = alloca %struct.xt_entry_target*, align 8
  store %struct.arpt_entry* %0, %struct.arpt_entry** %2, align 8
  %5 = load %struct.arpt_entry*, %struct.arpt_entry** %2, align 8
  %6 = call %struct.xt_entry_target* @arpt_get_target(%struct.arpt_entry* %5)
  store %struct.xt_entry_target* %6, %struct.xt_entry_target** %4, align 8
  %7 = load %struct.xt_entry_target*, %struct.xt_entry_target** %4, align 8
  %8 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %3, i32 0, i32 0
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %12, align 8
  %13 = load %struct.xt_entry_target*, %struct.xt_entry_target** %4, align 8
  %14 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %3, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @NFPROTO_ARP, align 4
  %18 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %3, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %3, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32 (%struct.xt_tgdtor_param*)*, i32 (%struct.xt_tgdtor_param*)** %21, align 8
  %23 = icmp ne i32 (%struct.xt_tgdtor_param*)* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %3, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32 (%struct.xt_tgdtor_param*)*, i32 (%struct.xt_tgdtor_param*)** %27, align 8
  %29 = call i32 %28(%struct.xt_tgdtor_param* %3)
  br label %30

30:                                               ; preds = %24, %1
  %31 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %3, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @module_put(i32 %34)
  %36 = load %struct.arpt_entry*, %struct.arpt_entry** %2, align 8
  %37 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %36, i32 0, i32 0
  %38 = call i32 @xt_percpu_counter_free(i32* %37)
  ret void
}

declare dso_local %struct.xt_entry_target* @arpt_get_target(%struct.arpt_entry*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @xt_percpu_counter_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
