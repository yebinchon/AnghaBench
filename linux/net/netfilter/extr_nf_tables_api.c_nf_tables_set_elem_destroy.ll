; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_set_elem_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_set_elem_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_set_ext = type { i32 }

@NFT_SET_EXT_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.nft_set*, i8*)* @nf_tables_set_elem_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_tables_set_elem_destroy(%struct.nft_ctx* %0, %struct.nft_set* %1, i8* %2) #0 {
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nft_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nft_set_ext*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nft_set* %1, %struct.nft_set** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call %struct.nft_set_ext* @nft_set_elem_ext(%struct.nft_set* %8, i8* %9)
  store %struct.nft_set_ext* %10, %struct.nft_set_ext** %7, align 8
  %11 = load %struct.nft_set_ext*, %struct.nft_set_ext** %7, align 8
  %12 = load i32, i32* @NFT_SET_EXT_EXPR, align 4
  %13 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %17 = load %struct.nft_set_ext*, %struct.nft_set_ext** %7, align 8
  %18 = call i32 @nft_set_ext_expr(%struct.nft_set_ext* %17)
  %19 = call i32 @nf_tables_expr_destroy(%struct.nft_ctx* %16, i32 %18)
  br label %20

20:                                               ; preds = %15, %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @kfree(i8* %21)
  ret void
}

declare dso_local %struct.nft_set_ext* @nft_set_elem_ext(%struct.nft_set*, i8*) #1

declare dso_local i64 @nft_set_ext_exists(%struct.nft_set_ext*, i32) #1

declare dso_local i32 @nf_tables_expr_destroy(%struct.nft_ctx*, i32) #1

declare dso_local i32 @nft_set_ext_expr(%struct.nft_set_ext*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
