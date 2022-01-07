; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_dump_set_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_dump_set_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { %struct.nft_set_dump_ctx* }
%struct.nft_set_dump_ctx = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlink_callback*)* @nf_tables_dump_set_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_dump_set_start(%struct.netlink_callback* %0) #0 {
  %2 = alloca %struct.netlink_callback*, align 8
  %3 = alloca %struct.nft_set_dump_ctx*, align 8
  store %struct.netlink_callback* %0, %struct.netlink_callback** %2, align 8
  %4 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %5 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %4, i32 0, i32 0
  %6 = load %struct.nft_set_dump_ctx*, %struct.nft_set_dump_ctx** %5, align 8
  store %struct.nft_set_dump_ctx* %6, %struct.nft_set_dump_ctx** %3, align 8
  %7 = load %struct.nft_set_dump_ctx*, %struct.nft_set_dump_ctx** %3, align 8
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.nft_set_dump_ctx* @kmemdup(%struct.nft_set_dump_ctx* %7, i32 4, i32 %8)
  %10 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %11 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %10, i32 0, i32 0
  store %struct.nft_set_dump_ctx* %9, %struct.nft_set_dump_ctx** %11, align 8
  %12 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %13 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %12, i32 0, i32 0
  %14 = load %struct.nft_set_dump_ctx*, %struct.nft_set_dump_ctx** %13, align 8
  %15 = icmp ne %struct.nft_set_dump_ctx* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  br label %20

20:                                               ; preds = %17, %16
  %21 = phi i32 [ 0, %16 ], [ %19, %17 ]
  ret i32 %21
}

declare dso_local %struct.nft_set_dump_ctx* @kmemdup(%struct.nft_set_dump_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
