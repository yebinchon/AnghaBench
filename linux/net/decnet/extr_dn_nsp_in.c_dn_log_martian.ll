; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_in.c_dn_log_martian.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_in.c_dn_log_martian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.dn_skb_cb = type { i32, i32, i32, i32 }

@decnet_log_martians = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.1 = private unnamed_addr constant [92 x i8] c"DECnet: Martian packet (%s) dev=%s src=0x%04hx dst=0x%04hx srcport=0x%04hx dstport=0x%04hx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i8*)* @dn_log_martian to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_log_martian(%struct.sk_buff* %0, i8* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dn_skb_cb*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i64, i64* @decnet_log_martians, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  br label %21

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20, %14
  %22 = phi i8* [ %19, %14 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %20 ]
  store i8* %22, i8** %5, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %23)
  store %struct.dn_skb_cb* %24, %struct.dn_skb_cb** %6, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %6, align 8
  %28 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le16_to_cpu(i32 %29)
  %31 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %6, align 8
  %32 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %6, align 8
  %36 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  %39 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %6, align 8
  %40 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = call i32 @net_info_ratelimited(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %26, i32 %30, i32 %34, i32 %38, i32 %42)
  br label %44

44:                                               ; preds = %21, %2
  ret void
}

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @net_info_ratelimited(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
