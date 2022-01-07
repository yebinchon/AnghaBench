; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_lookup.c_nft_lookup_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_lookup.c_nft_lookup_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_lookup = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.nft_expr*)* @nft_lookup_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_lookup_destroy(%struct.nft_ctx* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca %struct.nft_ctx*, align 8
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_lookup*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %3, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %4, align 8
  %6 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %7 = call %struct.nft_lookup* @nft_expr_priv(%struct.nft_expr* %6)
  store %struct.nft_lookup* %7, %struct.nft_lookup** %5, align 8
  %8 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %9 = load %struct.nft_lookup*, %struct.nft_lookup** %5, align 8
  %10 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @nf_tables_destroy_set(%struct.nft_ctx* %8, i32 %11)
  ret void
}

declare dso_local %struct.nft_lookup* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nf_tables_destroy_set(%struct.nft_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
