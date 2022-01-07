; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_sglist_add_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_sglist_add_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.audiopipe = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sg_entry = type { i8*, i8* }

@MAX_SGLIST_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SGlist: too many fragments\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, %struct.audiopipe*, i64, i64)* @sglist_add_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sglist_add_mapping(%struct.echoaudio* %0, %struct.audiopipe* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.echoaudio*, align 8
  %7 = alloca %struct.audiopipe*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sg_entry*, align 8
  store %struct.echoaudio* %0, %struct.echoaudio** %6, align 8
  store %struct.audiopipe* %1, %struct.audiopipe** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.audiopipe*, %struct.audiopipe** %7, align 8
  %13 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load %struct.audiopipe*, %struct.audiopipe** %7, align 8
  %16 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.sg_entry*
  store %struct.sg_entry* %19, %struct.sg_entry** %11, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @MAX_SGLIST_ENTRIES, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  %26 = call i8* @cpu_to_le32(i64 %25)
  %27 = load %struct.sg_entry*, %struct.sg_entry** %11, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %27, i64 %29
  %31 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %30, i32 0, i32 1
  store i8* %26, i8** %31, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i8* @cpu_to_le32(i64 %32)
  %34 = load %struct.sg_entry*, %struct.sg_entry** %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %34, i64 %36
  %38 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %37, i32 0, i32 0
  store i8* %33, i8** %38, align 8
  %39 = load %struct.audiopipe*, %struct.audiopipe** %7, align 8
  %40 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  br label %52

43:                                               ; preds = %4
  %44 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %45 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
