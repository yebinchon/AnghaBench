; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_parse_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fcall = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"dbw\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"<<< size=%d type: %d tag: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_parse_header(%struct.p9_fcall* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.p9_fcall*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.p9_fcall* %0, %struct.p9_fcall** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %17 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %20 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %22 = call i32 @p9pdu_readf(%struct.p9_fcall* %21, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %13, i32* %11, i32* %12)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %74

26:                                               ; preds = %5
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %11, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %13, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %46 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 7
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %44
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %15, align 4
  br label %74

56:                                               ; preds = %50
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %59 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %62 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @P9_DEBUG_9P, align 4
  %64 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %65 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %68 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %71 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @p9_debug(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %56, %53, %25
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %80 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %15, align 4
  ret i32 %82
}

declare dso_local i32 @p9pdu_readf(%struct.p9_fcall*, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @p9_debug(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
