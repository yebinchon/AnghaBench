; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfpkt_skbuff.c_cfpkt_setlen.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfpkt_skbuff.c_cfpkt_setlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfpkt = type { i32 }
%struct.sk_buff = type { i64, i32 }

@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"skb_pad_trail failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfpkt_setlen(%struct.cfpkt* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfpkt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.cfpkt* %0, %struct.cfpkt** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %8 = call %struct.sk_buff* @pkt_to_skb(%struct.cfpkt* %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %6, align 8
  %9 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %10 = call i32 @is_erronous(%struct.cfpkt* %9)
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EPROTO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %61

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %16
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @___pskb_trim(%struct.sk_buff* %32, i64 %33)
  br label %39

35:                                               ; preds = %25
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @skb_trim(%struct.sk_buff* %36, i64 %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %41 = call i32 @cfpkt_getlen(%struct.cfpkt* %40)
  store i32 %41, i32* %3, align 4
  br label %61

42:                                               ; preds = %16
  %43 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = call i32 @cfpkt_pad_trail(%struct.cfpkt* %43, i64 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %57 = call i32 @PKT_ERROR(%struct.cfpkt* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %42
  %59 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %60 = call i32 @cfpkt_getlen(%struct.cfpkt* %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %39, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.sk_buff* @pkt_to_skb(%struct.cfpkt*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_erronous(%struct.cfpkt*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @___pskb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @cfpkt_getlen(%struct.cfpkt*) #1

declare dso_local i32 @cfpkt_pad_trail(%struct.cfpkt*, i64) #1

declare dso_local i32 @PKT_ERROR(%struct.cfpkt*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
