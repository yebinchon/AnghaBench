; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_igmp.c_ip_mc_check_igmp_query.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_igmp.c_ip_mc_check_igmp_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@INADDR_ALLHOSTS_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ip_mc_check_igmp_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_mc_check_igmp_query(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call i32 @ip_transport_len(%struct.sk_buff* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = icmp ne i64 %9, 4
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %13, 4
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %50

18:                                               ; preds = %11
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call i32 @skb_transport_offset(%struct.sk_buff* %19)
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ip_mc_may_pull(%struct.sk_buff* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %50

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call %struct.TYPE_4__* @igmp_hdr(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = call %struct.TYPE_3__* @ip_hdr(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @INADDR_ALLHOSTS_GROUP, align 4
  %44 = call i64 @htonl(i32 %43)
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %38, %32
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %46, %28, %15
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @ip_transport_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @ip_mc_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_4__* @igmp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
