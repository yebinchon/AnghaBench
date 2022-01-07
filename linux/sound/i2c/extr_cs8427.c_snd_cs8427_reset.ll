; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/extr_cs8427.c_snd_cs8427_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/extr_cs8427.c_snd_cs8427_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_device = type { i32, %struct.cs8427* }
%struct.cs8427 = type { i32*, i64 }

@CS8427_REG_CLOCKSOURCE = common dso_local global i64 0, align 8
@CS8427_RXDAES3INPUT = common dso_local global i32 0, align 4
@CS8427_RUN = common dso_local global i32 0, align 4
@CS8427_RXDMASK = common dso_local global i32 0, align 4
@CS8427_RXDILRCK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@CS8427_REG_RECVERRORS = common dso_local global i32 0, align 4
@CS8427_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_i2c_device*)* @snd_cs8427_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs8427_reset(%struct.snd_i2c_device* %0) #0 {
  %2 = alloca %struct.snd_i2c_device*, align 8
  %3 = alloca %struct.cs8427*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_i2c_device* %0, %struct.snd_i2c_device** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %8 = icmp ne %struct.snd_i2c_device* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @snd_BUG_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %147

14:                                               ; preds = %1
  %15 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %16 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %15, i32 0, i32 1
  %17 = load %struct.cs8427*, %struct.cs8427** %16, align 8
  store %struct.cs8427* %17, %struct.cs8427** %3, align 8
  %18 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %19 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @snd_i2c_lock(i32 %20)
  %22 = load %struct.cs8427*, %struct.cs8427** %3, align 8
  %23 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @CS8427_REG_CLOCKSOURCE, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CS8427_RXDAES3INPUT, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @CS8427_RXDAES3INPUT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %14
  %34 = load i32, i32* @CS8427_RUN, align 4
  %35 = load i32, i32* @CS8427_RXDMASK, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.cs8427*, %struct.cs8427** %3, align 8
  %39 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @CS8427_REG_CLOCKSOURCE, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %37
  store i32 %44, i32* %42, align 4
  %45 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %46 = load i64, i64* @CS8427_REG_CLOCKSOURCE, align 8
  %47 = load %struct.cs8427*, %struct.cs8427** %3, align 8
  %48 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @CS8427_REG_CLOCKSOURCE, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @snd_cs8427_reg_write(%struct.snd_i2c_device* %45, i64 %46, i32 %52)
  %54 = call i32 @udelay(i32 200)
  %55 = load i32, i32* @CS8427_RUN, align 4
  %56 = load i32, i32* @CS8427_RXDILRCK, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.cs8427*, %struct.cs8427** %3, align 8
  %59 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @CS8427_REG_CLOCKSOURCE, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %57
  store i32 %64, i32* %62, align 4
  %65 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %66 = load i64, i64* @CS8427_REG_CLOCKSOURCE, align 8
  %67 = load %struct.cs8427*, %struct.cs8427** %3, align 8
  %68 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @CS8427_REG_CLOCKSOURCE, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @snd_cs8427_reg_write(%struct.snd_i2c_device* %65, i64 %66, i32 %72)
  %74 = call i32 @udelay(i32 200)
  %75 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %76 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @snd_i2c_unlock(i32 %77)
  %79 = load i64, i64* @jiffies, align 8
  %80 = load %struct.cs8427*, %struct.cs8427** %3, align 8
  %81 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %79, %82
  store i64 %83, i64* %4, align 8
  br label %84

84:                                               ; preds = %106, %33
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* @jiffies, align 8
  %87 = call i64 @time_after_eq(i64 %85, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %84
  %90 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %91 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @snd_i2c_lock(i32 %92)
  %94 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %95 = load i32, i32* @CS8427_REG_RECVERRORS, align 4
  %96 = call i32 @snd_cs8427_reg_read(%struct.snd_i2c_device* %94, i32 %95)
  store i32 %96, i32* %5, align 4
  %97 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %98 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @snd_i2c_unlock(i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @CS8427_UNLOCK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %89
  br label %108

106:                                              ; preds = %89
  %107 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %84

108:                                              ; preds = %105, %84
  %109 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %110 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @snd_i2c_lock(i32 %111)
  %113 = load i32, i32* @CS8427_RXDMASK, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.cs8427*, %struct.cs8427** %3, align 8
  %116 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @CS8427_REG_CLOCKSOURCE, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %114
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %108
  %125 = load i32, i32* @CS8427_RXDAES3INPUT, align 4
  %126 = load %struct.cs8427*, %struct.cs8427** %3, align 8
  %127 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* @CS8427_REG_CLOCKSOURCE, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %125
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %124, %108
  %134 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %135 = load i64, i64* @CS8427_REG_CLOCKSOURCE, align 8
  %136 = load %struct.cs8427*, %struct.cs8427** %3, align 8
  %137 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @CS8427_REG_CLOCKSOURCE, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @snd_cs8427_reg_write(%struct.snd_i2c_device* %134, i64 %135, i32 %141)
  %143 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %2, align 8
  %144 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @snd_i2c_unlock(i32 %145)
  br label %147

147:                                              ; preds = %133, %13
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_i2c_lock(i32) #1

declare dso_local i32 @snd_cs8427_reg_write(%struct.snd_i2c_device*, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_i2c_unlock(i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @snd_cs8427_reg_read(%struct.snd_i2c_device*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
