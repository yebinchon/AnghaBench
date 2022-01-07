; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_get_ident.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_get_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*)* @l2cap_get_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_get_ident(%struct.l2cap_conn* %0) #0 {
  %2 = alloca %struct.l2cap_conn*, align 8
  %3 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %2, align 8
  %4 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %5 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %8 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = icmp sgt i32 %10, 128
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %14 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %17 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  %19 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %20 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %19, i32 0, i32 1
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
