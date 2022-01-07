; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_dump_obj_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_dump_obj_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { %struct.nft_obj_filter* }
%struct.nft_obj_filter = type { %struct.nft_obj_filter* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlink_callback*)* @nf_tables_dump_obj_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_dump_obj_done(%struct.netlink_callback* %0) #0 {
  %2 = alloca %struct.netlink_callback*, align 8
  %3 = alloca %struct.nft_obj_filter*, align 8
  store %struct.netlink_callback* %0, %struct.netlink_callback** %2, align 8
  %4 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %5 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %4, i32 0, i32 0
  %6 = load %struct.nft_obj_filter*, %struct.nft_obj_filter** %5, align 8
  store %struct.nft_obj_filter* %6, %struct.nft_obj_filter** %3, align 8
  %7 = load %struct.nft_obj_filter*, %struct.nft_obj_filter** %3, align 8
  %8 = icmp ne %struct.nft_obj_filter* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.nft_obj_filter*, %struct.nft_obj_filter** %3, align 8
  %11 = getelementptr inbounds %struct.nft_obj_filter, %struct.nft_obj_filter* %10, i32 0, i32 0
  %12 = load %struct.nft_obj_filter*, %struct.nft_obj_filter** %11, align 8
  %13 = call i32 @kfree(%struct.nft_obj_filter* %12)
  %14 = load %struct.nft_obj_filter*, %struct.nft_obj_filter** %3, align 8
  %15 = call i32 @kfree(%struct.nft_obj_filter* %14)
  br label %16

16:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local i32 @kfree(%struct.nft_obj_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
