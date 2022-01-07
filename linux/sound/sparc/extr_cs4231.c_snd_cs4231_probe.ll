; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs4231 = type { i32*, i32, i32 }

@REGSEL = common dso_local global i32 0, align 4
@CS4231_INIT = common dso_local global i32 0, align 4
@CS4231_MISC_INFO = common dso_local global i64 0, align 8
@CS4231_MODE2 = common dso_local global i32 0, align 4
@CS4231_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"cs4231: port = %p, id = 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@CS4231_IFACE_CTRL = common dso_local global i64 0, align 8
@CS4231_SINGLE_DMA = common dso_local global i32 0, align 4
@CS4231_ALT_FEATURE_1 = common dso_local global i64 0, align 8
@CS4231_ALT_FEATURE_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_cs4231*)* @snd_cs4231_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4231_probe(%struct.snd_cs4231* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_cs4231*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.snd_cs4231* %0, %struct.snd_cs4231** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %50, %1
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 50
  br i1 %11, label %12, label %53

12:                                               ; preds = %9
  %13 = call i32 (...) @mb()
  %14 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %15 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %16 = load i32, i32* @REGSEL, align 4
  %17 = call i32 @CS4231U(%struct.snd_cs4231* %15, i32 %16)
  %18 = call i32 @__cs4231_readb(%struct.snd_cs4231* %14, i32 %17)
  %19 = load i32, i32* @CS4231_INIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = call i32 @msleep(i32 2)
  br label %49

24:                                               ; preds = %12
  %25 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %26 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %25, i32 0, i32 1
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %30 = load i64, i64* @CS4231_MISC_INFO, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @CS4231_MODE2, align 4
  %33 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %29, i32 %31, i32 %32)
  %34 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %35 = load i64, i64* @CS4231_MISC_INFO, align 8
  %36 = call i32 @snd_cs4231_in(%struct.snd_cs4231* %34, i64 %35)
  %37 = and i32 %36, 15
  store i32 %37, i32* %6, align 4
  %38 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %39 = load i64, i64* @CS4231_VERSION, align 8
  %40 = call i32 @snd_cs4231_in(%struct.snd_cs4231* %38, i64 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %42 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %41, i32 0, i32 1
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %48

47:                                               ; preds = %24
  br label %53

48:                                               ; preds = %24
  br label %49

49:                                               ; preds = %48, %22
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %9

53:                                               ; preds = %47, %9
  %54 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %55 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @snd_printdd(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 10
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %159

64:                                               ; preds = %53
  %65 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %66 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %65, i32 0, i32 1
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %70 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %71 = load i32, i32* @STATUS, align 4
  %72 = call i32 @CS4231U(%struct.snd_cs4231* %70, i32 %71)
  %73 = call i32 @__cs4231_readb(%struct.snd_cs4231* %69, i32 %72)
  %74 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %75 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %76 = load i32, i32* @STATUS, align 4
  %77 = call i32 @CS4231U(%struct.snd_cs4231* %75, i32 %76)
  %78 = call i32 @__cs4231_writeb(%struct.snd_cs4231* %74, i32 0, i32 %77)
  %79 = call i32 (...) @mb()
  %80 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %81 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %80, i32 0, i32 1
  %82 = load i64, i64* %4, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i32, i32* @CS4231_MODE2, align 4
  %85 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %86 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @CS4231_MISC_INFO, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32 %84, i32* %89, align 4
  %90 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %91 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CS4231_SINGLE_DMA, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  %99 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %100 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 %98, i32* %103, align 4
  %104 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %105 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @CS4231_ALT_FEATURE_1, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 128, i32* %108, align 4
  %109 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %110 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @CS4231_ALT_FEATURE_2, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32 1, i32* %113, align 4
  %114 = load i32, i32* %7, align 4
  %115 = and i32 %114, 32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %64
  %118 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %119 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @CS4231_ALT_FEATURE_2, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, 2
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %117, %64
  %126 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %127 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %126, i32 0, i32 0
  %128 = bitcast i32** %127 to i8*
  store i8* %128, i8** %8, align 8
  %129 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %130 = call i32 @snd_cs4231_mce_down(%struct.snd_cs4231* %129)
  %131 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %132 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %131, i32 0, i32 1
  %133 = load i64, i64* %4, align 8
  %134 = call i32 @spin_lock_irqsave(i32* %132, i64 %133)
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %146, %125
  %136 = load i32, i32* %5, align 4
  %137 = icmp slt i32 %136, 32
  br i1 %137, label %138, label %149

138:                                              ; preds = %135
  %139 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %140 = load i32, i32* %5, align 4
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %8, align 8
  %143 = load i8, i8* %141, align 1
  %144 = zext i8 %143 to i32
  %145 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %139, i32 %140, i32 %144)
  br label %146

146:                                              ; preds = %138
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %135

149:                                              ; preds = %135
  %150 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %151 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %150, i32 0, i32 1
  %152 = load i64, i64* %4, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* %151, i64 %152)
  %154 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %155 = call i32 @snd_cs4231_mce_up(%struct.snd_cs4231* %154)
  %156 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %157 = call i32 @snd_cs4231_mce_down(%struct.snd_cs4231* %156)
  %158 = call i32 @mdelay(i32 2)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %149, %61
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @__cs4231_readb(%struct.snd_cs4231*, i32) #1

declare dso_local i32 @CS4231U(%struct.snd_cs4231*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_cs4231_out(%struct.snd_cs4231*, i32, i32) #1

declare dso_local i32 @snd_cs4231_in(%struct.snd_cs4231*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_printdd(i8*, i32, i32) #1

declare dso_local i32 @__cs4231_writeb(%struct.snd_cs4231*, i32, i32) #1

declare dso_local i32 @snd_cs4231_mce_down(%struct.snd_cs4231*) #1

declare dso_local i32 @snd_cs4231_mce_up(%struct.snd_cs4231*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
