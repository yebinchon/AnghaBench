; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c___sco_chan_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c___sco_chan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sco_conn = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.TYPE_2__ = type { %struct.sco_conn* }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sco_conn*, %struct.sock*, %struct.sock*)* @__sco_chan_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sco_chan_add(%struct.sco_conn* %0, %struct.sock* %1, %struct.sock* %2) #0 {
  %4 = alloca %struct.sco_conn*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.sco_conn* %0, %struct.sco_conn** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sock* %2, %struct.sock** %6, align 8
  %7 = load %struct.sco_conn*, %struct.sco_conn** %4, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.sco_conn* %7)
  %9 = load %struct.sco_conn*, %struct.sco_conn** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call %struct.TYPE_2__* @sco_pi(%struct.sock* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.sco_conn* %9, %struct.sco_conn** %12, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = load %struct.sco_conn*, %struct.sco_conn** %4, align 8
  %15 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %14, i32 0, i32 0
  store %struct.sock* %13, %struct.sock** %15, align 8
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = icmp ne %struct.sock* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.sock*, %struct.sock** %6, align 8
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = call i32 @bt_accept_enqueue(%struct.sock* %19, %struct.sock* %20, i32 1)
  br label %22

22:                                               ; preds = %18, %3
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.sco_conn*) #1

declare dso_local %struct.TYPE_2__* @sco_pi(%struct.sock*) #1

declare dso_local i32 @bt_accept_enqueue(%struct.sock*, %struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
