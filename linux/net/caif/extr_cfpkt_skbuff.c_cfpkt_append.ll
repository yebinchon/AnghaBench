; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfpkt_skbuff.c_cfpkt_append.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfpkt_skbuff.c_cfpkt_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfpkt = type { i32 }
%struct.sk_buff = type { i64, i64, i32 }

@PKT_PREFIX = common dso_local global i64 0, align 8
@PKT_POSTFIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cfpkt* @cfpkt_append(%struct.cfpkt* %0, %struct.cfpkt* %1, i64 %2) #0 {
  %4 = alloca %struct.cfpkt*, align 8
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca %struct.cfpkt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.cfpkt*, align 8
  store %struct.cfpkt* %0, %struct.cfpkt** %5, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %17 = call %struct.sk_buff* @pkt_to_skb(%struct.cfpkt* %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  %18 = load %struct.cfpkt*, %struct.cfpkt** %6, align 8
  %19 = call %struct.sk_buff* @pkt_to_skb(%struct.cfpkt* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %9, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = call i64 @skb_headlen(%struct.sk_buff* %20)
  store i64 %21, i64* %10, align 8
  %22 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %23 = call i64 @is_erronous(%struct.cfpkt* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load %struct.cfpkt*, %struct.cfpkt** %6, align 8
  %27 = call i64 @is_erronous(%struct.cfpkt* %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %25, %3
  %30 = phi i1 [ true, %3 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  store %struct.cfpkt* %35, %struct.cfpkt** %4, align 8
  br label %93

36:                                               ; preds = %29
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* %7, align 8
  store i64 %41, i64* %11, align 8
  br label %44

42:                                               ; preds = %36
  %43 = load i64, i64* %10, align 8
  store i64 %43, i64* %11, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %44
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call i64 @skb_headlen(%struct.sk_buff* %55)
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add nsw i64 %57, %58
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* @PKT_PREFIX, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i64, i64* @PKT_POSTFIX, align 8
  %64 = add nsw i64 %62, %63
  %65 = call %struct.cfpkt* @cfpkt_create(i64 %64)
  store %struct.cfpkt* %65, %struct.cfpkt** %15, align 8
  %66 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %67 = icmp eq %struct.cfpkt* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  store %struct.cfpkt* null, %struct.cfpkt** %4, align 8
  br label %93

69:                                               ; preds = %54
  %70 = load %struct.cfpkt*, %struct.cfpkt** %15, align 8
  %71 = call %struct.sk_buff* @pkt_to_skb(%struct.cfpkt* %70)
  store %struct.sk_buff* %71, %struct.sk_buff** %12, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %13, align 8
  %77 = call i32 @skb_put_data(%struct.sk_buff* %72, i32 %75, i64 %76)
  %78 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %79 = call i32 @cfpkt_destroy(%struct.cfpkt* %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %80, %struct.sk_buff** %8, align 8
  br label %81

81:                                               ; preds = %69, %44
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = call i64 @skb_headlen(%struct.sk_buff* %86)
  %88 = call i32 @skb_put_data(%struct.sk_buff* %82, i32 %85, i64 %87)
  %89 = load %struct.cfpkt*, %struct.cfpkt** %6, align 8
  %90 = call i32 @cfpkt_destroy(%struct.cfpkt* %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = call %struct.cfpkt* @skb_to_pkt(%struct.sk_buff* %91)
  store %struct.cfpkt* %92, %struct.cfpkt** %4, align 8
  br label %93

93:                                               ; preds = %81, %68, %34
  %94 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  ret %struct.cfpkt* %94
}

declare dso_local %struct.sk_buff* @pkt_to_skb(%struct.cfpkt*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @is_erronous(%struct.cfpkt*) #1

declare dso_local %struct.cfpkt* @cfpkt_create(i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

declare dso_local %struct.cfpkt* @skb_to_pkt(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
