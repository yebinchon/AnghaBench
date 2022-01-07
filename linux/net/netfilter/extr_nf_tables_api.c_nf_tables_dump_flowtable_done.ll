; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_dump_flowtable_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_dump_flowtable_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { %struct.nft_flowtable_filter* }
%struct.nft_flowtable_filter = type { %struct.nft_flowtable_filter* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlink_callback*)* @nf_tables_dump_flowtable_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_dump_flowtable_done(%struct.netlink_callback* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netlink_callback*, align 8
  %4 = alloca %struct.nft_flowtable_filter*, align 8
  store %struct.netlink_callback* %0, %struct.netlink_callback** %3, align 8
  %5 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %6 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %5, i32 0, i32 0
  %7 = load %struct.nft_flowtable_filter*, %struct.nft_flowtable_filter** %6, align 8
  store %struct.nft_flowtable_filter* %7, %struct.nft_flowtable_filter** %4, align 8
  %8 = load %struct.nft_flowtable_filter*, %struct.nft_flowtable_filter** %4, align 8
  %9 = icmp ne %struct.nft_flowtable_filter* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.nft_flowtable_filter*, %struct.nft_flowtable_filter** %4, align 8
  %13 = getelementptr inbounds %struct.nft_flowtable_filter, %struct.nft_flowtable_filter* %12, i32 0, i32 0
  %14 = load %struct.nft_flowtable_filter*, %struct.nft_flowtable_filter** %13, align 8
  %15 = call i32 @kfree(%struct.nft_flowtable_filter* %14)
  %16 = load %struct.nft_flowtable_filter*, %struct.nft_flowtable_filter** %4, align 8
  %17 = call i32 @kfree(%struct.nft_flowtable_filter* %16)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %11, %10
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @kfree(%struct.nft_flowtable_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
