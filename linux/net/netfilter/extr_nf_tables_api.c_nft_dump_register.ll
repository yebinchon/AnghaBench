; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_dump_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_dump_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@NFT_REG_SIZE = common dso_local global i32 0, align 4
@NFT_REG32_SIZE = common dso_local global i32 0, align 4
@NFT_REG32_00 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nft_dump_register(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @NFT_REG_SIZE, align 4
  %9 = load i32, i32* @NFT_REG32_SIZE, align 4
  %10 = udiv i32 %8, %9
  %11 = urem i32 %7, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NFT_REG_SIZE, align 4
  %16 = load i32, i32* @NFT_REG32_SIZE, align 4
  %17 = udiv i32 %15, %16
  %18 = udiv i32 %14, %17
  store i32 %18, i32* %6, align 4
  br label %27

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @NFT_REG_SIZE, align 4
  %22 = load i32, i32* @NFT_REG32_SIZE, align 4
  %23 = udiv i32 %21, %22
  %24 = sub i32 %20, %23
  %25 = load i32, i32* @NFT_REG32_00, align 4
  %26 = add i32 %24, %25
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %19, %13
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @htonl(i32 %30)
  %32 = call i32 @nla_put_be32(%struct.sk_buff* %28, i32 %29, i32 %31)
  ret i32 %32
}

declare dso_local i32 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
