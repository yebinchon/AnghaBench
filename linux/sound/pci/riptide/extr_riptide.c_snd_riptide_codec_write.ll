; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_codec_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_codec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cmdret = type { i16* }
%struct.snd_ac97 = type { %struct.snd_riptide* }
%struct.snd_riptide = type { %struct.cmdif* }
%struct.cmdif = type { i32 }

@CMDRET_ZERO = common dso_local global %union.cmdret zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"Write AC97 reg 0x%x 0x%x\0A\00", align 1
@MAX_WRITE_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Write AC97 reg failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @snd_riptide_codec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_riptide_codec_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.snd_riptide*, align 8
  %8 = alloca %struct.cmdif*, align 8
  %9 = alloca %union.cmdret, align 8
  %10 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %11, i32 0, i32 0
  %13 = load %struct.snd_riptide*, %struct.snd_riptide** %12, align 8
  store %struct.snd_riptide* %13, %struct.snd_riptide** %7, align 8
  %14 = load %struct.snd_riptide*, %struct.snd_riptide** %7, align 8
  %15 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %14, i32 0, i32 0
  %16 = load %struct.cmdif*, %struct.cmdif** %15, align 8
  store %struct.cmdif* %16, %struct.cmdif** %8, align 8
  %17 = bitcast %union.cmdret* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%union.cmdret* @CMDRET_ZERO to i8*), i64 8, i1 false)
  store i32 0, i32* %10, align 4
  %18 = load %struct.cmdif*, %struct.cmdif** %8, align 8
  %19 = icmp ne %struct.cmdif* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @snd_BUG_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %61

25:                                               ; preds = %3
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* %6, align 2
  %29 = zext i16 %28 to i32
  %30 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %53, %25
  %32 = load %struct.cmdif*, %struct.cmdif** %8, align 8
  %33 = load i16, i16* %6, align 2
  %34 = load i16, i16* %5, align 2
  %35 = call i32 @SEND_SACR(%struct.cmdif* %32, i16 zeroext %33, i16 zeroext %34)
  %36 = load %struct.cmdif*, %struct.cmdif** %8, align 8
  %37 = load i16, i16* %5, align 2
  %38 = call i32 @SEND_RACR(%struct.cmdif* %36, i16 zeroext %37, %union.cmdret* %9)
  br label %39

39:                                               ; preds = %31
  %40 = bitcast %union.cmdret* %9 to i16**
  %41 = load i16*, i16** %40, align 8
  %42 = getelementptr inbounds i16, i16* %41, i64 1
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = load i16, i16* %6, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @MAX_WRITE_RETRY, align 4
  %52 = icmp slt i32 %49, %51
  br label %53

53:                                               ; preds = %48, %39
  %54 = phi i1 [ false, %39 ], [ %52, %48 ]
  br i1 %54, label %31, label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @MAX_WRITE_RETRY, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %24, %59, %55
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @snd_BUG_ON(i32) #2

declare dso_local i32 @snd_printdd(i8*, ...) #2

declare dso_local i32 @SEND_SACR(%struct.cmdif*, i16 zeroext, i16 zeroext) #2

declare dso_local i32 @SEND_RACR(%struct.cmdif*, i16 zeroext, %union.cmdret*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
