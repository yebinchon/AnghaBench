; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64 }
%struct.file = type { i32 }
%struct.rfcomm_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"tty %p dev %p dlc %p opened %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @rfcomm_tty_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_tty_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.rfcomm_dev*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.rfcomm_dev*
  store %struct.rfcomm_dev* %9, %struct.rfcomm_dev** %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %12 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %13 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %16 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.tty_struct* %10, %struct.rfcomm_dev* %11, i32 %14, i32 %18)
  %20 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %21 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %20, i32 0, i32 0
  %22 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = call i32 @tty_port_close(%struct.TYPE_2__* %21, %struct.tty_struct* %22, %struct.file* %23)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.tty_struct*, %struct.rfcomm_dev*, i32, i32) #1

declare dso_local i32 @tty_port_close(%struct.TYPE_2__*, %struct.tty_struct*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
