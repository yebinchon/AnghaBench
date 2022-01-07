; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dev = type { i32 }

@rfcomm_dev_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rfcomm_dev* (i32)* @rfcomm_dev_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rfcomm_dev* @rfcomm_dev_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rfcomm_dev*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @mutex_lock(i32* @rfcomm_dev_lock)
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.rfcomm_dev* @__rfcomm_dev_lookup(i32 %5)
  store %struct.rfcomm_dev* %6, %struct.rfcomm_dev** %3, align 8
  %7 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %3, align 8
  %8 = icmp ne %struct.rfcomm_dev* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %3, align 8
  %11 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %10, i32 0, i32 0
  %12 = call i32 @tty_port_get(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store %struct.rfcomm_dev* null, %struct.rfcomm_dev** %3, align 8
  br label %15

15:                                               ; preds = %14, %9, %1
  %16 = call i32 @mutex_unlock(i32* @rfcomm_dev_lock)
  %17 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %3, align 8
  ret %struct.rfcomm_dev* %17
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.rfcomm_dev* @__rfcomm_dev_lookup(i32) #1

declare dso_local i32 @tty_port_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
