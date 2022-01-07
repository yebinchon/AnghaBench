; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_snd_cs4215_put_single.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_snd_cs4215_put_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_dbri = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@D_GEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"put_single: mask=0x%x, changed=%d, mixer-value=%ld, mm-value=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cs4215_put_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4215_put_single(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_dbri*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = call %struct.snd_dbri* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_dbri* %14, %struct.snd_dbri** %6, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %7, align 4
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 255
  store i32 %23, i32* %8, align 4
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 16
  %28 = and i32 %27, 255
  store i32 %28, i32* %9, align 4
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 24
  %33 = and i32 %32, 1
  store i32 %33, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %34 = load %struct.snd_dbri*, %struct.snd_dbri** %6, align 8
  %35 = icmp ne %struct.snd_dbri* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @snd_BUG_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %177

43:                                               ; preds = %2
  %44 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %45 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %50, %51
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %12, align 2
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %43
  %57 = load i32, i32* %9, align 4
  %58 = load i16, i16* %12, align 2
  %59 = zext i16 %58 to i32
  %60 = sub nsw i32 %57, %59
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %12, align 2
  br label %62

62:                                               ; preds = %56, %43
  %63 = load i32, i32* %8, align 4
  %64 = load i16, i16* %12, align 2
  %65 = zext i16 %64 to i32
  %66 = shl i32 %65, %63
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %12, align 2
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %106

70:                                               ; preds = %62
  %71 = load %struct.snd_dbri*, %struct.snd_dbri** %6, align 8
  %72 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = shl i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = and i32 %78, %82
  %84 = load i16, i16* %12, align 2
  %85 = zext i16 %84 to i32
  %86 = or i32 %83, %85
  %87 = load %struct.snd_dbri*, %struct.snd_dbri** %6, align 8
  %88 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %86, i32* %93, align 4
  %94 = load i16, i16* %12, align 2
  %95 = zext i16 %94 to i32
  %96 = load %struct.snd_dbri*, %struct.snd_dbri** %6, align 8
  %97 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %95, %103
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %11, align 4
  br label %145

106:                                              ; preds = %62
  %107 = load %struct.snd_dbri*, %struct.snd_dbri** %6, align 8
  %108 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sub nsw i32 %111, 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %8, align 4
  %118 = shl i32 %116, %117
  %119 = xor i32 %118, -1
  %120 = and i32 %115, %119
  %121 = load i16, i16* %12, align 2
  %122 = zext i16 %121 to i32
  %123 = or i32 %120, %122
  %124 = load %struct.snd_dbri*, %struct.snd_dbri** %6, align 8
  %125 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sub nsw i32 %128, 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 %123, i32* %131, align 4
  %132 = load i16, i16* %12, align 2
  %133 = zext i16 %132 to i32
  %134 = load %struct.snd_dbri*, %struct.snd_dbri** %6, align 8
  %135 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sub nsw i32 %138, 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %133, %142
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %106, %70
  %146 = load i32, i32* @D_GEN, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %150 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.snd_dbri*, %struct.snd_dbri** %6, align 8
  %157 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = and i32 %160, 3
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = trunc i32 %164 to i16
  %166 = call i32 @dprintk(i32 %146, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %147, i32 %148, i32 %155, i16 zeroext %165)
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %145
  %170 = load %struct.snd_dbri*, %struct.snd_dbri** %6, align 8
  %171 = call i32 @cs4215_setdata(%struct.snd_dbri* %170, i32 1)
  %172 = call i32 @udelay(i32 125)
  %173 = load %struct.snd_dbri*, %struct.snd_dbri** %6, align 8
  %174 = call i32 @cs4215_setdata(%struct.snd_dbri* %173, i32 0)
  br label %175

175:                                              ; preds = %169, %145
  %176 = load i32, i32* %11, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %40
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.snd_dbri* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @cs4215_setdata(%struct.snd_dbri*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
