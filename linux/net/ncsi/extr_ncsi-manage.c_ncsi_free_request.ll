; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_free_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_free_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, i32, i32, %struct.sk_buff*, %struct.sk_buff*, i32, %struct.ncsi_dev_priv* }
%struct.sk_buff = type { i32 }
%struct.ncsi_dev_priv = type { i64, i32, i32 }

@NCSI_REQ_FLAG_EVENT_DRIVEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncsi_free_request(%struct.ncsi_request* %0) #0 {
  %2 = alloca %struct.ncsi_request*, align 8
  %3 = alloca %struct.ncsi_dev_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ncsi_request* %0, %struct.ncsi_request** %2, align 8
  %8 = load %struct.ncsi_request*, %struct.ncsi_request** %2, align 8
  %9 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %8, i32 0, i32 6
  %10 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %9, align 8
  store %struct.ncsi_dev_priv* %10, %struct.ncsi_dev_priv** %3, align 8
  %11 = load %struct.ncsi_request*, %struct.ncsi_request** %2, align 8
  %12 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.ncsi_request*, %struct.ncsi_request** %2, align 8
  %17 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.ncsi_request*, %struct.ncsi_request** %2, align 8
  %19 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %18, i32 0, i32 5
  %20 = call i32 @del_timer_sync(i32* %19)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %3, align 8
  %23 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %22, i32 0, i32 2
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.ncsi_request*, %struct.ncsi_request** %2, align 8
  %27 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %26, i32 0, i32 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %4, align 8
  %29 = load %struct.ncsi_request*, %struct.ncsi_request** %2, align 8
  %30 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %29, i32 0, i32 3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  store %struct.sk_buff* %31, %struct.sk_buff** %5, align 8
  %32 = load %struct.ncsi_request*, %struct.ncsi_request** %2, align 8
  %33 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %32, i32 0, i32 4
  store %struct.sk_buff* null, %struct.sk_buff** %33, align 8
  %34 = load %struct.ncsi_request*, %struct.ncsi_request** %2, align 8
  %35 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %34, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %35, align 8
  %36 = load %struct.ncsi_request*, %struct.ncsi_request** %2, align 8
  %37 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load %struct.ncsi_request*, %struct.ncsi_request** %2, align 8
  %39 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @NCSI_REQ_FLAG_EVENT_DRIVEN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %3, align 8
  %48 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %47, i32 0, i32 2
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %21
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %3, align 8
  %58 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* %58, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %3, align 8
  %64 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %63, i32 0, i32 1
  %65 = call i32 @schedule_work(i32* %64)
  br label %66

66:                                               ; preds = %62, %56, %53, %21
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @consume_skb(%struct.sk_buff* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @consume_skb(%struct.sk_buff* %69)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
