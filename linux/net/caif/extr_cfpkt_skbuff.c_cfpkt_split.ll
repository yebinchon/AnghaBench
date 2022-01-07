; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfpkt_skbuff.c_cfpkt_split.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfpkt_skbuff.c_cfpkt_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfpkt = type { i32 }
%struct.sk_buff = type { i32, i32* }

@.str = private unnamed_addr constant [38 x i8] c"trying to split beyond end of packet\0A\00", align 1
@PKT_PREFIX = common dso_local global i32 0, align 4
@PKT_POSTFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cfpkt* @cfpkt_split(%struct.cfpkt* %0, i32 %1) #0 {
  %3 = alloca %struct.cfpkt*, align 8
  %4 = alloca %struct.cfpkt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.cfpkt*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.cfpkt* %0, %struct.cfpkt** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %12 = call %struct.sk_buff* @pkt_to_skb(%struct.cfpkt* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call i32* @skb_tail_pointer(%struct.sk_buff* %19)
  %21 = load i32*, i32** %9, align 8
  %22 = ptrtoint i32* %20 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %28 = call i32 @is_erronous(%struct.cfpkt* %27)
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store %struct.cfpkt* null, %struct.cfpkt** %3, align 8
  br label %77

32:                                               ; preds = %2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call i32* @skb_tail_pointer(%struct.sk_buff* %39)
  %41 = icmp ugt i32* %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %44 = call i32 @PKT_ERROR(%struct.cfpkt* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store %struct.cfpkt* null, %struct.cfpkt** %3, align 8
  br label %77

45:                                               ; preds = %32
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @PKT_PREFIX, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* @PKT_POSTFIX, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* @PKT_PREFIX, align 4
  %52 = call %struct.cfpkt* @cfpkt_create_pfx(i32 %50, i32 %51)
  store %struct.cfpkt* %52, %struct.cfpkt** %8, align 8
  %53 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %54 = icmp eq %struct.cfpkt* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store %struct.cfpkt* null, %struct.cfpkt** %3, align 8
  br label %77

56:                                               ; preds = %45
  %57 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %58 = call %struct.sk_buff* @pkt_to_skb(%struct.cfpkt* %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %6, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = icmp eq %struct.sk_buff* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store %struct.cfpkt* null, %struct.cfpkt** %3, align 8
  br label %77

62:                                               ; preds = %56
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @skb_put_data(%struct.sk_buff* %63, i32* %64, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @skb_trim(%struct.sk_buff* %67, i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = call %struct.cfpkt* @skb_to_pkt(%struct.sk_buff* %75)
  store %struct.cfpkt* %76, %struct.cfpkt** %3, align 8
  br label %77

77:                                               ; preds = %62, %61, %55, %42, %31
  %78 = load %struct.cfpkt*, %struct.cfpkt** %3, align 8
  ret %struct.cfpkt* %78
}

declare dso_local %struct.sk_buff* @pkt_to_skb(%struct.cfpkt*) #1

declare dso_local i32* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_erronous(%struct.cfpkt*) #1

declare dso_local i32 @PKT_ERROR(%struct.cfpkt*, i8*) #1

declare dso_local %struct.cfpkt* @cfpkt_create_pfx(i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local %struct.cfpkt* @skb_to_pkt(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
