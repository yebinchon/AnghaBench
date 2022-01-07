; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_meta.c_nft_meta_set_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_meta.c_nft_meta_set_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { i8** }
%struct.nft_pktinfo = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i8*, i32, i8*, i8* }
%struct.nft_meta = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_meta_set_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_meta*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %12 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %13 = call %struct.nft_meta* @nft_expr_priv(%struct.nft_expr* %12)
  store %struct.nft_meta* %13, %struct.nft_meta** %7, align 8
  %14 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %15 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %14, i32 0, i32 0
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %8, align 8
  %17 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %18 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = load %struct.nft_meta*, %struct.nft_meta** %7, align 8
  %21 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i8*, i8** %19, i64 %22
  store i8** %23, i8*** %9, align 8
  %24 = load i8**, i8*** %9, align 8
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  %26 = load %struct.nft_meta*, %struct.nft_meta** %7, align 8
  %27 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %70 [
    i32 132, label %29
    i32 129, label %33
    i32 130, label %37
    i32 131, label %60
  ]

29:                                               ; preds = %3
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  br label %72

33:                                               ; preds = %3
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  br label %72

37:                                               ; preds = %3
  %38 = load i8**, i8*** %9, align 8
  %39 = call i32 @nft_reg_load8(i8** %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %37
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @skb_pkt_type_ok(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @skb_pkt_type_ok(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %49, %45, %37
  br label %72

60:                                               ; preds = %3
  %61 = load i8**, i8*** %9, align 8
  %62 = call i32 @nft_reg_load8(i8** %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %72

70:                                               ; preds = %3
  %71 = call i32 @WARN_ON(i32 1)
  br label %72

72:                                               ; preds = %70, %60, %59, %33, %29
  ret void
}

declare dso_local %struct.nft_meta* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_reg_load8(i8**) #1

declare dso_local i32 @skb_pkt_type_ok(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
