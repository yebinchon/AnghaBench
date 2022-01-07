; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_unbind_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_unbind_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_set = type { i32, i32 }
%struct.nft_set_binding = type { i32 }

@NFT_MSG_DELSET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.nft_set*, %struct.nft_set_binding*, i32)* @nf_tables_unbind_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_tables_unbind_set(%struct.nft_ctx* %0, %struct.nft_set* %1, %struct.nft_set_binding* %2, i32 %3) #0 {
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_set*, align 8
  %7 = alloca %struct.nft_set_binding*, align 8
  %8 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_set* %1, %struct.nft_set** %6, align 8
  store %struct.nft_set_binding* %2, %struct.nft_set_binding** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.nft_set_binding*, %struct.nft_set_binding** %7, align 8
  %10 = getelementptr inbounds %struct.nft_set_binding, %struct.nft_set_binding* %9, i32 0, i32 0
  %11 = call i32 @list_del_rcu(i32* %10)
  %12 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %13 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %12, i32 0, i32 1
  %14 = call i64 @list_empty(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %4
  %17 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %18 = call i64 @nft_set_is_anonymous(%struct.nft_set* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %22 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %21, i32 0, i32 0
  %23 = call i32 @list_del_rcu(i32* %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %28 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %29 = load i32, i32* @NFT_MSG_DELSET, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @nf_tables_set_notify(%struct.nft_ctx* %27, %struct.nft_set* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %20
  br label %33

33:                                               ; preds = %32, %16, %4
  ret void
}

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @nft_set_is_anonymous(%struct.nft_set*) #1

declare dso_local i32 @nf_tables_set_notify(%struct.nft_ctx*, %struct.nft_set*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
