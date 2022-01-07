; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfpkt_skbuff.c_cfpkt_extr_head.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfpkt_skbuff.c_cfpkt_extr_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfpkt = type { i32 }
%struct.sk_buff = type { i64 }

@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"read beyond end of packet\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"linearize failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfpkt_extr_head(%struct.cfpkt* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  store %struct.cfpkt* %0, %struct.cfpkt** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %11 = call %struct.sk_buff* @pkt_to_skb(%struct.cfpkt* %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %8, align 8
  %12 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %13 = call i32 @is_erronous(%struct.cfpkt* %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EPROTO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %70

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %30 = call i32 @PKT_ERROR(%struct.cfpkt* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EPROTO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %70

33:                                               ; preds = %19
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = call i64 @skb_headlen(%struct.sk_buff* %35)
  %37 = icmp sgt i64 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call i64 @skb_linearize(%struct.sk_buff* %42)
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %50 = call i32 @PKT_ERROR(%struct.cfpkt* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EPROTO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %70

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %33
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32* @skb_pull(%struct.sk_buff* %55, i64 %56)
  store i32* %57, i32** %9, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = sub i64 0, %58
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %9, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load i8*, i8** %6, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @memcpy(i8* %65, i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %64, %54
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %48, %28, %16
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.sk_buff* @pkt_to_skb(%struct.cfpkt*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_erronous(%struct.cfpkt*) #1

declare dso_local i32 @PKT_ERROR(%struct.cfpkt*, i8*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32* @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
