; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_mtpav.c_snd_mtpav_set_name.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_mtpav.c_snd_mtpav_set_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtpav = type { i32 }
%struct.snd_rawmidi_substream = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"MTP direct %d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"MTP remote %d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"MTP computer\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"MTP ADAT\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"MTP broadcast\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtpav*, %struct.snd_rawmidi_substream*)* @snd_mtpav_set_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mtpav_set_name(%struct.mtpav* %0, %struct.snd_rawmidi_substream* %1) #0 {
  %3 = alloca %struct.mtpav*, align 8
  %4 = alloca %struct.snd_rawmidi_substream*, align 8
  store %struct.mtpav* %0, %struct.mtpav** %3, align 8
  store %struct.snd_rawmidi_substream* %1, %struct.snd_rawmidi_substream** %4, align 8
  %5 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %6 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %11 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %14 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %9
  %18 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %19 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %22 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %25 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = srem i32 %23, %26
  %28 = add nsw i32 %27, 1
  %29 = call i32 @sprintf(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %94

30:                                               ; preds = %9, %2
  %31 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %32 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 8
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %37 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %40 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 2
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %35
  %45 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %46 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %49 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %52 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %50, %53
  %55 = add nsw i32 %54, 1
  %56 = call i32 @sprintf(i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %93

57:                                               ; preds = %35, %30
  %58 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %59 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %62 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 2
  %65 = icmp eq i32 %60, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %68 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @strcpy(i32 %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %92

71:                                               ; preds = %57
  %72 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %73 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %76 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %77, 2
  %79 = add nsw i32 %78, 1
  %80 = icmp eq i32 %74, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %83 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @strcpy(i32 %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %91

86:                                               ; preds = %71
  %87 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %88 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @strcpy(i32 %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %91

91:                                               ; preds = %86, %81
  br label %92

92:                                               ; preds = %91, %66
  br label %93

93:                                               ; preds = %92, %44
  br label %94

94:                                               ; preds = %93, %17
  ret void
}

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
