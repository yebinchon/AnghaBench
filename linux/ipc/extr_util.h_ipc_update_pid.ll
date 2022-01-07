; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_util.h_ipc_update_pid.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_util.h_ipc_update_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pid**, %struct.pid*)* @ipc_update_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipc_update_pid(%struct.pid** %0, %struct.pid* %1) #0 {
  %3 = alloca %struct.pid**, align 8
  %4 = alloca %struct.pid*, align 8
  %5 = alloca %struct.pid*, align 8
  store %struct.pid** %0, %struct.pid*** %3, align 8
  store %struct.pid* %1, %struct.pid** %4, align 8
  %6 = load %struct.pid**, %struct.pid*** %3, align 8
  %7 = load %struct.pid*, %struct.pid** %6, align 8
  store %struct.pid* %7, %struct.pid** %5, align 8
  %8 = load %struct.pid*, %struct.pid** %5, align 8
  %9 = load %struct.pid*, %struct.pid** %4, align 8
  %10 = icmp ne %struct.pid* %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.pid*, %struct.pid** %4, align 8
  %13 = call %struct.pid* @get_pid(%struct.pid* %12)
  %14 = load %struct.pid**, %struct.pid*** %3, align 8
  store %struct.pid* %13, %struct.pid** %14, align 8
  %15 = load %struct.pid*, %struct.pid** %5, align 8
  %16 = call i32 @put_pid(%struct.pid* %15)
  br label %17

17:                                               ; preds = %11, %2
  ret void
}

declare dso_local %struct.pid* @get_pid(%struct.pid*) #1

declare dso_local i32 @put_pid(%struct.pid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
