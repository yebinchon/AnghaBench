; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_report_sock_error.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_report_sock_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sock_exterr_skb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i64, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SO_EE_ORIGIN_TXTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, i32)* @report_sock_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_sock_error(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock_exterr_skb*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17, %3
  br label %71

25:                                               ; preds = %17
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %71

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = call %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff* %33)
  store %struct.sock_exterr_skb* %34, %struct.sock_exterr_skb** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %7, align 8
  %37 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 6
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @SO_EE_ORIGIN_TXTIME, align 4
  %40 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %7, align 8
  %41 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 5
  store i32 %39, i32* %42, align 8
  %43 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %7, align 8
  %44 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %7, align 8
  %48 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 8
  %50 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %7, align 8
  %51 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = ashr i32 %53, 32
  %55 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %7, align 8
  %56 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %7, align 8
  %60 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = call i64 @sock_queue_err_skb(%struct.TYPE_4__* %64, %struct.sk_buff* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %32
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = call i32 @kfree_skb(%struct.sk_buff* %69)
  br label %71

71:                                               ; preds = %24, %31, %68, %32
  ret void
}

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff*) #1

declare dso_local i64 @sock_queue_err_skb(%struct.TYPE_4__*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
