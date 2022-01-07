; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_gw.c_canframecpy.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_gw.c_canframecpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.canfd_frame = type { i64, i32, i32 }
%struct.can_frame = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.canfd_frame*, %struct.can_frame*)* @canframecpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @canframecpy(%struct.canfd_frame* %0, %struct.can_frame* %1) #0 {
  %3 = alloca %struct.canfd_frame*, align 8
  %4 = alloca %struct.can_frame*, align 8
  store %struct.canfd_frame* %0, %struct.canfd_frame** %3, align 8
  store %struct.can_frame* %1, %struct.can_frame** %4, align 8
  %5 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %6 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.canfd_frame*, %struct.canfd_frame** %3, align 8
  %9 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %11 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.canfd_frame*, %struct.canfd_frame** %3, align 8
  %14 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %16 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.canfd_frame*, %struct.canfd_frame** %3, align 8
  %21 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32 %19, i32* %23, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
