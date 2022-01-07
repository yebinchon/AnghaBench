; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_address-claim.c_j1939_ac_verify_outgoing.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_address-claim.c_j1939_ac_verify_outgoing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.j1939_sk_buff_cb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"tx address claim with dlc %i\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"tx address claim with different name\0A\00", align 1
@J1939_NO_ADDR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"tx address claim with broadcast sa\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"tx address claim with dest, not broadcast\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.j1939_priv*, %struct.sk_buff*)* @j1939_ac_verify_outgoing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @j1939_ac_verify_outgoing(%struct.j1939_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.j1939_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.j1939_sk_buff_cb*, align 8
  store %struct.j1939_priv* %0, %struct.j1939_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = call %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff* %7)
  store %struct.j1939_sk_buff_cb* %8, %struct.j1939_sk_buff_cb** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 8
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %15 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, ...) @netdev_notice(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EPROTO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %73

23:                                               ; preds = %2
  %24 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %25 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i64 @j1939_skb_to_name(%struct.sk_buff* %28)
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %33 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @netdev_notice(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EPROTO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %73

38:                                               ; preds = %23
  %39 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %40 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @J1939_NO_ADDR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %47 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @netdev_notice(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EPROTO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %73

52:                                               ; preds = %38
  %53 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %54 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %60 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @J1939_NO_ADDR, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %58, %52
  %66 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %67 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @netdev_notice(i32 %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @EPROTO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %65, %45, %31, %13
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff*) #1

declare dso_local i32 @netdev_notice(i32, i8*, ...) #1

declare dso_local i64 @j1939_skb_to_name(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
