; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_kill.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i64 }

@SOCK_ZAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"sk %p state %d refcnt %d\00", align 1
@rfcomm_sk_list = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @rfcomm_sock_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_sock_kill(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = load i32, i32* @SOCK_ZAPPED, align 4
  %5 = call i32 @sock_flag(%struct.sock* %3, i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  br label %29

13:                                               ; preds = %7
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = call i32 @refcount_read(i32* %19)
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.sock* %14, i32 %17, i32 %20)
  %22 = load %struct.sock*, %struct.sock** %2, align 8
  %23 = call i32 @bt_sock_unlink(i32* @rfcomm_sk_list, %struct.sock* %22)
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = load i32, i32* @SOCK_DEAD, align 4
  %26 = call i32 @sock_set_flag(%struct.sock* %24, i32 %25)
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = call i32 @sock_put(%struct.sock* %27)
  br label %29

29:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i32, i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @bt_sock_unlink(i32*, %struct.sock*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
