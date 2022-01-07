; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_hoontech.c_snd_ice1712_stdsp24_box_channel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_hoontech.c_snd_ice1712_stdsp24_box_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, %struct.hoontech_spec* }
%struct.hoontech_spec = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32, i32, i32)* @snd_ice1712_stdsp24_box_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ice1712_stdsp24_box_channel(%struct.snd_ice1712* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hoontech_spec*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %10, i32 0, i32 1
  %12 = load %struct.hoontech_spec*, %struct.hoontech_spec** %11, align 8
  store %struct.hoontech_spec* %12, %struct.hoontech_spec** %9, align 8
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %17 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ICE1712_STDSP24_0_BOX(i32* %18, i32 %19)
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %22 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %23 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712* %21, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %32 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @ICE1712_STDSP24_2_CHN4(i32* %33, i32 0)
  br label %35

35:                                               ; preds = %30, %4
  %36 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %37 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @ICE1712_STDSP24_2_MIDI1(i32* %38, i32 %39)
  %41 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %42 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %43 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712* %41, i32 %46)
  %48 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %49 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %50 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712* %48, i32 %53)
  %55 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %56 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @ICE1712_STDSP24_1_CHN1(i32* %57, i32 1)
  %59 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %60 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @ICE1712_STDSP24_1_CHN2(i32* %61, i32 1)
  %63 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %64 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @ICE1712_STDSP24_1_CHN3(i32* %65, i32 1)
  %67 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %68 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @ICE1712_STDSP24_2_CHN4(i32* %69, i32 1)
  %71 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %72 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %73 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712* %71, i32 %76)
  %78 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %79 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %80 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712* %78, i32 %83)
  %85 = call i32 @udelay(i32 100)
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %88, label %100

88:                                               ; preds = %35
  %89 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %90 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @ICE1712_STDSP24_2_CHN4(i32* %91, i32 0)
  %93 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %94 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %95 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712* %93, i32 %98)
  br label %125

100:                                              ; preds = %35
  %101 = load i32, i32* %7, align 4
  switch i32 %101, label %117 [
    i32 0, label %102
    i32 1, label %107
    i32 2, label %112
  ]

102:                                              ; preds = %100
  %103 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %104 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @ICE1712_STDSP24_1_CHN1(i32* %105, i32 0)
  br label %117

107:                                              ; preds = %100
  %108 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %109 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @ICE1712_STDSP24_1_CHN2(i32* %110, i32 0)
  br label %117

112:                                              ; preds = %100
  %113 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %114 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @ICE1712_STDSP24_1_CHN3(i32* %115, i32 0)
  br label %117

117:                                              ; preds = %100, %112, %107, %102
  %118 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %119 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %120 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712* %118, i32 %123)
  br label %125

125:                                              ; preds = %117, %88
  %126 = call i32 @udelay(i32 100)
  %127 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %128 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @ICE1712_STDSP24_1_CHN1(i32* %129, i32 1)
  %131 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %132 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @ICE1712_STDSP24_1_CHN2(i32* %133, i32 1)
  %135 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %136 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @ICE1712_STDSP24_1_CHN3(i32* %137, i32 1)
  %139 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %140 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @ICE1712_STDSP24_2_CHN4(i32* %141, i32 1)
  %143 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %144 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %145 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712* %143, i32 %148)
  %150 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %151 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %152 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712* %150, i32 %155)
  %157 = call i32 @udelay(i32 100)
  %158 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %159 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @ICE1712_STDSP24_2_MIDI1(i32* %160, i32 0)
  %162 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %163 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  %164 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712* %162, i32 %167)
  %169 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %170 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %169, i32 0, i32 0
  %171 = call i32 @mutex_unlock(i32* %170)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ICE1712_STDSP24_0_BOX(i32*, i32) #1

declare dso_local i32 @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @ICE1712_STDSP24_2_CHN4(i32*, i32) #1

declare dso_local i32 @ICE1712_STDSP24_2_MIDI1(i32*, i32) #1

declare dso_local i32 @ICE1712_STDSP24_1_CHN1(i32*, i32) #1

declare dso_local i32 @ICE1712_STDSP24_1_CHN2(i32*, i32) #1

declare dso_local i32 @ICE1712_STDSP24_1_CHN3(i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
