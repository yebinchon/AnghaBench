; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_add_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_add_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tlv_desc = type { i8*, i8* }

@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i8*, i32)* @tipc_add_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_add_tlv(%struct.sk_buff* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tlv_desc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call i64 @skb_tail_pointer(%struct.sk_buff* %11)
  %13 = inttoptr i64 %12 to %struct.tlv_desc*
  store %struct.tlv_desc* %13, %struct.tlv_desc** %10, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i64 @tipc_skb_tailroom(%struct.sk_buff* %14)
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @TLV_SPACE(i32 %16)
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EMSGSIZE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %48

22:                                               ; preds = %4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @TLV_SPACE(i32 %24)
  %26 = call i32 @skb_put(%struct.sk_buff* %23, i64 %25)
  %27 = load i32, i32* %7, align 4
  %28 = call i8* @htons(i32 %27)
  %29 = load %struct.tlv_desc*, %struct.tlv_desc** %10, align 8
  %30 = getelementptr inbounds %struct.tlv_desc, %struct.tlv_desc* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @TLV_LENGTH(i32 %31)
  %33 = call i8* @htons(i32 %32)
  %34 = load %struct.tlv_desc*, %struct.tlv_desc** %10, align 8
  %35 = getelementptr inbounds %struct.tlv_desc, %struct.tlv_desc* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %22
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.tlv_desc*, %struct.tlv_desc** %10, align 8
  %43 = call i32 @TLV_DATA(%struct.tlv_desc* %42)
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @memcpy(i32 %43, i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %38, %22
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %19
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i64 @tipc_skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @TLV_SPACE(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @TLV_LENGTH(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @TLV_DATA(%struct.tlv_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
