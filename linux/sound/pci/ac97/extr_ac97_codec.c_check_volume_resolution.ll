; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_check_volume_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_check_volume_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.snd_ac97_res_table* }
%struct.snd_ac97_res_table = type { i32, i32 }

@__const.check_volume_resolution.cbit = private unnamed_addr constant [3 x i16] [i16 32, i16 16, i16 1], align 2
@__const.check_volume_resolution.max = private unnamed_addr constant [3 x i8] c"?\1F\0F", align 1
@AC97_MUTE_MASK_STEREO = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i32, i8*, i8*)* @check_volume_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_volume_resolution(%struct.snd_ac97* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [3 x i16], align 2
  %10 = alloca [3 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_ac97_res_table*, align 8
  %13 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = bitcast [3 x i16]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %14, i8* align 2 bitcast ([3 x i16]* @__const.check_volume_resolution.cbit to i8*), i64 6, i1 false)
  %15 = bitcast [3 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.check_volume_resolution.max, i32 0, i32 0), i64 3, i1 false)
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %16, i32 0, i32 0
  %18 = load %struct.snd_ac97_res_table*, %struct.snd_ac97_res_table** %17, align 8
  %19 = icmp ne %struct.snd_ac97_res_table* %18, null
  br i1 %19, label %20, label %54

20:                                               ; preds = %4
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %22 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %21, i32 0, i32 0
  %23 = load %struct.snd_ac97_res_table*, %struct.snd_ac97_res_table** %22, align 8
  store %struct.snd_ac97_res_table* %23, %struct.snd_ac97_res_table** %12, align 8
  br label %24

24:                                               ; preds = %50, %20
  %25 = load %struct.snd_ac97_res_table*, %struct.snd_ac97_res_table** %12, align 8
  %26 = getelementptr inbounds %struct.snd_ac97_res_table, %struct.snd_ac97_res_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %24
  %30 = load %struct.snd_ac97_res_table*, %struct.snd_ac97_res_table** %12, align 8
  %31 = getelementptr inbounds %struct.snd_ac97_res_table, %struct.snd_ac97_res_table* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.snd_ac97_res_table*, %struct.snd_ac97_res_table** %12, align 8
  %37 = getelementptr inbounds %struct.snd_ac97_res_table, %struct.snd_ac97_res_table* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %7, align 8
  store i8 %40, i8* %41, align 1
  %42 = load %struct.snd_ac97_res_table*, %struct.snd_ac97_res_table** %12, align 8
  %43 = getelementptr inbounds %struct.snd_ac97_res_table, %struct.snd_ac97_res_table* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 255
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %8, align 8
  store i8 %47, i8* %48, align 1
  br label %143

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.snd_ac97_res_table*, %struct.snd_ac97_res_table** %12, align 8
  %52 = getelementptr inbounds %struct.snd_ac97_res_table, %struct.snd_ac97_res_table* %51, i32 1
  store %struct.snd_ac97_res_table* %52, %struct.snd_ac97_res_table** %12, align 8
  br label %24

53:                                               ; preds = %24
  br label %54

54:                                               ; preds = %53, %4
  %55 = load i8*, i8** %8, align 8
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %7, align 8
  store i8 0, i8* %56, align 1
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %140, %54
  %58 = load i32, i32* %11, align 4
  %59 = getelementptr inbounds [3 x i16], [3 x i16]* %9, i64 0, i64 0
  %60 = call i32 @ARRAY_SIZE(i16* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %143

62:                                               ; preds = %57
  %63 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i16, i16* @AC97_MUTE_MASK_STEREO, align 2
  %66 = zext i16 %65 to i32
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x i16], [3 x i16]* %9, i64 0, i64 %68
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = or i32 %66, %71
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [3 x i16], [3 x i16]* %9, i64 0, i64 %74
  %76 = load i16, i16* %75, align 2
  %77 = zext i16 %76 to i32
  %78 = shl i32 %77, 8
  %79 = or i32 %72, %78
  %80 = trunc i32 %79 to i16
  %81 = call i32 @snd_ac97_write(%struct.snd_ac97* %63, i32 %64, i16 zeroext %80)
  %82 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %82, i32 %83)
  store i16 %84, i16* %13, align 2
  %85 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %85, i32 %86)
  store i16 %87, i16* %13, align 2
  %88 = load i8*, i8** %7, align 8
  %89 = load i8, i8* %88, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %62
  %92 = load i16, i16* %13, align 2
  %93 = zext i16 %92 to i32
  %94 = and i32 %93, 127
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [3 x i16], [3 x i16]* %9, i64 0, i64 %96
  %98 = load i16, i16* %97, align 2
  %99 = zext i16 %98 to i32
  %100 = icmp eq i32 %94, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %91
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = load i8*, i8** %7, align 8
  store i8 %105, i8* %106, align 1
  br label %107

107:                                              ; preds = %101, %91, %62
  %108 = load i8*, i8** %8, align 8
  %109 = load i8, i8* %108, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %128, label %111

111:                                              ; preds = %107
  %112 = load i16, i16* %13, align 2
  %113 = zext i16 %112 to i32
  %114 = ashr i32 %113, 8
  %115 = and i32 %114, 127
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [3 x i16], [3 x i16]* %9, i64 0, i64 %117
  %119 = load i16, i16* %118, align 2
  %120 = zext i16 %119 to i32
  %121 = icmp eq i32 %115, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %111
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = load i8*, i8** %8, align 8
  store i8 %126, i8* %127, align 1
  br label %128

128:                                              ; preds = %122, %111, %107
  %129 = load i8*, i8** %7, align 8
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load i8*, i8** %8, align 8
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %143

139:                                              ; preds = %133, %128
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %57

143:                                              ; preds = %35, %138, %57
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i16*) #2

declare dso_local i32 @snd_ac97_write(%struct.snd_ac97*, i32, i16 zeroext) #2

declare dso_local zeroext i16 @snd_ac97_read(%struct.snd_ac97*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
