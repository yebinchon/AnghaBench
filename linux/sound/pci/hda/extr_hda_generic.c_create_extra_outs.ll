; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_create_extra_outs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_create_extra_outs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Bass Speaker\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@channel_name = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32*, i8*)* @create_extra_outs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_extra_outs(%struct.hda_codec* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %71, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %74

21:                                               ; preds = %17
  %22 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %52

36:                                               ; preds = %31, %28, %21
  %37 = load i32, i32* %7, align 4
  %38 = icmp sge i32 %37, 3
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = trunc i64 %23 to i32
  %41 = load i8*, i8** %9, align 8
  %42 = load i8**, i8*** @channel_name, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @snprintf(i8* %25, i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %41, i8* %46)
  store i8* %25, i8** %11, align 8
  br label %51

48:                                               ; preds = %36
  %49 = load i8*, i8** %9, align 8
  store i8* %49, i8** %11, align 8
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %48, %39
  br label %52

52:                                               ; preds = %51, %35
  %53 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @create_extra_out(%struct.hda_codec* %53, i32 %58, i8* %59, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %67

66:                                               ; preds = %52
  store i32 0, i32* %16, align 4
  br label %67

67:                                               ; preds = %66, %64
  %68 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %16, align 4
  switch i32 %69, label %77 [
    i32 0, label %70
    i32 1, label %75
  ]

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %17

74:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %67
  %76 = load i32, i32* %5, align 4
  ret i32 %76

77:                                               ; preds = %67
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @create_extra_out(%struct.hda_codec*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
