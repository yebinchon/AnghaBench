; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_codec_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_codec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cmdret = type { i16* }
%struct.snd_ac97 = type { %struct.snd_riptide* }
%struct.snd_riptide = type { %struct.cmdif* }
%struct.cmdif = type { i32 }

@CMDRET_ZERO = common dso_local global %union.cmdret zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"Read AC97 reg 0x%x got 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @snd_riptide_codec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_riptide_codec_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.snd_riptide*, align 8
  %7 = alloca %struct.cmdif*, align 8
  %8 = alloca %union.cmdret, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 0
  %11 = load %struct.snd_riptide*, %struct.snd_riptide** %10, align 8
  store %struct.snd_riptide* %11, %struct.snd_riptide** %6, align 8
  %12 = load %struct.snd_riptide*, %struct.snd_riptide** %6, align 8
  %13 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %12, i32 0, i32 0
  %14 = load %struct.cmdif*, %struct.cmdif** %13, align 8
  store %struct.cmdif* %14, %struct.cmdif** %7, align 8
  %15 = bitcast %union.cmdret* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%union.cmdret* @CMDRET_ZERO to i8*), i64 8, i1 false)
  %16 = load %struct.cmdif*, %struct.cmdif** %7, align 8
  %17 = icmp ne %struct.cmdif* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i16 0, i16* %3, align 2
  br label %43

23:                                               ; preds = %2
  %24 = load %struct.cmdif*, %struct.cmdif** %7, align 8
  %25 = load i16, i16* %5, align 2
  %26 = call i64 @SEND_RACR(%struct.cmdif* %24, i16 zeroext %25, %union.cmdret* %8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.cmdif*, %struct.cmdif** %7, align 8
  %30 = load i16, i16* %5, align 2
  %31 = call i64 @SEND_RACR(%struct.cmdif* %29, i16 zeroext %30, %union.cmdret* %8)
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i16, i16* %5, align 2
  %34 = bitcast %union.cmdret* %8 to i16**
  %35 = load i16*, i16** %34, align 8
  %36 = getelementptr inbounds i16, i16* %35, i64 1
  %37 = load i16, i16* %36, align 2
  %38 = call i32 @snd_printdd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i16 zeroext %33, i16 zeroext %37)
  %39 = bitcast %union.cmdret* %8 to i16**
  %40 = load i16*, i16** %39, align 8
  %41 = getelementptr inbounds i16, i16* %40, i64 1
  %42 = load i16, i16* %41, align 2
  store i16 %42, i16* %3, align 2
  br label %43

43:                                               ; preds = %32, %22
  %44 = load i16, i16* %3, align 2
  ret i16 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @snd_BUG_ON(i32) #2

declare dso_local i64 @SEND_RACR(%struct.cmdif*, i16 zeroext, %union.cmdret*) #2

declare dso_local i32 @snd_printdd(i8*, i16 zeroext, i16 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
