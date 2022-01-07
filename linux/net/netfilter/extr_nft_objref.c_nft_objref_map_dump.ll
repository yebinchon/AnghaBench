; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_objref.c_nft_objref_map_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_objref.c_nft_objref_map_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_objref_map = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@NFTA_OBJREF_SET_SREG = common dso_local global i32 0, align 4
@NFTA_OBJREF_SET_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_objref_map_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_objref_map_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_objref_map*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %7 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %8 = call %struct.nft_objref_map* @nft_expr_priv(%struct.nft_expr* %7)
  store %struct.nft_objref_map* %8, %struct.nft_objref_map** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @NFTA_OBJREF_SET_SREG, align 4
  %11 = load %struct.nft_objref_map*, %struct.nft_objref_map** %6, align 8
  %12 = getelementptr inbounds %struct.nft_objref_map, %struct.nft_objref_map* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @nft_dump_register(%struct.sk_buff* %9, i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* @NFTA_OBJREF_SET_NAME, align 4
  %19 = load %struct.nft_objref_map*, %struct.nft_objref_map** %6, align 8
  %20 = getelementptr inbounds %struct.nft_objref_map, %struct.nft_objref_map* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @nla_put_string(%struct.sk_buff* %17, i32 %18, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16, %2
  br label %28

27:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %29

28:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.nft_objref_map* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nft_dump_register(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
