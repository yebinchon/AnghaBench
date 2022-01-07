; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda1380.c_uda1380_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda1380.c_uda1380_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.uda1380_priv = type { i32 }

@UDA1380_MVOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"uda1380: hw write %x val %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"uda1380: READ BACK VAL %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@uda1380_cache_dirty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32)* @uda1380_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uda1380_write(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uda1380_priv*, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %12 = call %struct.uda1380_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.uda1380_priv* %12, %struct.uda1380_priv** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 65280
  %17 = lshr i32 %16, 8
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 255
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %20, i32* %21, align 4
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @uda1380_write_reg_cache(%struct.snd_soc_component* %22, i32 %23, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %27 = call i32 @snd_soc_component_is_active(%struct.snd_soc_component* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @UDA1380_MVOL, align 4
  %32 = icmp uge i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %85

34:                                               ; preds = %29, %3
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.uda1380_priv*, %struct.uda1380_priv** %8, align 8
  %39 = getelementptr inbounds %struct.uda1380_priv, %struct.uda1380_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %42 = call i32 @i2c_master_send(i32 %40, i32* %41, i32 3)
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %82

44:                                               ; preds = %34
  %45 = load %struct.uda1380_priv*, %struct.uda1380_priv** %8, align 8
  %46 = getelementptr inbounds %struct.uda1380_priv, %struct.uda1380_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %49 = call i32 @i2c_master_send(i32 %47, i32* %48, i32 1)
  %50 = load %struct.uda1380_priv*, %struct.uda1380_priv** %8, align 8
  %51 = getelementptr inbounds %struct.uda1380_priv, %struct.uda1380_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %54 = call i32 @i2c_master_recv(i32 %52, i32* %53, i32 2)
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %57, %59
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %44
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 8
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %67, %69
  %71 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %85

74:                                               ; preds = %44
  %75 = load i32, i32* %6, align 4
  %76 = icmp uge i32 %75, 16
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = sub i32 %78, 16
  %80 = call i32 @clear_bit(i32 %79, i32* @uda1380_cache_dirty)
  br label %81

81:                                               ; preds = %77, %74
  store i32 0, i32* %4, align 4
  br label %85

82:                                               ; preds = %34
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %81, %64, %33
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.uda1380_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @uda1380_write_reg_cache(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_is_active(%struct.snd_soc_component*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

declare dso_local i32 @i2c_master_recv(i32, i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
