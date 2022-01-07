; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_setsampleformat.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_setsampleformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdif = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"setsampleformat mixer: %d id: %d channels: %d format: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"setsampleformat failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdif*, i8, i8, i8, i32)* @setsampleformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setsampleformat(%struct.cmdif* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmdif*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store %struct.cmdif* %0, %struct.cmdif** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store i32 %4, i32* %11, align 4
  %16 = load i8, i8* %8, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* %9, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %10, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, i32* %11, align 4
  %23 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19, i32 %21, i32 %22)
  %24 = load i8, i8* %10, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %13, align 1
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @snd_pcm_format_width(i32 %29)
  %31 = icmp eq i32 %30, 8
  %32 = zext i1 %31 to i32
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %12, align 1
  %34 = load i32, i32* %11, align 4
  %35 = call i64 @snd_pcm_format_unsigned(i32 %34)
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %14, align 1
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @snd_pcm_format_big_endian(i32 %39)
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %15, align 1
  %44 = load %struct.cmdif*, %struct.cmdif** %7, align 8
  %45 = load i8, i8* %8, align 1
  %46 = load i8, i8* %12, align 1
  %47 = load i8, i8* %13, align 1
  %48 = load i8, i8* %15, align 1
  %49 = load i8, i8* %14, align 1
  %50 = load i8, i8* %9, align 1
  %51 = call i64 @SEND_SETF(%struct.cmdif* %44, i8 zeroext %45, i8 zeroext %46, i8 zeroext %47, i8 zeroext %48, i8 zeroext %49, i8 zeroext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %5
  %54 = load %struct.cmdif*, %struct.cmdif** %7, align 8
  %55 = load i8, i8* %8, align 1
  %56 = load i8, i8* %12, align 1
  %57 = load i8, i8* %13, align 1
  %58 = load i8, i8* %15, align 1
  %59 = load i8, i8* %14, align 1
  %60 = load i8, i8* %9, align 1
  %61 = call i64 @SEND_SETF(%struct.cmdif* %54, i8 zeroext %55, i8 zeroext %56, i8 zeroext %57, i8 zeroext %58, i8 zeroext %59, i8 zeroext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %68

67:                                               ; preds = %53, %5
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %63
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @snd_printdd(i8*, ...) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i64 @snd_pcm_format_unsigned(i32) #1

declare dso_local i64 @snd_pcm_format_big_endian(i32) #1

declare dso_local i64 @SEND_SETF(%struct.cmdif*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
