; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_raw.c_atm_send_aal0.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_raw.c_atm_send_aal0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.sk_buff = type { i64 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@ATM_HDR_VPI_MASK = common dso_local global i32 0, align 4
@ATM_HDR_VCI_MASK = common dso_local global i32 0, align 4
@ATM_HDR_VPI_SHIFT = common dso_local global i32 0, align 4
@ATM_HDR_VCI_SHIFT = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, %struct.sk_buff*)* @atm_send_aal0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_send_aal0(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %6 = load i32, i32* @CAP_NET_ADMIN, align 4
  %7 = call i32 @capable(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ATM_HDR_VPI_MASK, align 4
  %17 = load i32, i32* @ATM_HDR_VCI_MASK, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %21 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ATM_HDR_VPI_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %26 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ATM_HDR_VCI_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %24, %29
  %31 = icmp ne i32 %19, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %9
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  %35 = load i32, i32* @EADDRNOTAVAIL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %9, %2
  %38 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %39 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %45 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %44, align 8
  %46 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32 %45(%struct.atm_vcc* %46, %struct.sk_buff* %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %37, %32
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
