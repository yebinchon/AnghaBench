; ModuleID = '/home/carl/AnghaBench/linux/tools/spi/extr_spidev_test.c_show_transfer_rate.c'
source_filename = "/home/carl/AnghaBench/linux/tools/spi/extr_spidev_test.c_show_transfer_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@show_transfer_rate.prev_read_count = internal global i32 0, align 4
@show_transfer_rate.prev_write_count = internal global i32 0, align 4
@_read_count = common dso_local global i32 0, align 4
@interval = common dso_local global double 0.000000e+00, align 8
@_write_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"rate: tx %.1fkbps, rx %.1fkbps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_transfer_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_transfer_rate() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = load i32, i32* @_read_count, align 4
  %4 = load i32, i32* @show_transfer_rate.prev_read_count, align 4
  %5 = sub nsw i32 %3, %4
  %6 = mul nsw i32 %5, 8
  %7 = sitofp i32 %6 to double
  %8 = load double, double* @interval, align 8
  %9 = fmul double %8, 1.000000e+03
  %10 = fdiv double %7, %9
  store double %10, double* %1, align 8
  %11 = load i32, i32* @_write_count, align 4
  %12 = load i32, i32* @show_transfer_rate.prev_write_count, align 4
  %13 = sub nsw i32 %11, %12
  %14 = mul nsw i32 %13, 8
  %15 = sitofp i32 %14 to double
  %16 = load double, double* @interval, align 8
  %17 = fmul double %16, 1.000000e+03
  %18 = fdiv double %15, %17
  store double %18, double* %2, align 8
  %19 = load double, double* %1, align 8
  %20 = load double, double* %2, align 8
  %21 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), double %19, double %20)
  %22 = load i32, i32* @_read_count, align 4
  store i32 %22, i32* @show_transfer_rate.prev_read_count, align 4
  %23 = load i32, i32* @_write_count, align 4
  store i32 %23, i32* @show_transfer_rate.prev_write_count, align 4
  ret void
}

declare dso_local i32 @printf(i8*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
