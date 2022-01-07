; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_dump_sets_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_dump_sets_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { %struct.nft_ctx* }
%struct.nft_ctx = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlink_callback*)* @nf_tables_dump_sets_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_dump_sets_start(%struct.netlink_callback* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netlink_callback*, align 8
  %4 = alloca %struct.nft_ctx*, align 8
  store %struct.netlink_callback* %0, %struct.netlink_callback** %3, align 8
  store %struct.nft_ctx* null, %struct.nft_ctx** %4, align 8
  %5 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %6 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %5, i32 0, i32 0
  %7 = load %struct.nft_ctx*, %struct.nft_ctx** %6, align 8
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.nft_ctx* @kmemdup(%struct.nft_ctx* %7, i32 4, i32 %8)
  store %struct.nft_ctx* %9, %struct.nft_ctx** %4, align 8
  %10 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %11 = icmp eq %struct.nft_ctx* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %19

15:                                               ; preds = %1
  %16 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %17 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %18 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %17, i32 0, i32 0
  store %struct.nft_ctx* %16, %struct.nft_ctx** %18, align 8
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %15, %12
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.nft_ctx* @kmemdup(%struct.nft_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
