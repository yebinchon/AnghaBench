; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_onyx.c_onyx_write_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_onyx.c_onyx_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.onyx = type { i64*, i32 }

@FIRSTREGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.onyx*, i64, i64)* @onyx_write_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onyx_write_register(%struct.onyx* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.onyx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.onyx* %0, %struct.onyx** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.onyx*, %struct.onyx** %4, align 8
  %9 = getelementptr inbounds %struct.onyx, %struct.onyx* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @i2c_smbus_write_byte_data(i32 %10, i64 %11, i64 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.onyx*, %struct.onyx** %4, align 8
  %19 = getelementptr inbounds %struct.onyx, %struct.onyx* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @FIRSTREGISTER, align 8
  %23 = sub i64 %21, %22
  %24 = getelementptr inbounds i64, i64* %20, i64 %23
  store i64 %17, i64* %24, align 8
  br label %25

25:                                               ; preds = %16, %3
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
