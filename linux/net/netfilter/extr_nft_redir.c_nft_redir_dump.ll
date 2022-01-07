; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_redir.c_nft_redir_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_redir.c_nft_redir_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_redir = type { i64, i64, i64 }

@NFTA_REDIR_REG_PROTO_MIN = common dso_local global i32 0, align 4
@NFTA_REDIR_REG_PROTO_MAX = common dso_local global i32 0, align 4
@NFTA_REDIR_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_redir_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_redir_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_redir*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %7 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %8 = call %struct.nft_redir* @nft_expr_priv(%struct.nft_expr* %7)
  store %struct.nft_redir* %8, %struct.nft_redir** %6, align 8
  %9 = load %struct.nft_redir*, %struct.nft_redir** %6, align 8
  %10 = getelementptr inbounds %struct.nft_redir, %struct.nft_redir* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @NFTA_REDIR_REG_PROTO_MIN, align 4
  %16 = load %struct.nft_redir*, %struct.nft_redir** %6, align 8
  %17 = getelementptr inbounds %struct.nft_redir, %struct.nft_redir* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @nft_dump_register(%struct.sk_buff* %14, i32 %15, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %48

22:                                               ; preds = %13
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @NFTA_REDIR_REG_PROTO_MAX, align 4
  %25 = load %struct.nft_redir*, %struct.nft_redir** %6, align 8
  %26 = getelementptr inbounds %struct.nft_redir, %struct.nft_redir* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @nft_dump_register(%struct.sk_buff* %23, i32 %24, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %48

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.nft_redir*, %struct.nft_redir** %6, align 8
  %34 = getelementptr inbounds %struct.nft_redir, %struct.nft_redir* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load i32, i32* @NFTA_REDIR_FLAGS, align 4
  %40 = load %struct.nft_redir*, %struct.nft_redir** %6, align 8
  %41 = getelementptr inbounds %struct.nft_redir, %struct.nft_redir* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @htonl(i64 %42)
  %44 = call i64 @nla_put_be32(%struct.sk_buff* %38, i32 %39, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %48

47:                                               ; preds = %37, %32
  store i32 0, i32* %3, align 4
  br label %49

48:                                               ; preds = %46, %30, %21
  store i32 -1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.nft_redir* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nft_dump_register(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
