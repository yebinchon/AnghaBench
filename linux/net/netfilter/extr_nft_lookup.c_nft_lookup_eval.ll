; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_lookup.c_nft_lookup_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_lookup.c_nft_lookup_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.nft_lookup = type { i64, i32, i64, %struct.nft_set* }
%struct.nft_set = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, %struct.nft_set*, i32*, %struct.nft_set_ext**)* }
%struct.nft_set_ext = type { i32 }

@NFT_BREAK = common dso_local global i32 0, align 4
@NFT_SET_MAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_lookup_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_lookup*, align 8
  %8 = alloca %struct.nft_set*, align 8
  %9 = alloca %struct.nft_set_ext*, align 8
  %10 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %11 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %12 = call %struct.nft_lookup* @nft_expr_priv(%struct.nft_expr* %11)
  store %struct.nft_lookup* %12, %struct.nft_lookup** %7, align 8
  %13 = load %struct.nft_lookup*, %struct.nft_lookup** %7, align 8
  %14 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %13, i32 0, i32 3
  %15 = load %struct.nft_set*, %struct.nft_set** %14, align 8
  store %struct.nft_set* %15, %struct.nft_set** %8, align 8
  %16 = load %struct.nft_set*, %struct.nft_set** %8, align 8
  %17 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (i32, %struct.nft_set*, i32*, %struct.nft_set_ext**)*, i32 (i32, %struct.nft_set*, i32*, %struct.nft_set_ext**)** %19, align 8
  %21 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %22 = call i32 @nft_net(%struct.nft_pktinfo* %21)
  %23 = load %struct.nft_set*, %struct.nft_set** %8, align 8
  %24 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %25 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.nft_lookup*, %struct.nft_lookup** %7, align 8
  %28 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = call i32 %20(i32 %22, %struct.nft_set* %23, i32* %30, %struct.nft_set_ext** %9)
  %32 = load %struct.nft_lookup*, %struct.nft_lookup** %7, align 8
  %33 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = xor i32 %31, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* @NFT_BREAK, align 4
  %40 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %41 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  br label %64

43:                                               ; preds = %3
  %44 = load %struct.nft_set*, %struct.nft_set** %8, align 8
  %45 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NFT_SET_MAP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %43
  %51 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %52 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.nft_lookup*, %struct.nft_lookup** %7, align 8
  %55 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load %struct.nft_set_ext*, %struct.nft_set_ext** %9, align 8
  %59 = call i32 @nft_set_ext_data(%struct.nft_set_ext* %58)
  %60 = load %struct.nft_set*, %struct.nft_set** %8, align 8
  %61 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @nft_data_copy(i32* %57, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %38, %50, %43
  ret void
}

declare dso_local %struct.nft_lookup* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_net(%struct.nft_pktinfo*) #1

declare dso_local i32 @nft_data_copy(i32*, i32, i32) #1

declare dso_local i32 @nft_set_ext_data(%struct.nft_set_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
