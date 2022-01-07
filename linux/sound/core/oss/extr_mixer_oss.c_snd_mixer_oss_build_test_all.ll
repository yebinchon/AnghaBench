; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_build_test_all.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_build_test_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss = type { i32 }
%struct.snd_mixer_oss_assign_table = type { i8*, i32 }
%struct.slot = type { i32 }

@SNDRV_MIXER_OSS_ITEM_GLOBAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s Switch\00", align 1
@SNDRV_MIXER_OSS_ITEM_GSWITCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s Route\00", align 1
@SNDRV_MIXER_OSS_ITEM_GROUTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%s Volume\00", align 1
@SNDRV_MIXER_OSS_ITEM_GVOLUME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"%s Playback Switch\00", align 1
@SNDRV_MIXER_OSS_ITEM_PSWITCH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"%s Playback Route\00", align 1
@SNDRV_MIXER_OSS_ITEM_PROUTE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"%s Playback Volume\00", align 1
@SNDRV_MIXER_OSS_ITEM_PVOLUME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"%s Capture Switch\00", align 1
@SNDRV_MIXER_OSS_ITEM_CSWITCH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"%s Capture Route\00", align 1
@SNDRV_MIXER_OSS_ITEM_CROUTE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"%s Capture Volume\00", align 1
@SNDRV_MIXER_OSS_ITEM_CVOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss*, %struct.snd_mixer_oss_assign_table*, %struct.slot*)* @snd_mixer_oss_build_test_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_build_test_all(%struct.snd_mixer_oss* %0, %struct.snd_mixer_oss_assign_table* %1, %struct.slot* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_mixer_oss*, align 8
  %6 = alloca %struct.snd_mixer_oss_assign_table*, align 8
  %7 = alloca %struct.slot*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.snd_mixer_oss* %0, %struct.snd_mixer_oss** %5, align 8
  store %struct.snd_mixer_oss_assign_table* %1, %struct.snd_mixer_oss_assign_table** %6, align 8
  store %struct.slot* %2, %struct.slot** %7, align 8
  %10 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %5, align 8
  %11 = load %struct.slot*, %struct.slot** %7, align 8
  %12 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %13 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %16 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SNDRV_MIXER_OSS_ITEM_GLOBAL, align 4
  %19 = call i32 @snd_mixer_oss_build_test(%struct.snd_mixer_oss* %10, %struct.slot* %11, i8* %14, i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %187

24:                                               ; preds = %3
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %26 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %27 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %5, align 8
  %31 = load %struct.slot*, %struct.slot** %7, align 8
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %33 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %34 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SNDRV_MIXER_OSS_ITEM_GSWITCH, align 4
  %37 = call i32 @snd_mixer_oss_build_test(%struct.snd_mixer_oss* %30, %struct.slot* %31, i8* %32, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %187

42:                                               ; preds = %24
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %44 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %45 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %5, align 8
  %49 = load %struct.slot*, %struct.slot** %7, align 8
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %51 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %52 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SNDRV_MIXER_OSS_ITEM_GROUTE, align 4
  %55 = call i32 @snd_mixer_oss_build_test(%struct.snd_mixer_oss* %48, %struct.slot* %49, i8* %50, i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %42
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %187

60:                                               ; preds = %42
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %62 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %63 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  %66 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %5, align 8
  %67 = load %struct.slot*, %struct.slot** %7, align 8
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %69 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %70 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SNDRV_MIXER_OSS_ITEM_GVOLUME, align 4
  %73 = call i32 @snd_mixer_oss_build_test(%struct.snd_mixer_oss* %66, %struct.slot* %67, i8* %68, i32 %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %60
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %187

78:                                               ; preds = %60
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %80 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %81 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @sprintf(i8* %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %5, align 8
  %85 = load %struct.slot*, %struct.slot** %7, align 8
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %87 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %88 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SNDRV_MIXER_OSS_ITEM_PSWITCH, align 4
  %91 = call i32 @snd_mixer_oss_build_test(%struct.snd_mixer_oss* %84, %struct.slot* %85, i8* %86, i32 %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %78
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %4, align 4
  br label %187

96:                                               ; preds = %78
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %98 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %99 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @sprintf(i8* %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %100)
  %102 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %5, align 8
  %103 = load %struct.slot*, %struct.slot** %7, align 8
  %104 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %105 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %106 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SNDRV_MIXER_OSS_ITEM_PROUTE, align 4
  %109 = call i32 @snd_mixer_oss_build_test(%struct.snd_mixer_oss* %102, %struct.slot* %103, i8* %104, i32 %107, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %96
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %4, align 4
  br label %187

114:                                              ; preds = %96
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %116 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %117 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @sprintf(i8* %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %118)
  %120 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %5, align 8
  %121 = load %struct.slot*, %struct.slot** %7, align 8
  %122 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %123 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %124 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @SNDRV_MIXER_OSS_ITEM_PVOLUME, align 4
  %127 = call i32 @snd_mixer_oss_build_test(%struct.snd_mixer_oss* %120, %struct.slot* %121, i8* %122, i32 %125, i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %114
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %4, align 4
  br label %187

132:                                              ; preds = %114
  %133 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %134 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %135 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @sprintf(i8* %133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %136)
  %138 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %5, align 8
  %139 = load %struct.slot*, %struct.slot** %7, align 8
  %140 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %141 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %142 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @SNDRV_MIXER_OSS_ITEM_CSWITCH, align 4
  %145 = call i32 @snd_mixer_oss_build_test(%struct.snd_mixer_oss* %138, %struct.slot* %139, i8* %140, i32 %143, i32 %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %132
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %4, align 4
  br label %187

150:                                              ; preds = %132
  %151 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %152 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %153 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @sprintf(i8* %151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %154)
  %156 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %5, align 8
  %157 = load %struct.slot*, %struct.slot** %7, align 8
  %158 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %159 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %160 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @SNDRV_MIXER_OSS_ITEM_CROUTE, align 4
  %163 = call i32 @snd_mixer_oss_build_test(%struct.snd_mixer_oss* %156, %struct.slot* %157, i8* %158, i32 %161, i32 %162)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %150
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %4, align 4
  br label %187

168:                                              ; preds = %150
  %169 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %170 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %171 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @sprintf(i8* %169, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %172)
  %174 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %5, align 8
  %175 = load %struct.slot*, %struct.slot** %7, align 8
  %176 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %177 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %6, align 8
  %178 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @SNDRV_MIXER_OSS_ITEM_CVOLUME, align 4
  %181 = call i32 @snd_mixer_oss_build_test(%struct.snd_mixer_oss* %174, %struct.slot* %175, i8* %176, i32 %179, i32 %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %168
  %185 = load i32, i32* %9, align 4
  store i32 %185, i32* %4, align 4
  br label %187

186:                                              ; preds = %168
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %186, %184, %166, %148, %130, %112, %94, %76, %58, %40, %22
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @snd_mixer_oss_build_test(%struct.snd_mixer_oss*, %struct.slot*, i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
