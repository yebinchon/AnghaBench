; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_ulpevent* (i32, i32, i32)* @sctp_ulpevent_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_ulpevent* @sctp_ulpevent_new(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_ulpevent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_ulpevent*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.sk_buff* @alloc_skb(i32 %10, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %26

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %18 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %17)
  store %struct.sctp_ulpevent* %18, %struct.sctp_ulpevent** %8, align 8
  %19 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sctp_ulpevent_init(%struct.sctp_ulpevent* %19, i32 %20, i32 %23)
  %25 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  store %struct.sctp_ulpevent* %25, %struct.sctp_ulpevent** %4, align 8
  br label %27

26:                                               ; preds = %15
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %4, align 8
  br label %27

27:                                               ; preds = %26, %16
  %28 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %4, align 8
  ret %struct.sctp_ulpevent* %28
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff*) #1

declare dso_local i32 @sctp_ulpevent_init(%struct.sctp_ulpevent*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
