; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_resume_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_resume_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i8*, i32, %struct.sock* }
%struct.sock = type { i32 (%struct.sock*)*, i8* }
%struct.TYPE_2__ = type { i32 }

@FLAG_PENDING_SECURITY = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i8* null, align 8
@BT_SK_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @l2cap_sock_resume_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_sock_resume_cb(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.sock*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %4 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %5 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %4, i32 0, i32 2
  %6 = load %struct.sock*, %struct.sock** %5, align 8
  store %struct.sock* %6, %struct.sock** %3, align 8
  %7 = load i32, i32* @FLAG_PENDING_SECURITY, align 4
  %8 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %9 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %8, i32 0, i32 1
  %10 = call i64 @test_and_clear_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i8*, i8** @BT_CONNECTED, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @BT_CONNECTED, align 8
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %18 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  br label %19

19:                                               ; preds = %12, %1
  %20 = load i32, i32* @BT_SK_SUSPEND, align 4
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @clear_bit(i32 %20, i32* %23)
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %26, align 8
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = call i32 %27(%struct.sock* %28)
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @bt_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
