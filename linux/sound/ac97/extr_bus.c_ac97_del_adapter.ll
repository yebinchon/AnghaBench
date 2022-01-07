; ModuleID = '/home/carl/AnghaBench/linux/sound/ac97/extr_bus.c_ac97_del_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ac97/extr_bus.c_ac97_del_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_controller = type { i32, i32 }

@ac97_controllers_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ac97_controller*)* @ac97_del_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ac97_del_adapter(%struct.ac97_controller* %0) #0 {
  %2 = alloca %struct.ac97_controller*, align 8
  store %struct.ac97_controller* %0, %struct.ac97_controller** %2, align 8
  %3 = call i32 @mutex_lock(i32* @ac97_controllers_mutex)
  %4 = load %struct.ac97_controller*, %struct.ac97_controller** %2, align 8
  %5 = call i32 @ac97_ctrl_codecs_unregister(%struct.ac97_controller* %4)
  %6 = load %struct.ac97_controller*, %struct.ac97_controller** %2, align 8
  %7 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %6, i32 0, i32 1
  %8 = call i32 @list_del(i32* %7)
  %9 = call i32 @mutex_unlock(i32* @ac97_controllers_mutex)
  %10 = load %struct.ac97_controller*, %struct.ac97_controller** %2, align 8
  %11 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %10, i32 0, i32 0
  %12 = call i32 @device_unregister(i32* %11)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ac97_ctrl_codecs_unregister(%struct.ac97_controller*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
