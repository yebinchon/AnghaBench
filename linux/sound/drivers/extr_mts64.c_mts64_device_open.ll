; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_mts64.c_mts64_device_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_mts64.c_mts64_device_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mts64 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.parport* }
%struct.parport = type { i32 }

@MTS64_CMD_COM_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mts64*)* @mts64_device_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mts64_device_open(%struct.mts64* %0) #0 {
  %2 = alloca %struct.mts64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.parport*, align 8
  store %struct.mts64* %0, %struct.mts64** %2, align 8
  %5 = load %struct.mts64*, %struct.mts64** %2, align 8
  %6 = getelementptr inbounds %struct.mts64, %struct.mts64* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.parport*, %struct.parport** %8, align 8
  store %struct.parport* %9, %struct.parport** %4, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %17, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 5
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load %struct.parport*, %struct.parport** %4, align 8
  %15 = load i32, i32* @MTS64_CMD_COM_OPEN, align 4
  %16 = call i32 @mts64_write_command(%struct.parport* %14, i32 %15)
  br label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %10

20:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @mts64_write_command(%struct.parport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
