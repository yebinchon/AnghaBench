; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas571x.c_tas571x_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas571x.c_tas571x_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tas571x_private = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @tas571x_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas571x_reg_write(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.tas571x_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [5 x i32], align 16
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.i2c_client*
  store %struct.i2c_client* %15, %struct.i2c_client** %8, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %17 = call %struct.tas571x_private* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.tas571x_private* %17, %struct.tas571x_private** %9, align 8
  %18 = load %struct.tas571x_private*, %struct.tas571x_private** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @tas571x_register_size(%struct.tas571x_private* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  store i32 %21, i32* %22, align 16
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %34, %3
  %25 = load i32, i32* %10, align 4
  %26 = icmp uge i32 %25, 1
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 %30
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = lshr i32 %32, 8
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %10, align 4
  br label %24

37:                                               ; preds = %24
  %38 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %40 = load i32, i32* %11, align 4
  %41 = add i32 %40, 1
  %42 = call i32 @i2c_master_send(%struct.i2c_client* %38, i32* %39, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %11, align 4
  %45 = add i32 %44, 1
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %56

48:                                               ; preds = %37
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %4, align 4
  br label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %51, %47
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.tas571x_private* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @tas571x_register_size(%struct.tas571x_private*, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
