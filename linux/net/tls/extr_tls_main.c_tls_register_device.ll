; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_tls_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_tls_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_device = type { i32 }

@device_spinlock = common dso_local global i32 0, align 4
@device_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_register_device(%struct.tls_device* %0) #0 {
  %2 = alloca %struct.tls_device*, align 8
  store %struct.tls_device* %0, %struct.tls_device** %2, align 8
  %3 = call i32 @spin_lock_bh(i32* @device_spinlock)
  %4 = load %struct.tls_device*, %struct.tls_device** %2, align 8
  %5 = getelementptr inbounds %struct.tls_device, %struct.tls_device* %4, i32 0, i32 0
  %6 = call i32 @list_add_tail(i32* %5, i32* @device_list)
  %7 = call i32 @spin_unlock_bh(i32* @device_spinlock)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
