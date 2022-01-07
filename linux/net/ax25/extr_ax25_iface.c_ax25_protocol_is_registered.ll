; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_iface.c_ax25_protocol_is_registered.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_iface.c_ax25_protocol_is_registered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ax25_protocol = type { i32, %struct.ax25_protocol* }

@protocol_list_lock = common dso_local global i32 0, align 4
@protocol_list = common dso_local global %struct.ax25_protocol* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ax25_protocol_is_registered(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ax25_protocol*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = call i32 @read_lock_bh(i32* @protocol_list_lock)
  %6 = load %struct.ax25_protocol*, %struct.ax25_protocol** @protocol_list, align 8
  store %struct.ax25_protocol* %6, %struct.ax25_protocol** %3, align 8
  br label %7

7:                                                ; preds = %18, %1
  %8 = load %struct.ax25_protocol*, %struct.ax25_protocol** %3, align 8
  %9 = icmp ne %struct.ax25_protocol* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load %struct.ax25_protocol*, %struct.ax25_protocol** %3, align 8
  %12 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 1, i32* %4, align 4
  br label %22

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.ax25_protocol*, %struct.ax25_protocol** %3, align 8
  %20 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %19, i32 0, i32 1
  %21 = load %struct.ax25_protocol*, %struct.ax25_protocol** %20, align 8
  store %struct.ax25_protocol* %21, %struct.ax25_protocol** %3, align 8
  br label %7

22:                                               ; preds = %16, %7
  %23 = call i32 @read_unlock_bh(i32* @protocol_list_lock)
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
