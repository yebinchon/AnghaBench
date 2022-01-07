; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfpkt_skbuff.c_cfpkt_add_body.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfpkt_skbuff.c_cfpkt_add_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfpkt = type { i32 }
%struct.sk_buff = type { i32 }

@EPROTO = common dso_local global i32 0, align 4
@PKT_LEN_WHEN_EXTENDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"cow failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfpkt_add_body(%struct.cfpkt* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.cfpkt* %0, %struct.cfpkt** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %13 = call %struct.sk_buff* @pkt_to_skb(%struct.cfpkt* %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %8, align 8
  store i64 0, i64* %11, align 8
  %14 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %15 = call i32 @is_erronous(%struct.cfpkt* %14)
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EPROTO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %88

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %22, %struct.sk_buff** %9, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = call i64 @skb_tailroom(%struct.sk_buff* %23)
  %25 = load i64, i64* %7, align 8
  %26 = icmp slt i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %21
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @PKT_LEN_WHEN_EXTENDING, align 8
  %33 = icmp slt i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i64 @likely(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i64, i64* @PKT_LEN_WHEN_EXTENDING, align 8
  store i64 %40, i64* %11, align 8
  br label %43

41:                                               ; preds = %30
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %11, align 8
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i64, i64* %11, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = call i64 @skb_cloned(%struct.sk_buff* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = call i64 @skb_shared(%struct.sk_buff* %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %51, %47, %44
  %56 = phi i1 [ true, %47 ], [ true, %44 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i64 @skb_cow_data(%struct.sk_buff* %61, i64 %62, %struct.sk_buff** %9)
  %64 = icmp slt i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %70 = call i32 @PKT_ERROR(%struct.cfpkt* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @EPROTO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %88

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %55
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32* @pskb_put(%struct.sk_buff* %75, %struct.sk_buff* %76, i64 %77)
  store i32* %78, i32** %10, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i64 @likely(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load i32*, i32** %10, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @memcpy(i32* %83, i8* %84, i64 %85)
  br label %87

87:                                               ; preds = %82, %74
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %68, %18
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.sk_buff* @pkt_to_skb(%struct.cfpkt*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_erronous(%struct.cfpkt*) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @likely(i8*) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local i64 @skb_cow_data(%struct.sk_buff*, i64, %struct.sk_buff**) #1

declare dso_local i32 @PKT_ERROR(%struct.cfpkt*, i8*) #1

declare dso_local i32* @pskb_put(%struct.sk_buff*, %struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
