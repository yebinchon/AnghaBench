; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_mixer.c_snd_ics_put_double.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_mixer.c_snd_ics_put_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_gus_card = type { i32, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8** }

@SNDRV_ICS_GF1_DEV = common dso_local global i32 0, align 4
@SNDRV_ICS_MASTER_DEV = common dso_local global i32 0, align 4
@MIXCNTRLPORT = common dso_local global i32 0, align 4
@MIXDATAPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ics_put_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ics_put_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_gus_card*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = call %struct.snd_gus_card* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_gus_card* %14, %struct.snd_gus_card** %5, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %7, align 4
  %19 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 127
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %9, align 1
  %28 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 127
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %10, align 1
  %37 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %38 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %37, i32 0, i32 0
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %42 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %11, align 1
  %51 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %52 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %12, align 1
  %61 = load i8, i8* %9, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* %11, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %2
  %67 = load i8, i8* %10, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* %12, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp ne i32 %68, %70
  br label %72

72:                                               ; preds = %66, %2
  %73 = phi i1 [ true, %2 ], [ %71, %66 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %8, align 4
  %75 = load i8, i8* %9, align 1
  %76 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %77 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  store i8 %75, i8* %84, align 1
  %85 = load i8, i8* %10, align 1
  %86 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %87 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  store i8 %85, i8* %94, align 1
  %95 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %96 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %72
  %100 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %101 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @SNDRV_ICS_GF1_DEV, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @SNDRV_ICS_MASTER_DEV, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108, %104
  %113 = load i8, i8* %9, align 1
  %114 = load i8, i8* %10, align 1
  %115 = call i32 @swap(i8 zeroext %113, i8 zeroext %114)
  br label %116

116:                                              ; preds = %112, %108, %99, %72
  %117 = load i32, i32* %7, align 4
  %118 = shl i32 %117, 3
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = trunc i32 %119 to i8
  %121 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %122 = load i32, i32* @MIXCNTRLPORT, align 4
  %123 = call i32 @GUSP(%struct.snd_gus_card* %121, i32 %122)
  %124 = call i32 @outb(i8 zeroext %120, i32 %123)
  %125 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %126 = load i32, i32* @MIXDATAPORT, align 4
  %127 = call i32 @GUSP(%struct.snd_gus_card* %125, i32 %126)
  %128 = call i32 @outb(i8 zeroext 1, i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = or i32 %129, 2
  %131 = trunc i32 %130 to i8
  %132 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %133 = load i32, i32* @MIXCNTRLPORT, align 4
  %134 = call i32 @GUSP(%struct.snd_gus_card* %132, i32 %133)
  %135 = call i32 @outb(i8 zeroext %131, i32 %134)
  %136 = load i8, i8* %9, align 1
  %137 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %138 = load i32, i32* @MIXDATAPORT, align 4
  %139 = call i32 @GUSP(%struct.snd_gus_card* %137, i32 %138)
  %140 = call i32 @outb(i8 zeroext %136, i32 %139)
  %141 = load i32, i32* %7, align 4
  %142 = or i32 %141, 1
  %143 = trunc i32 %142 to i8
  %144 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %145 = load i32, i32* @MIXCNTRLPORT, align 4
  %146 = call i32 @GUSP(%struct.snd_gus_card* %144, i32 %145)
  %147 = call i32 @outb(i8 zeroext %143, i32 %146)
  %148 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %149 = load i32, i32* @MIXDATAPORT, align 4
  %150 = call i32 @GUSP(%struct.snd_gus_card* %148, i32 %149)
  %151 = call i32 @outb(i8 zeroext 2, i32 %150)
  %152 = load i32, i32* %7, align 4
  %153 = or i32 %152, 3
  %154 = trunc i32 %153 to i8
  %155 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %156 = load i32, i32* @MIXCNTRLPORT, align 4
  %157 = call i32 @GUSP(%struct.snd_gus_card* %155, i32 %156)
  %158 = call i32 @outb(i8 zeroext %154, i32 %157)
  %159 = load i8, i8* %10, align 1
  %160 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %161 = load i32, i32* @MIXDATAPORT, align 4
  %162 = call i32 @GUSP(%struct.snd_gus_card* %160, i32 %161)
  %163 = call i32 @outb(i8 zeroext %159, i32 %162)
  %164 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %165 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %164, i32 0, i32 0
  %166 = load i64, i64* %6, align 8
  %167 = call i32 @spin_unlock_irqrestore(i32* %165, i64 %166)
  %168 = load i32, i32* %8, align 4
  ret i32 %168
}

declare dso_local %struct.snd_gus_card* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @swap(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @GUSP(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
