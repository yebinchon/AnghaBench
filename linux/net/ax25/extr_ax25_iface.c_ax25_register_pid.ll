; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_iface.c_ax25_register_pid.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_iface.c_ax25_register_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ax25_protocol = type { %struct.ax25_protocol* }

@protocol_list_lock = common dso_local global i32 0, align 4
@protocol_list = common dso_local global %struct.ax25_protocol* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax25_register_pid(%struct.ax25_protocol* %0) #0 {
  %2 = alloca %struct.ax25_protocol*, align 8
  store %struct.ax25_protocol* %0, %struct.ax25_protocol** %2, align 8
  %3 = call i32 @write_lock_bh(i32* @protocol_list_lock)
  %4 = load %struct.ax25_protocol*, %struct.ax25_protocol** @protocol_list, align 8
  %5 = load %struct.ax25_protocol*, %struct.ax25_protocol** %2, align 8
  %6 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %5, i32 0, i32 0
  store %struct.ax25_protocol* %4, %struct.ax25_protocol** %6, align 8
  %7 = load %struct.ax25_protocol*, %struct.ax25_protocol** %2, align 8
  store %struct.ax25_protocol* %7, %struct.ax25_protocol** @protocol_list, align 8
  %8 = call i32 @write_unlock_bh(i32* @protocol_list_lock)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
