; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_set_lookup_global.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_set_lookup_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_set = type { i32 }
%struct.net = type { i32 }
%struct.nft_table = type { i32 }
%struct.nlattr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nft_set* @nft_set_lookup_global(%struct.net* %0, %struct.nft_table* %1, %struct.nlattr* %2, %struct.nlattr* %3, i32 %4) #0 {
  %6 = alloca %struct.nft_set*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.nft_table*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nft_set*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.nft_table* %1, %struct.nft_table** %8, align 8
  store %struct.nlattr* %2, %struct.nlattr** %9, align 8
  store %struct.nlattr* %3, %struct.nlattr** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.nft_table*, %struct.nft_table** %8, align 8
  %14 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call %struct.nft_set* @nft_set_lookup(%struct.nft_table* %13, %struct.nlattr* %14, i32 %15)
  store %struct.nft_set* %16, %struct.nft_set** %12, align 8
  %17 = load %struct.nft_set*, %struct.nft_set** %12, align 8
  %18 = call i64 @IS_ERR(%struct.nft_set* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %5
  %21 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %22 = icmp ne %struct.nlattr* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load %struct.nft_set*, %struct.nft_set** %12, align 8
  store %struct.nft_set* %24, %struct.nft_set** %6, align 8
  br label %32

25:                                               ; preds = %20
  %26 = load %struct.net*, %struct.net** %7, align 8
  %27 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.nft_set* @nft_set_lookup_byid(%struct.net* %26, %struct.nlattr* %27, i32 %28)
  store %struct.nft_set* %29, %struct.nft_set** %12, align 8
  br label %30

30:                                               ; preds = %25, %5
  %31 = load %struct.nft_set*, %struct.nft_set** %12, align 8
  store %struct.nft_set* %31, %struct.nft_set** %6, align 8
  br label %32

32:                                               ; preds = %30, %23
  %33 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  ret %struct.nft_set* %33
}

declare dso_local %struct.nft_set* @nft_set_lookup(%struct.nft_table*, %struct.nlattr*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_set*) #1

declare dso_local %struct.nft_set* @nft_set_lookup_byid(%struct.net*, %struct.nlattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
