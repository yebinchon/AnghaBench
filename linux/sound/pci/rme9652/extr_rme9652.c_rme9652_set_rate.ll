; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rme9652 = type { i64, i64, i32, i32, i64, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@RME9652_freq = common dso_local global i32 0, align 4
@RME9652_DS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RME9652_control_register = common dso_local global i32 0, align 4
@RME9652_NCHANNELS = common dso_local global i64 0, align 8
@channel_map_9652_ds = common dso_local global i32 0, align 4
@channel_map_9636_ds = common dso_local global i32 0, align 4
@channel_map_9652_ss = common dso_local global i32 0, align 4
@channel_map_9636_ss = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rme9652*, i32)* @rme9652_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rme9652_set_rate(%struct.snd_rme9652* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_rme9652*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_rme9652* %0, %struct.snd_rme9652** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %10 = call i32 @snd_rme9652_use_is_exclusive(%struct.snd_rme9652* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %144

15:                                               ; preds = %2
  %16 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %17 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %16, i32 0, i32 5
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %20 = call i32 @rme9652_adat_sample_rate(%struct.snd_rme9652* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %47 [
    i32 44100, label %22
    i32 48000, label %27
    i32 88200, label %33
    i32 96000, label %39
  ]

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 48000
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %22
  store i32 0, i32* %5, align 4
  br label %53

27:                                               ; preds = %15
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 48000
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* @RME9652_freq, align 4
  store i32 %32, i32* %5, align 4
  br label %53

33:                                               ; preds = %15
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 48000
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* @RME9652_DS, align 4
  store i32 %38, i32* %5, align 4
  br label %53

39:                                               ; preds = %15
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 48000
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* @RME9652_DS, align 4
  %45 = load i32, i32* @RME9652_freq, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %5, align 4
  br label %53

47:                                               ; preds = %15
  %48 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %49 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %48, i32 0, i32 5
  %50 = call i32 @spin_unlock_irq(i32* %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %144

53:                                               ; preds = %43, %37, %31, %26
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %58 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %63 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61, %56
  %67 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %68 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %67, i32 0, i32 5
  %69 = call i32 @spin_unlock_irq(i32* %68)
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %144

72:                                               ; preds = %61, %53
  %73 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %74 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %79 = call i32 @rme9652_stop(%struct.snd_rme9652* %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* @RME9652_freq, align 4
  %82 = load i32, i32* @RME9652_DS, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %86 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %91 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %95 = load i32, i32* @RME9652_control_register, align 4
  %96 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %97 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @rme9652_write(%struct.snd_rme9652* %94, i32 %95, i32 %98)
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %80
  %103 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %104 = call i32 @rme9652_start(%struct.snd_rme9652* %103)
  br label %105

105:                                              ; preds = %102, %80
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @RME9652_DS, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %105
  %111 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %112 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @RME9652_NCHANNELS, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i32, i32* @channel_map_9652_ds, align 4
  %118 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %119 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 4
  br label %124

120:                                              ; preds = %110
  %121 = load i32, i32* @channel_map_9636_ds, align 4
  %122 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %123 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %122, i32 0, i32 6
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %120, %116
  br label %140

125:                                              ; preds = %105
  %126 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %127 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @RME9652_NCHANNELS, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i32, i32* @channel_map_9652_ss, align 4
  %133 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %134 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %133, i32 0, i32 6
  store i32 %132, i32* %134, align 4
  br label %139

135:                                              ; preds = %125
  %136 = load i32, i32* @channel_map_9636_ss, align 4
  %137 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %138 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %137, i32 0, i32 6
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %135, %131
  br label %140

140:                                              ; preds = %139, %124
  %141 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %142 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %141, i32 0, i32 5
  %143 = call i32 @spin_unlock_irq(i32* %142)
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %140, %66, %47, %12
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @snd_rme9652_use_is_exclusive(%struct.snd_rme9652*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rme9652_adat_sample_rate(%struct.snd_rme9652*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @rme9652_stop(%struct.snd_rme9652*) #1

declare dso_local i32 @rme9652_write(%struct.snd_rme9652*, i32, i32) #1

declare dso_local i32 @rme9652_start(%struct.snd_rme9652*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
