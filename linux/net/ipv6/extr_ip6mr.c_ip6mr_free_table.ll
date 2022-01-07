; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_free_table.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_free_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32, i32 }

@MRT6_FLUSH_MIFS = common dso_local global i32 0, align 4
@MRT6_FLUSH_MIFS_STATIC = common dso_local global i32 0, align 4
@MRT6_FLUSH_MFC = common dso_local global i32 0, align 4
@MRT6_FLUSH_MFC_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mr_table*)* @ip6mr_free_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6mr_free_table(%struct.mr_table* %0) #0 {
  %2 = alloca %struct.mr_table*, align 8
  store %struct.mr_table* %0, %struct.mr_table** %2, align 8
  %3 = load %struct.mr_table*, %struct.mr_table** %2, align 8
  %4 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %3, i32 0, i32 1
  %5 = call i32 @del_timer_sync(i32* %4)
  %6 = load %struct.mr_table*, %struct.mr_table** %2, align 8
  %7 = load i32, i32* @MRT6_FLUSH_MIFS, align 4
  %8 = load i32, i32* @MRT6_FLUSH_MIFS_STATIC, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MRT6_FLUSH_MFC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MRT6_FLUSH_MFC_STATIC, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @mroute_clean_tables(%struct.mr_table* %6, i32 %13)
  %15 = load %struct.mr_table*, %struct.mr_table** %2, align 8
  %16 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %15, i32 0, i32 0
  %17 = call i32 @rhltable_destroy(i32* %16)
  %18 = load %struct.mr_table*, %struct.mr_table** %2, align 8
  %19 = call i32 @kfree(%struct.mr_table* %18)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mroute_clean_tables(%struct.mr_table*, i32) #1

declare dso_local i32 @rhltable_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.mr_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
