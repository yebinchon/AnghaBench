; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_caif_socket.c_transmit_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_caif_socket.c_transmit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.caifsock = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, %struct.cfpkt*)* }
%struct.cfpkt = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CAIF_DIR_OUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.caifsock*, i32, i64)* @transmit_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transmit_skb(%struct.sk_buff* %0, %struct.caifsock* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.caifsock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.cfpkt*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.caifsock* %1, %struct.caifsock** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* @CAIF_DIR_OUT, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call %struct.cfpkt* @cfpkt_fromnative(i32 %11, %struct.sk_buff* %12)
  store %struct.cfpkt* %13, %struct.cfpkt** %10, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @memset(i32 %16, i32 0, i32 4)
  %18 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %19 = load %struct.caifsock*, %struct.caifsock** %7, align 8
  %20 = getelementptr inbounds %struct.caifsock, %struct.caifsock* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @cfpkt_set_prio(%struct.cfpkt* %18, i32 %22)
  %24 = load %struct.caifsock*, %struct.caifsock** %7, align 8
  %25 = getelementptr inbounds %struct.caifsock, %struct.caifsock* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp eq %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i32 @kfree_skb(%struct.sk_buff* %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %47

34:                                               ; preds = %4
  %35 = load %struct.caifsock*, %struct.caifsock** %7, align 8
  %36 = getelementptr inbounds %struct.caifsock, %struct.caifsock* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_6__*, %struct.cfpkt*)*, i32 (%struct.TYPE_6__*, %struct.cfpkt*)** %39, align 8
  %41 = load %struct.caifsock*, %struct.caifsock** %7, align 8
  %42 = getelementptr inbounds %struct.caifsock, %struct.caifsock* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %46 = call i32 %40(%struct.TYPE_6__* %44, %struct.cfpkt* %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %34, %29
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.cfpkt* @cfpkt_fromnative(i32, %struct.sk_buff*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @cfpkt_set_prio(%struct.cfpkt*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
