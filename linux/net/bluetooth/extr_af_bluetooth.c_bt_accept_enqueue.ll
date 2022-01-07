; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_af_bluetooth.c_bt_accept_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_af_bluetooth.c_bt_accept_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.TYPE_2__ = type { %struct.sock*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"parent %p, sk %p\00", align 1
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt_accept_enqueue(%struct.sock* %0, %struct.sock* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %5, align 8
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.sock* %7, %struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call i32 @sock_hold(%struct.sock* %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call i32 @bh_lock_sock_nested(%struct.sock* %15)
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %20 = call i32 @lock_sock_nested(%struct.sock* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %14
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i32 @list_add_tail(i32* %24, i32* %27)
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.sock* %29, %struct.sock** %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = call i32 @bh_unlock_sock(%struct.sock* %36)
  br label %41

38:                                               ; preds = %21
  %39 = load %struct.sock*, %struct.sock** %5, align 8
  %40 = call i32 @release_sock(%struct.sock* %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, %struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock_nested(%struct.sock*) #1

declare dso_local i32 @lock_sock_nested(%struct.sock*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
