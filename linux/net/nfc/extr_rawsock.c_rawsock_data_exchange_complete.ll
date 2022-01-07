; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_rawsock.c_rawsock_data_exchange_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_rawsock.c_rawsock_data_exchange_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"sk=%p err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sk_buff*, i32)* @rawsock_data_exchange_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rawsock_data_exchange_complete(i8* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sock*
  store %struct.sock* %9, %struct.sock** %7, align 8
  %10 = call i32 (...) @in_irq()
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.sock*, %struct.sock** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.sock* %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @rawsock_add_header(%struct.sk_buff* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %56

24:                                               ; preds = %18
  %25 = load %struct.sock*, %struct.sock** %7, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @sock_queue_rcv_skb(%struct.sock* %25, %struct.sk_buff* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %56

31:                                               ; preds = %24
  %32 = load %struct.sock*, %struct.sock** %7, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_bh(i32* %34)
  %36 = load %struct.sock*, %struct.sock** %7, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = call i32 @skb_queue_empty(%struct.TYPE_3__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = load %struct.sock*, %struct.sock** %7, align 8
  %42 = call %struct.TYPE_4__* @nfc_rawsock(%struct.sock* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = call i32 @schedule_work(i32* %43)
  br label %49

45:                                               ; preds = %31
  %46 = load %struct.sock*, %struct.sock** %7, align 8
  %47 = call %struct.TYPE_4__* @nfc_rawsock(%struct.sock* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.sock*, %struct.sock** %7, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_bh(i32* %52)
  %54 = load %struct.sock*, %struct.sock** %7, align 8
  %55 = call i32 @sock_put(%struct.sock* %54)
  br label %65

56:                                               ; preds = %30, %23
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i32 @kfree_skb(%struct.sk_buff* %57)
  br label %59

59:                                               ; preds = %56, %17
  %60 = load %struct.sock*, %struct.sock** %7, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @rawsock_report_error(%struct.sock* %60, i32 %61)
  %63 = load %struct.sock*, %struct.sock** %7, align 8
  %64 = call i32 @sock_put(%struct.sock* %63)
  br label %65

65:                                               ; preds = %59, %49
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_irq(...) #1

declare dso_local i32 @pr_debug(i8*, %struct.sock*, i32) #1

declare dso_local i32 @rawsock_add_header(%struct.sk_buff*) #1

declare dso_local i32 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @skb_queue_empty(%struct.TYPE_3__*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local %struct.TYPE_4__* @nfc_rawsock(%struct.sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rawsock_report_error(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
