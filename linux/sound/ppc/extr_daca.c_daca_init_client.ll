; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_daca.c_daca_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_daca.c_daca_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_keywest = type { i32 }

@DACA_REG_SR = common dso_local global i32 0, align 4
@DACA_REG_GCFG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DACA_REG_AVOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmac_keywest*)* @daca_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daca_init_client(%struct.pmac_keywest* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmac_keywest*, align 8
  %4 = alloca i16, align 2
  store %struct.pmac_keywest* %0, %struct.pmac_keywest** %3, align 8
  store i16 0, i16* %4, align 2
  %5 = load %struct.pmac_keywest*, %struct.pmac_keywest** %3, align 8
  %6 = getelementptr inbounds %struct.pmac_keywest, %struct.pmac_keywest* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DACA_REG_SR, align 4
  %9 = call i64 @i2c_smbus_write_byte_data(i32 %7, i32 %8, i32 8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.pmac_keywest*, %struct.pmac_keywest** %3, align 8
  %13 = getelementptr inbounds %struct.pmac_keywest, %struct.pmac_keywest* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DACA_REG_GCFG, align 4
  %16 = call i64 @i2c_smbus_write_byte_data(i32 %14, i32 %15, i32 5)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %28

21:                                               ; preds = %11
  %22 = load %struct.pmac_keywest*, %struct.pmac_keywest** %3, align 8
  %23 = getelementptr inbounds %struct.pmac_keywest, %struct.pmac_keywest* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DACA_REG_AVOL, align 4
  %26 = bitcast i16* %4 to i8*
  %27 = call i32 @i2c_smbus_write_block_data(i32 %24, i32 %25, i32 2, i8* %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_block_data(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
