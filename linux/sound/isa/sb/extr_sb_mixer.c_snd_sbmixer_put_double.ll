; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb_mixer.c_snd_sbmixer_put_double.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb_mixer.c_snd_sbmixer_put_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_sb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_sbmixer_put_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sbmixer_put_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_sb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %18 = call %struct.snd_sb* @snd_kcontrol_chip(%struct.snd_kcontrol* %17)
  store %struct.snd_sb* %18, %struct.snd_sb** %5, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %7, align 4
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 8
  %27 = and i32 %26, 255
  store i32 %27, i32* %8, align 4
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %29 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 7
  store i32 %32, i32* %9, align 4
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 19
  %37 = and i32 %36, 7
  store i32 %37, i32* %10, align 4
  %38 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %39 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 24
  %42 = and i32 %41, 255
  store i32 %42, i32* %11, align 4
  %43 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %44 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = shl i32 %51, %52
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %13, align 1
  %55 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %56 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = shl i32 %63, %64
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %14, align 1
  %67 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %68 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %67, i32 0, i32 0
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %110

74:                                               ; preds = %2
  %75 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call zeroext i8 @snd_sbmixer_read(%struct.snd_sb* %75, i32 %76)
  store i8 %77, i8* %15, align 1
  %78 = load i8, i8* %15, align 1
  %79 = zext i8 %78 to i32
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %9, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = shl i32 %83, %84
  %86 = or i32 %82, %85
  %87 = xor i32 %86, -1
  %88 = and i32 %79, %87
  %89 = load i8, i8* %13, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %88, %90
  %92 = load i8, i8* %14, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %91, %93
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %13, align 1
  %96 = load i8, i8* %13, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8, i8* %15, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp ne i32 %97, %99
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %74
  %105 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i8, i8* %13, align 1
  %108 = call i32 @snd_sbmixer_write(%struct.snd_sb* %105, i32 %106, i8 zeroext %107)
  br label %109

109:                                              ; preds = %104, %74
  br label %165

110:                                              ; preds = %2
  %111 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call zeroext i8 @snd_sbmixer_read(%struct.snd_sb* %111, i32 %112)
  store i8 %113, i8* %15, align 1
  %114 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call zeroext i8 @snd_sbmixer_read(%struct.snd_sb* %114, i32 %115)
  store i8 %116, i8* %16, align 1
  %117 = load i8, i8* %15, align 1
  %118 = zext i8 %117 to i32
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %9, align 4
  %121 = shl i32 %119, %120
  %122 = xor i32 %121, -1
  %123 = and i32 %118, %122
  %124 = load i8, i8* %13, align 1
  %125 = zext i8 %124 to i32
  %126 = or i32 %123, %125
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %13, align 1
  %128 = load i8, i8* %16, align 1
  %129 = zext i8 %128 to i32
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %10, align 4
  %132 = shl i32 %130, %131
  %133 = xor i32 %132, -1
  %134 = and i32 %129, %133
  %135 = load i8, i8* %14, align 1
  %136 = zext i8 %135 to i32
  %137 = or i32 %134, %136
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %14, align 1
  %139 = load i8, i8* %13, align 1
  %140 = zext i8 %139 to i32
  %141 = load i8, i8* %15, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp ne i32 %140, %142
  br i1 %143, label %150, label %144

144:                                              ; preds = %110
  %145 = load i8, i8* %14, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8, i8* %16, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp ne i32 %146, %148
  br label %150

150:                                              ; preds = %144, %110
  %151 = phi i1 [ true, %110 ], [ %149, %144 ]
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load i8, i8* %13, align 1
  %159 = call i32 @snd_sbmixer_write(%struct.snd_sb* %156, i32 %157, i8 zeroext %158)
  %160 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %161 = load i32, i32* %8, align 4
  %162 = load i8, i8* %14, align 1
  %163 = call i32 @snd_sbmixer_write(%struct.snd_sb* %160, i32 %161, i8 zeroext %162)
  br label %164

164:                                              ; preds = %155, %150
  br label %165

165:                                              ; preds = %164, %109
  %166 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %167 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %166, i32 0, i32 0
  %168 = load i64, i64* %6, align 8
  %169 = call i32 @spin_unlock_irqrestore(i32* %167, i64 %168)
  %170 = load i32, i32* %12, align 4
  ret i32 %170
}

declare dso_local %struct.snd_sb* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @snd_sbmixer_read(%struct.snd_sb*, i32) #1

declare dso_local i32 @snd_sbmixer_write(%struct.snd_sb*, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
