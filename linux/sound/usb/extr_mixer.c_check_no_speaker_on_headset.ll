; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_check_no_speaker_on_headset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_check_no_speaker_on_headset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_card = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"Headset\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"headset\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"headphone\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_kcontrol*, %struct.snd_card*)* @check_no_speaker_on_headset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_no_speaker_on_headset(%struct.snd_kcontrol* %0, %struct.snd_card* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca [5 x i8*], align 16
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_card* %1, %struct.snd_card** %4, align 8
  %8 = bitcast [5 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 40, i1 false)
  %9 = bitcast i8* %8 to [5 x i8*]*
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** %10, align 16
  %11 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8** %11, align 8
  %12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8** %12, align 16
  %13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8** %13, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %50

21:                                               ; preds = %2
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 0
  store i8** %22, i8*** %6, align 8
  br label %23

23:                                               ; preds = %37, %21
  %24 = load i8**, i8*** %6, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %29 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8**, i8*** %6, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strstr(i32 %30, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  br label %40

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36
  %38 = load i8**, i8*** %6, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %6, align 8
  br label %23

40:                                               ; preds = %35, %23
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  br label %50

44:                                               ; preds = %40
  %45 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %46 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strlcpy(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %50

50:                                               ; preds = %44, %43, %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i64 @strstr(i32, i8*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
