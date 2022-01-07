; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c___sco_sock_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c___sco_sock_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [25 x i8] c"sk %p state %d socket %p\00", align 1
@SCO_DISCONN_TIMEOUT = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @__sco_sock_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sco_sock_close(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.sock* %3, i32 %6, i32 %9)
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %62 [
    i32 128, label %14
    i32 130, label %17
    i32 133, label %17
    i32 131, label %58
    i32 132, label %58
    i32 129, label %58
  ]

14:                                               ; preds = %1
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = call i32 @sco_sock_cleanup_listen(%struct.sock* %15)
  br label %66

17:                                               ; preds = %1, %1
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = call %struct.TYPE_4__* @sco_pi(%struct.sock* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %53

25:                                               ; preds = %17
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  store i32 129, i32* %27, align 4
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = load i32, i32* @SCO_DISCONN_TIMEOUT, align 4
  %30 = call i32 @sco_sock_set_timer(%struct.sock* %28, i32 %29)
  %31 = load %struct.sock*, %struct.sock** %2, align 8
  %32 = call %struct.TYPE_4__* @sco_pi(%struct.sock* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = call i32 @sco_conn_lock(%struct.TYPE_5__* %34)
  %36 = load %struct.sock*, %struct.sock** %2, align 8
  %37 = call %struct.TYPE_4__* @sco_pi(%struct.sock* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @hci_conn_drop(i32* %41)
  %43 = load %struct.sock*, %struct.sock** %2, align 8
  %44 = call %struct.TYPE_4__* @sco_pi(%struct.sock* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.sock*, %struct.sock** %2, align 8
  %49 = call %struct.TYPE_4__* @sco_pi(%struct.sock* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = call i32 @sco_conn_unlock(%struct.TYPE_5__* %51)
  br label %57

53:                                               ; preds = %17
  %54 = load %struct.sock*, %struct.sock** %2, align 8
  %55 = load i32, i32* @ECONNRESET, align 4
  %56 = call i32 @sco_chan_del(%struct.sock* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %25
  br label %66

58:                                               ; preds = %1, %1, %1
  %59 = load %struct.sock*, %struct.sock** %2, align 8
  %60 = load i32, i32* @ECONNRESET, align 4
  %61 = call i32 @sco_chan_del(%struct.sock* %59, i32 %60)
  br label %66

62:                                               ; preds = %1
  %63 = load %struct.sock*, %struct.sock** %2, align 8
  %64 = load i32, i32* @SOCK_ZAPPED, align 4
  %65 = call i32 @sock_set_flag(%struct.sock* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %58, %57, %14
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i32, i32) #1

declare dso_local i32 @sco_sock_cleanup_listen(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @sco_pi(%struct.sock*) #1

declare dso_local i32 @sco_sock_set_timer(%struct.sock*, i32) #1

declare dso_local i32 @sco_conn_lock(%struct.TYPE_5__*) #1

declare dso_local i32 @hci_conn_drop(i32*) #1

declare dso_local i32 @sco_conn_unlock(%struct.TYPE_5__*) #1

declare dso_local i32 @sco_chan_del(%struct.sock*, i32) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
