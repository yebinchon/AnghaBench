; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_mts64.c_mts64_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_mts64.c_mts64_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }

@MTS64_CTL_WRITE_DATA = common dso_local global i32 0, align 4
@MTS64_CTL_STROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*, i32)* @mts64_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mts64_write_data(%struct.parport* %0, i32 %1) #0 {
  %3 = alloca %struct.parport*, align 8
  %4 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.parport*, %struct.parport** %3, align 8
  %6 = call i32 @mts64_device_ready(%struct.parport* %5)
  %7 = load %struct.parport*, %struct.parport** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @parport_write_data(%struct.parport* %7, i32 %8)
  %10 = load %struct.parport*, %struct.parport** %3, align 8
  %11 = load i32, i32* @MTS64_CTL_WRITE_DATA, align 4
  %12 = call i32 @parport_write_control(%struct.parport* %10, i32 %11)
  %13 = load %struct.parport*, %struct.parport** %3, align 8
  %14 = load i32, i32* @MTS64_CTL_WRITE_DATA, align 4
  %15 = load i32, i32* @MTS64_CTL_STROBE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @parport_write_control(%struct.parport* %13, i32 %16)
  %18 = load %struct.parport*, %struct.parport** %3, align 8
  %19 = load i32, i32* @MTS64_CTL_WRITE_DATA, align 4
  %20 = call i32 @parport_write_control(%struct.parport* %18, i32 %19)
  ret void
}

declare dso_local i32 @mts64_device_ready(%struct.parport*) #1

declare dso_local i32 @parport_write_data(%struct.parport*, i32) #1

declare dso_local i32 @parport_write_control(%struct.parport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
