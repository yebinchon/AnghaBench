; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett.c_scarlett_generate_name.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett.c_scarlett_generate_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCARLETT_OFFSET_MIX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"Mix %c\00", align 1
@SCARLETT_OFFSET_ADAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"ADAT %d\00", align 1
@SCARLETT_OFFSET_SPDIF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"SPDIF %d\00", align 1
@SCARLETT_OFFSET_ANALOG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"Analog %d\00", align 1
@SCARLETT_OFFSET_PCM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"PCM %d\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32*)* @scarlett_generate_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scarlett_generate_name(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** %6, align 8
  %9 = load i64, i64* @SCARLETT_OFFSET_MIX, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %7, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* @SCARLETT_OFFSET_MIX, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %15, %19
  %21 = sub nsw i32 %20, 1
  %22 = add nsw i32 65, %21
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %95

24:                                               ; preds = %3
  %25 = load i32, i32* %4, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* @SCARLETT_OFFSET_ADAT, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %25, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* @SCARLETT_OFFSET_ADAT, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %33, %37
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %94

40:                                               ; preds = %24
  %41 = load i32, i32* %4, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* @SCARLETT_OFFSET_SPDIF, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %41, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* @SCARLETT_OFFSET_SPDIF, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %49, %53
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %93

56:                                               ; preds = %40
  %57 = load i32, i32* %4, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i64, i64* @SCARLETT_OFFSET_ANALOG, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %57, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i64, i64* @SCARLETT_OFFSET_ANALOG, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %65, %69
  %71 = call i32 (i8*, i8*, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %92

72:                                               ; preds = %56
  %73 = load i32, i32* %4, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = load i64, i64* @SCARLETT_OFFSET_PCM, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %73, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = load i64, i64* @SCARLETT_OFFSET_PCM, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %81, %85
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %91

88:                                               ; preds = %72
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 (i8*, i8*, ...) @sprintf(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %79
  br label %92

92:                                               ; preds = %91, %63
  br label %93

93:                                               ; preds = %92, %47
  br label %94

94:                                               ; preds = %93, %31
  br label %95

95:                                               ; preds = %94, %13
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
