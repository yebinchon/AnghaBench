; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_csp.c_snd_sb_csp_firmware_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_csp.c_snd_sb_csp_firmware_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb_csp = type { %struct.firmware**, %struct.TYPE_4__* }
%struct.firmware = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@snd_sb_csp_firmware_load.names = internal constant [5 x i8*] [i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [20 x i8] c"sb16/mulaw_main.csp\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"sb16/alaw_main.csp\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"sb16/ima_adpcm_init.csp\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"sb16/ima_adpcm_playback.csp\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"sb16/ima_adpcm_capture.csp\00", align 1
@CSP_PROGRAM_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sb_csp*, i32, i32)* @snd_sb_csp_firmware_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb_csp_firmware_load(%struct.snd_sb_csp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_sb_csp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_sb_csp* %0, %struct.snd_sb_csp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @snd_sb_csp_firmware_load.names, i64 0, i64 0))
  %11 = load i64, i64* @CSP_PROGRAM_COUNT, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUILD_BUG_ON(i32 %13)
  %15 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %16 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %15, i32 0, i32 0
  %17 = load %struct.firmware**, %struct.firmware*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.firmware*, %struct.firmware** %17, i64 %19
  %21 = load %struct.firmware*, %struct.firmware** %20, align 8
  store %struct.firmware* %21, %struct.firmware** %8, align 8
  %22 = load %struct.firmware*, %struct.firmware** %8, align 8
  %23 = icmp ne %struct.firmware* %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* @snd_sb_csp_firmware_load.names, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %30 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @request_firmware(%struct.firmware** %8, i8* %28, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %59

41:                                               ; preds = %24
  %42 = load %struct.firmware*, %struct.firmware** %8, align 8
  %43 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %44 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %43, i32 0, i32 0
  %45 = load %struct.firmware**, %struct.firmware*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.firmware*, %struct.firmware** %45, i64 %47
  store %struct.firmware* %42, %struct.firmware** %48, align 8
  br label %49

49:                                               ; preds = %41, %3
  %50 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %51 = load %struct.firmware*, %struct.firmware** %8, align 8
  %52 = getelementptr inbounds %struct.firmware, %struct.firmware* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.firmware*, %struct.firmware** %8, align 8
  %55 = getelementptr inbounds %struct.firmware, %struct.firmware* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @snd_sb_csp_load(%struct.snd_sb_csp* %50, i32 %53, i32 %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %49, %39
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @snd_sb_csp_load(%struct.snd_sb_csp*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
