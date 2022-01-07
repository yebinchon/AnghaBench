; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_loop_check_setelem.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_loop_check_setelem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_set_iter = type { i32 }
%struct.nft_set_elem = type { i32 }
%struct.nft_set_ext = type { i32 }
%struct.nft_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NFT_SET_EXT_FLAGS = common dso_local global i32 0, align 4
@NFT_SET_ELEM_INTERVAL_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_set*, %struct.nft_set_iter*, %struct.nft_set_elem*)* @nf_tables_loop_check_setelem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_loop_check_setelem(%struct.nft_ctx* %0, %struct.nft_set* %1, %struct.nft_set_iter* %2, %struct.nft_set_elem* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nft_ctx*, align 8
  %7 = alloca %struct.nft_set*, align 8
  %8 = alloca %struct.nft_set_iter*, align 8
  %9 = alloca %struct.nft_set_elem*, align 8
  %10 = alloca %struct.nft_set_ext*, align 8
  %11 = alloca %struct.nft_data*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %6, align 8
  store %struct.nft_set* %1, %struct.nft_set** %7, align 8
  store %struct.nft_set_iter* %2, %struct.nft_set_iter** %8, align 8
  store %struct.nft_set_elem* %3, %struct.nft_set_elem** %9, align 8
  %12 = load %struct.nft_set*, %struct.nft_set** %7, align 8
  %13 = load %struct.nft_set_elem*, %struct.nft_set_elem** %9, align 8
  %14 = getelementptr inbounds %struct.nft_set_elem, %struct.nft_set_elem* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.nft_set_ext* @nft_set_elem_ext(%struct.nft_set* %12, i32 %15)
  store %struct.nft_set_ext* %16, %struct.nft_set_ext** %10, align 8
  %17 = load %struct.nft_set_ext*, %struct.nft_set_ext** %10, align 8
  %18 = load i32, i32* @NFT_SET_EXT_FLAGS, align 4
  %19 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load %struct.nft_set_ext*, %struct.nft_set_ext** %10, align 8
  %23 = call i32* @nft_set_ext_flags(%struct.nft_set_ext* %22)
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NFT_SET_ELEM_INTERVAL_END, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %44

29:                                               ; preds = %21, %4
  %30 = load %struct.nft_set_ext*, %struct.nft_set_ext** %10, align 8
  %31 = call %struct.nft_data* @nft_set_ext_data(%struct.nft_set_ext* %30)
  store %struct.nft_data* %31, %struct.nft_data** %11, align 8
  %32 = load %struct.nft_data*, %struct.nft_data** %11, align 8
  %33 = getelementptr inbounds %struct.nft_data, %struct.nft_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %43 [
    i32 128, label %36
    i32 129, label %36
  ]

36:                                               ; preds = %29, %29
  %37 = load %struct.nft_ctx*, %struct.nft_ctx** %6, align 8
  %38 = load %struct.nft_data*, %struct.nft_data** %11, align 8
  %39 = getelementptr inbounds %struct.nft_data, %struct.nft_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nf_tables_check_loops(%struct.nft_ctx* %37, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %44

43:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %36, %28
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.nft_set_ext* @nft_set_elem_ext(%struct.nft_set*, i32) #1

declare dso_local i64 @nft_set_ext_exists(%struct.nft_set_ext*, i32) #1

declare dso_local i32* @nft_set_ext_flags(%struct.nft_set_ext*) #1

declare dso_local %struct.nft_data* @nft_set_ext_data(%struct.nft_set_ext*) #1

declare dso_local i32 @nf_tables_check_loops(%struct.nft_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
