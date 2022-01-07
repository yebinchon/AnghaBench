; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_hop_calipso.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_hop_calipso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @ipv6_hop_calipso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_hop_calipso(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call i8* @skb_network_header(%struct.sk_buff* %7)
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %47

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 6
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = mul nsw i32 %25, 4
  %27 = add nsw i32 %26, 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp sgt i32 %27, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  br label %47

37:                                               ; preds = %18
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = call i32 @calipso_validate(%struct.sk_buff* %38, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %47

46:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %50

47:                                               ; preds = %45, %36, %17
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @kfree_skb(%struct.sk_buff* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %46
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @calipso_validate(%struct.sk_buff*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
