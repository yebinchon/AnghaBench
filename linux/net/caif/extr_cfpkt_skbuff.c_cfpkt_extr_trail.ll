; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfpkt_skbuff.c_cfpkt_extr_trail.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfpkt_skbuff.c_cfpkt_extr_trail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfpkt = type { i32 }
%struct.sk_buff = type { i32, i32 }

@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"linearize failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"read beyond end of packet\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfpkt_extr_trail(%struct.cfpkt* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.cfpkt* %0, %struct.cfpkt** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %12 = call %struct.sk_buff* @pkt_to_skb(%struct.cfpkt* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %9, align 8
  %15 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %16 = call i32 @is_erronous(%struct.cfpkt* %15)
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EPROTO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %69

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = call i64 @skb_linearize(%struct.sk_buff* %23)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %31 = call i32 @PKT_ERROR(%struct.cfpkt* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EPROTO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %69

34:                                               ; preds = %22
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = call i32 @skb_tail_pointer(%struct.sk_buff* %40)
  %42 = icmp sgt i32 %39, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %48 = call i32 @PKT_ERROR(%struct.cfpkt* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EPROTO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %69

51:                                               ; preds = %34
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = call i32 @skb_tail_pointer(%struct.sk_buff* %52)
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %10, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %61, %62
  %64 = call i32 @skb_trim(%struct.sk_buff* %58, i32 %63)
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @memcpy(i32* %65, i32* %66, i32 %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %51, %46, %29, %19
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.sk_buff* @pkt_to_skb(%struct.cfpkt*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_erronous(%struct.cfpkt*) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @PKT_ERROR(%struct.cfpkt*, i8*) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
