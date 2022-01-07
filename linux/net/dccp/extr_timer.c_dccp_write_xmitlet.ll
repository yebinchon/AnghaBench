; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_timer.c_dccp_write_xmitlet.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_timer.c_dccp_write_xmitlet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dccp_write_xmitlet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_write_xmitlet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.sock*
  store %struct.sock* %5, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call i32 @bh_lock_sock(%struct.sock* %6)
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call i64 @sock_owned_by_user(%struct.sock* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.TYPE_2__* @dccp_sk(%struct.sock* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* @jiffies, align 8
  %17 = add nsw i64 %16, 1
  %18 = call i32 @sk_reset_timer(%struct.sock* %12, i32* %15, i64 %17)
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = call i32 @dccp_write_xmit(%struct.sock* %20)
  br label %22

22:                                               ; preds = %19, %11
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = call i32 @bh_unlock_sock(%struct.sock* %23)
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = call i32 @sock_put(%struct.sock* %25)
  ret void
}

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

declare dso_local %struct.TYPE_2__* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @dccp_write_xmit(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
