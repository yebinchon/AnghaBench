; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_ctx_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32, i32, i32, %struct.nlattr**, %struct.nft_chain*, %struct.nft_table*, i64, i32, %struct.net* }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.nft_table = type { i32 }
%struct.nft_chain = type { i32 }
%struct.nlattr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, i32, %struct.nft_table*, %struct.nft_chain*, %struct.nlattr**)* @nft_ctx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_ctx_init(%struct.nft_ctx* %0, %struct.net* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, i32 %4, %struct.nft_table* %5, %struct.nft_chain* %6, %struct.nlattr** %7) #0 {
  %9 = alloca %struct.nft_ctx*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.nlmsghdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nft_table*, align 8
  %15 = alloca %struct.nft_chain*, align 8
  %16 = alloca %struct.nlattr**, align 8
  %17 = alloca %struct.TYPE_2__, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %9, align 8
  store %struct.net* %1, %struct.net** %10, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %11, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.nft_table* %5, %struct.nft_table** %14, align 8
  store %struct.nft_chain* %6, %struct.nft_chain** %15, align 8
  store %struct.nlattr** %7, %struct.nlattr*** %16, align 8
  %18 = load %struct.net*, %struct.net** %10, align 8
  %19 = load %struct.nft_ctx*, %struct.nft_ctx** %9, align 8
  %20 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %19, i32 0, i32 9
  store %struct.net* %18, %struct.net** %20, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load %struct.nft_ctx*, %struct.nft_ctx** %9, align 8
  %23 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  %24 = load %struct.nft_ctx*, %struct.nft_ctx** %9, align 8
  %25 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %24, i32 0, i32 7
  store i64 0, i64* %25, align 8
  %26 = load %struct.nft_table*, %struct.nft_table** %14, align 8
  %27 = load %struct.nft_ctx*, %struct.nft_ctx** %9, align 8
  %28 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %27, i32 0, i32 6
  store %struct.nft_table* %26, %struct.nft_table** %28, align 8
  %29 = load %struct.nft_chain*, %struct.nft_chain** %15, align 8
  %30 = load %struct.nft_ctx*, %struct.nft_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %30, i32 0, i32 5
  store %struct.nft_chain* %29, %struct.nft_chain** %31, align 8
  %32 = load %struct.nlattr**, %struct.nlattr*** %16, align 8
  %33 = load %struct.nft_ctx*, %struct.nft_ctx** %9, align 8
  %34 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %33, i32 0, i32 4
  store %struct.nlattr** %32, %struct.nlattr*** %34, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %36 = call i32 @NETLINK_CB(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nft_ctx*, %struct.nft_ctx** %9, align 8
  %41 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %43 = call i32 @nlmsg_report(%struct.nlmsghdr* %42)
  %44 = load %struct.nft_ctx*, %struct.nft_ctx** %9, align 8
  %45 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %47 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nft_ctx*, %struct.nft_ctx** %9, align 8
  %50 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %52 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nft_ctx*, %struct.nft_ctx** %9, align 8
  %55 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  ret void
}

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_report(%struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
