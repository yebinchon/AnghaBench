; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_midi_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_midi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu10k1x = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.emu10k1x_midi = type { i32 }

@MPU401_ACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"midi_cmd: 0x%x failed at 0x%lx (status = 0x%x, data = 0x%x)!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emu10k1x*, %struct.emu10k1x_midi*, i8, i32)* @snd_emu10k1x_midi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1x_midi_cmd(%struct.emu10k1x* %0, %struct.emu10k1x_midi* %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.emu10k1x*, align 8
  %7 = alloca %struct.emu10k1x_midi*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.emu10k1x* %0, %struct.emu10k1x** %6, align 8
  store %struct.emu10k1x_midi* %1, %struct.emu10k1x_midi** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %13 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %7, align 8
  %14 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %13, i32 0, i32 0
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.emu10k1x*, %struct.emu10k1x** %6, align 8
  %18 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %7, align 8
  %19 = call i32 @mpu401_write_data(%struct.emu10k1x* %17, %struct.emu10k1x_midi* %18, i32 0)
  %20 = load %struct.emu10k1x*, %struct.emu10k1x** %6, align 8
  %21 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %7, align 8
  %22 = load i8, i8* %8, align 1
  %23 = call i32 @mpu401_write_cmd(%struct.emu10k1x* %20, %struct.emu10k1x_midi* %21, i8 zeroext %22)
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  store i32 10000, i32* %11, align 4
  br label %27

27:                                               ; preds = %49, %26
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %11, align 4
  %33 = icmp sgt i32 %31, 0
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %36, label %50

36:                                               ; preds = %34
  %37 = load %struct.emu10k1x*, %struct.emu10k1x** %6, align 8
  %38 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %7, align 8
  %39 = call i64 @mpu401_input_avail(%struct.emu10k1x* %37, %struct.emu10k1x_midi* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.emu10k1x*, %struct.emu10k1x** %6, align 8
  %43 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %7, align 8
  %44 = call i64 @mpu401_read_data(%struct.emu10k1x* %42, %struct.emu10k1x_midi* %43)
  %45 = load i64, i64* @MPU401_ACK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  br label %48

48:                                               ; preds = %47, %41
  br label %49

49:                                               ; preds = %48, %36
  br label %27

50:                                               ; preds = %34
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load %struct.emu10k1x*, %struct.emu10k1x** %6, align 8
  %55 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %7, align 8
  %56 = call i64 @mpu401_read_data(%struct.emu10k1x* %54, %struct.emu10k1x_midi* %55)
  %57 = load i64, i64* @MPU401_ACK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 1, i32* %12, align 4
  br label %60

60:                                               ; preds = %59, %53, %50
  br label %62

61:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %62

62:                                               ; preds = %61, %60
  %63 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %7, align 8
  %64 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %63, i32 0, i32 0
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %62
  %70 = load %struct.emu10k1x*, %struct.emu10k1x** %6, align 8
  %71 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8, i8* %8, align 1
  %76 = load %struct.emu10k1x*, %struct.emu10k1x** %6, align 8
  %77 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.emu10k1x*, %struct.emu10k1x** %6, align 8
  %80 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %7, align 8
  %81 = call i32 @mpu401_read_stat(%struct.emu10k1x* %79, %struct.emu10k1x_midi* %80)
  %82 = load %struct.emu10k1x*, %struct.emu10k1x** %6, align 8
  %83 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %7, align 8
  %84 = call i64 @mpu401_read_data(%struct.emu10k1x* %82, %struct.emu10k1x_midi* %83)
  %85 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8 zeroext %75, i32 %78, i32 %81, i64 %84)
  store i32 1, i32* %5, align 4
  br label %87

86:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %69
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mpu401_write_data(%struct.emu10k1x*, %struct.emu10k1x_midi*, i32) #1

declare dso_local i32 @mpu401_write_cmd(%struct.emu10k1x*, %struct.emu10k1x_midi*, i8 zeroext) #1

declare dso_local i64 @mpu401_input_avail(%struct.emu10k1x*, %struct.emu10k1x_midi*) #1

declare dso_local i64 @mpu401_read_data(%struct.emu10k1x*, %struct.emu10k1x_midi*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i8 zeroext, i32, i32, i64) #1

declare dso_local i32 @mpu401_read_stat(%struct.emu10k1x*, %struct.emu10k1x_midi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
