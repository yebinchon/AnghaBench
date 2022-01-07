; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_fx.c_wavefront_fx_memset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_fx.c_wavefront_fx_memset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"FX memset: page must be >= 0 and <= 7\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"FX memset: addr must be >= 0 and <= 7f\0A\00", align 1
@FX_LSB_TRANSFER = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [28 x i8] c"FX: addr %d:%x set to 0x%x\0A\00", align 1
@FX_AUTO_INCR = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [46 x i8] c"FX memset (0x%x, 0x%x, 0x%lx, %d) incomplete\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32, i16*)* @wavefront_fx_memset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wavefront_fx_memset(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i16* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i16* %4, i16** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 7
  br i1 %17, label %18, label %22

18:                                               ; preds = %15, %5
  %19 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %155

22:                                               ; preds = %15
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 127
  br i1 %27, label %28, label %32

28:                                               ; preds = %25, %22
  %29 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %155

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %80

35:                                               ; preds = %32
  %36 = load i16, i16* @FX_LSB_TRANSFER, align 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @outb(i16 zeroext %36, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = trunc i32 %41 to i16
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @outb(i16 zeroext %42, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = trunc i32 %47 to i16
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @outb(i16 zeroext %48, i32 %51)
  %53 = load i16*, i16** %11, align 8
  %54 = getelementptr inbounds i16, i16* %53, i64 0
  %55 = load i16, i16* %54, align 2
  %56 = zext i16 %55 to i32
  %57 = ashr i32 %56, 8
  %58 = trunc i32 %57 to i16
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @outb(i16 zeroext %58, i32 %61)
  %63 = load i16*, i16** %11, align 8
  %64 = getelementptr inbounds i16, i16* %63, i64 0
  %65 = load i16, i16* %64, align 2
  %66 = zext i16 %65 to i32
  %67 = and i32 %66, 255
  %68 = trunc i32 %67 to i16
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @outb(i16 zeroext %68, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i16*, i16** %11, align 8
  %76 = getelementptr inbounds i16, i16* %75, i64 0
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74, i32 %78)
  br label %154

80:                                               ; preds = %32
  %81 = load i16, i16* @FX_AUTO_INCR, align 2
  %82 = zext i16 %81 to i32
  %83 = load i16, i16* @FX_LSB_TRANSFER, align 2
  %84 = zext i16 %83 to i32
  %85 = or i32 %82, %84
  %86 = trunc i32 %85 to i16
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @outb(i16 zeroext %86, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = trunc i32 %91 to i16
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @outb(i16 zeroext %92, i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = trunc i32 %97 to i16
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @outb(i16 zeroext %98, i32 %101)
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %137, %80
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %140

107:                                              ; preds = %103
  %108 = load i16*, i16** %11, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i16, i16* %108, i64 %110
  %112 = load i16, i16* %111, align 2
  %113 = zext i16 %112 to i32
  %114 = ashr i32 %113, 8
  %115 = trunc i32 %114 to i16
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @outb(i16 zeroext %115, i32 %118)
  %120 = load i16*, i16** %11, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i16, i16* %120, i64 %122
  %124 = load i16, i16* %123, align 2
  %125 = zext i16 %124 to i32
  %126 = and i32 %125, 255
  %127 = trunc i32 %126 to i16
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @outb(i16 zeroext %127, i32 %130)
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %133 = call i32 @wavefront_fx_idle(%struct.TYPE_4__* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %107
  br label %140

136:                                              ; preds = %107
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %103

140:                                              ; preds = %135, %103
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i16*, i16** %11, align 8
  %148 = ptrtoint i16* %147 to i64
  %149 = load i32, i32* %10, align 4
  %150 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %145, i32 %146, i64 %148, i32 %149)
  %151 = load i32, i32* @EIO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %6, align 4
  br label %155

153:                                              ; preds = %140
  br label %154

154:                                              ; preds = %153, %35
  store i32 0, i32* %6, align 4
  br label %155

155:                                              ; preds = %154, %144, %28, %18
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

declare dso_local i32 @snd_printk(i8*, ...) #1

declare dso_local i32 @outb(i16 zeroext, i32) #1

declare dso_local i32 @wavefront_fx_idle(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
