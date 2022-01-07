; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_update_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_update_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.snd_ali_channel_control }
%struct.TYPE_6__ = type { %struct.snd_ali_voice* }
%struct.snd_ali_voice = type { i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.snd_ali_channel_control = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"update_ptr: cso=%4.4x cspf=%d.\0A\00", align 1
@ALI_CSO_ALPHA_FMS = common dso_local global i64 0, align 8
@ALI_CSPF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ali*, i32)* @snd_ali_update_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ali_update_ptr(%struct.snd_ali* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ali*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ali_voice*, align 8
  %6 = alloca %struct.snd_ali_channel_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_ali* %0, %struct.snd_ali** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %9, i32 0, i32 3
  store %struct.snd_ali_channel_control* %10, %struct.snd_ali_channel_control** %6, align 8
  %11 = load %struct.snd_ali_channel_control*, %struct.snd_ali_channel_control** %6, align 8
  %12 = getelementptr inbounds %struct.snd_ali_channel_control, %struct.snd_ali_channel_control* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 31
  %17 = shl i32 1, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %140

23:                                               ; preds = %2
  %24 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %25 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %27, i64 %29
  store %struct.snd_ali_voice* %30, %struct.snd_ali_voice** %5, align 8
  %31 = call i32 @udelay(i32 100)
  %32 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %33 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %32, i32 0, i32 0
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %36 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %88

39:                                               ; preds = %23
  %40 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %41 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %88

44:                                               ; preds = %39
  %45 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %46 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %44
  %50 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %51 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %56 = load i64, i64* @ALI_CSO_ALPHA_FMS, align 8
  %57 = add nsw i64 %56, 2
  %58 = call i32 @ALI_REG(%struct.snd_ali* %55, i64 %57)
  %59 = call i32 @inw(i32 %58)
  %60 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %61 = load i64, i64* @ALI_CSPF, align 8
  %62 = call i32 @ALI_REG(%struct.snd_ali* %60, i64 %61)
  %63 = call i32 @inl(i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @dev_dbg(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %68)
  %70 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %71 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %74 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @snd_pcm_period_elapsed(i64 %75)
  %77 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %78 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %77, i32 0, i32 0
  %79 = call i32 @spin_lock(i32* %78)
  br label %87

80:                                               ; preds = %44
  %81 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @snd_ali_stop_voice(%struct.snd_ali* %81, i32 %82)
  %84 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @snd_ali_disable_voice_irq(%struct.snd_ali* %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %49
  br label %121

88:                                               ; preds = %39, %23
  %89 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %90 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %92, i64 %94
  %96 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %120

100:                                              ; preds = %88
  %101 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %102 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %104, i64 %106
  %108 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %119

112:                                              ; preds = %100
  %113 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @snd_ali_stop_voice(%struct.snd_ali* %113, i32 %114)
  %116 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @snd_ali_disable_voice_irq(%struct.snd_ali* %116, i32 %117)
  br label %119

119:                                              ; preds = %112, %111
  br label %120

120:                                              ; preds = %119, %99
  br label %121

121:                                              ; preds = %120, %87
  %122 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %123 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock(i32* %123)
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %127 = load %struct.snd_ali_channel_control*, %struct.snd_ali_channel_control** %6, align 8
  %128 = getelementptr inbounds %struct.snd_ali_channel_control, %struct.snd_ali_channel_control* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @ALI_REG(%struct.snd_ali* %126, i64 %130)
  %132 = call i32 @outl(i32 %125, i32 %131)
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %8, align 4
  %135 = xor i32 %134, -1
  %136 = and i32 %133, %135
  %137 = load %struct.snd_ali_channel_control*, %struct.snd_ali_channel_control** %6, align 8
  %138 = getelementptr inbounds %struct.snd_ali_channel_control, %struct.snd_ali_channel_control* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 8
  br label %140

140:                                              ; preds = %121, %22
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i64) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

declare dso_local i32 @snd_ali_stop_voice(%struct.snd_ali*, i32) #1

declare dso_local i32 @snd_ali_disable_voice_irq(%struct.snd_ali*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
