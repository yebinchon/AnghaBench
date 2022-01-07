; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_portman2x4.c_portman_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_portman2x4.c_portman_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }

@RXDATA0 = common dso_local global i64 0, align 8
@ESTB = common dso_local global i32 0, align 4
@STROBE = common dso_local global i64 0, align 8
@TXDATA0 = common dso_local global i64 0, align 8
@TXEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parport*)* @portman_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @portman_probe(%struct.parport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parport*, align 8
  store %struct.parport* %0, %struct.parport** %3, align 8
  %4 = load %struct.parport*, %struct.parport** %3, align 8
  %5 = call i32 @parport_write_data(%struct.parport* %4, i32 0)
  %6 = load %struct.parport*, %struct.parport** %3, align 8
  %7 = call i32 @parport_write_control(%struct.parport* %6, i64 0)
  %8 = load %struct.parport*, %struct.parport** %3, align 8
  %9 = load i64, i64* @RXDATA0, align 8
  %10 = call i32 @parport_write_control(%struct.parport* %8, i64 %9)
  %11 = load %struct.parport*, %struct.parport** %3, align 8
  %12 = call i32 @parport_read_status(%struct.parport* %11)
  %13 = load i32, i32* @ESTB, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @ESTB, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %44

18:                                               ; preds = %1
  %19 = load %struct.parport*, %struct.parport** %3, align 8
  %20 = load i64, i64* @RXDATA0, align 8
  %21 = load i64, i64* @STROBE, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @parport_write_control(%struct.parport* %19, i64 %22)
  %24 = load %struct.parport*, %struct.parport** %3, align 8
  %25 = call i32 @parport_read_status(%struct.parport* %24)
  %26 = load i32, i32* @ESTB, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @ESTB, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %44

31:                                               ; preds = %18
  %32 = load %struct.parport*, %struct.parport** %3, align 8
  %33 = call i32 @parport_write_control(%struct.parport* %32, i64 0)
  %34 = load %struct.parport*, %struct.parport** %3, align 8
  %35 = load i64, i64* @TXDATA0, align 8
  %36 = call i32 @parport_write_control(%struct.parport* %34, i64 %35)
  %37 = load %struct.parport*, %struct.parport** %3, align 8
  %38 = call i32 @parport_read_status(%struct.parport* %37)
  %39 = load i32, i32* @TXEMPTY, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 2, i32* %2, align 4
  br label %44

43:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42, %30, %17
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @parport_write_data(%struct.parport*, i32) #1

declare dso_local i32 @parport_write_control(%struct.parport*, i64) #1

declare dso_local i32 @parport_read_status(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
