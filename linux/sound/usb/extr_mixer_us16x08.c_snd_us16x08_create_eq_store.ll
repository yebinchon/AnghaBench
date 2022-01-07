; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_us16x08.c_snd_us16x08_create_eq_store.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_us16x08.c_snd_us16x08_create_eq_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_us16x08_eq_store = type { i32*** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SND_US16X08_MAX_CHANNELS = common dso_local global i32 0, align 4
@SND_US16X08_ID_EQ_BAND_COUNT = common dso_local global i32 0, align 4
@SND_US16X08_EQ_HIGHFREQ_BIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_us16x08_eq_store* ()* @snd_us16x08_create_eq_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_us16x08_eq_store* @snd_us16x08_create_eq_store() #0 {
  %1 = alloca %struct.snd_us16x08_eq_store*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_us16x08_eq_store*, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.snd_us16x08_eq_store* @kmalloc(i32 8, i32 %5)
  store %struct.snd_us16x08_eq_store* %6, %struct.snd_us16x08_eq_store** %4, align 8
  %7 = load %struct.snd_us16x08_eq_store*, %struct.snd_us16x08_eq_store** %4, align 8
  %8 = icmp ne %struct.snd_us16x08_eq_store* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store %struct.snd_us16x08_eq_store* null, %struct.snd_us16x08_eq_store** %1, align 8
  br label %158

10:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %153, %10
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @SND_US16X08_MAX_CHANNELS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %156

15:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %149, %15
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SND_US16X08_ID_EQ_BAND_COUNT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %152

20:                                               ; preds = %16
  %21 = load %struct.snd_us16x08_eq_store*, %struct.snd_us16x08_eq_store** %4, align 8
  %22 = getelementptr inbounds %struct.snd_us16x08_eq_store, %struct.snd_us16x08_eq_store* %21, i32 0, i32 0
  %23 = load i32***, i32**** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32**, i32*** %23, i64 %25
  %27 = load i32**, i32*** %26, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 12, i32* %32, align 4
  %33 = load %struct.snd_us16x08_eq_store*, %struct.snd_us16x08_eq_store** %4, align 8
  %34 = getelementptr inbounds %struct.snd_us16x08_eq_store, %struct.snd_us16x08_eq_store* %33, i32 0, i32 0
  %35 = load i32***, i32**** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32**, i32*** %35, i64 %37
  %39 = load i32**, i32*** %38, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 3
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* %3, align 4
  switch i32 %45, label %148 [
    i32 0, label %46
    i32 1, label %71
    i32 2, label %96
    i32 3, label %121
  ]

46:                                               ; preds = %20
  %47 = load %struct.snd_us16x08_eq_store*, %struct.snd_us16x08_eq_store** %4, align 8
  %48 = getelementptr inbounds %struct.snd_us16x08_eq_store, %struct.snd_us16x08_eq_store* %47, i32 0, i32 0
  %49 = load i32***, i32**** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32**, i32*** %49, i64 %51
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 5, i32* %58, align 4
  %59 = load %struct.snd_us16x08_eq_store*, %struct.snd_us16x08_eq_store** %4, align 8
  %60 = getelementptr inbounds %struct.snd_us16x08_eq_store, %struct.snd_us16x08_eq_store* %59, i32 0, i32 0
  %61 = load i32***, i32**** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32**, i32*** %61, i64 %63
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 255, i32* %70, align 4
  br label %148

71:                                               ; preds = %20
  %72 = load %struct.snd_us16x08_eq_store*, %struct.snd_us16x08_eq_store** %4, align 8
  %73 = getelementptr inbounds %struct.snd_us16x08_eq_store, %struct.snd_us16x08_eq_store* %72, i32 0, i32 0
  %74 = load i32***, i32**** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32**, i32*** %74, i64 %76
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %2, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 14, i32* %83, align 4
  %84 = load %struct.snd_us16x08_eq_store*, %struct.snd_us16x08_eq_store** %4, align 8
  %85 = getelementptr inbounds %struct.snd_us16x08_eq_store, %struct.snd_us16x08_eq_store* %84, i32 0, i32 0
  %86 = load i32***, i32**** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32**, i32*** %86, i64 %88
  %90 = load i32**, i32*** %89, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %2, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 2, i32* %95, align 4
  br label %148

96:                                               ; preds = %20
  %97 = load %struct.snd_us16x08_eq_store*, %struct.snd_us16x08_eq_store** %4, align 8
  %98 = getelementptr inbounds %struct.snd_us16x08_eq_store, %struct.snd_us16x08_eq_store* %97, i32 0, i32 0
  %99 = load i32***, i32**** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32**, i32*** %99, i64 %101
  %103 = load i32**, i32*** %102, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %2, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 27, i32* %108, align 4
  %109 = load %struct.snd_us16x08_eq_store*, %struct.snd_us16x08_eq_store** %4, align 8
  %110 = getelementptr inbounds %struct.snd_us16x08_eq_store, %struct.snd_us16x08_eq_store* %109, i32 0, i32 0
  %111 = load i32***, i32**** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32**, i32*** %111, i64 %113
  %115 = load i32**, i32*** %114, align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %2, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 2, i32* %120, align 4
  br label %148

121:                                              ; preds = %20
  %122 = load i32, i32* @SND_US16X08_EQ_HIGHFREQ_BIAS, align 4
  %123 = sub nsw i32 47, %122
  %124 = load %struct.snd_us16x08_eq_store*, %struct.snd_us16x08_eq_store** %4, align 8
  %125 = getelementptr inbounds %struct.snd_us16x08_eq_store, %struct.snd_us16x08_eq_store* %124, i32 0, i32 0
  %126 = load i32***, i32**** %125, align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32**, i32*** %126, i64 %128
  %130 = load i32**, i32*** %129, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %2, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %123, i32* %135, align 4
  %136 = load %struct.snd_us16x08_eq_store*, %struct.snd_us16x08_eq_store** %4, align 8
  %137 = getelementptr inbounds %struct.snd_us16x08_eq_store, %struct.snd_us16x08_eq_store* %136, i32 0, i32 0
  %138 = load i32***, i32**** %137, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32**, i32*** %138, i64 %140
  %142 = load i32**, i32*** %141, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %2, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 255, i32* %147, align 4
  br label %148

148:                                              ; preds = %20, %121, %96, %71, %46
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %3, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %3, align 4
  br label %16

152:                                              ; preds = %16
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %2, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %2, align 4
  br label %11

156:                                              ; preds = %11
  %157 = load %struct.snd_us16x08_eq_store*, %struct.snd_us16x08_eq_store** %4, align 8
  store %struct.snd_us16x08_eq_store* %157, %struct.snd_us16x08_eq_store** %1, align 8
  br label %158

158:                                              ; preds = %156, %9
  %159 = load %struct.snd_us16x08_eq_store*, %struct.snd_us16x08_eq_store** %1, align 8
  ret %struct.snd_us16x08_eq_store* %159
}

declare dso_local %struct.snd_us16x08_eq_store* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
