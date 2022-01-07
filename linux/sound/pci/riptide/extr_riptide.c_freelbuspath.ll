; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_freelbuspath.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_freelbuspath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdif = type { i32 }

@SPLIT_PATH = common dso_local global i8 0, align 1
@E2SINK_MAX = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [22 x i8] c"free path 0x%x->0x%x\0A\00", align 1
@lbusin2out = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdif*, i8, i8*)* @freelbuspath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freelbuspath(%struct.cmdif* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca %struct.cmdif*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store %struct.cmdif* %0, %struct.cmdif** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  br label %9

9:                                                ; preds = %70, %3
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 255
  br i1 %13, label %14, label %71

14:                                               ; preds = %9
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @SPLIT_PATH, align 1
  %19 = zext i8 %18 to i32
  %20 = xor i32 %19, -1
  %21 = and i32 %17, %20
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %7, align 1
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @E2SINK_MAX, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %14
  %29 = load i8, i8* %5, align 1
  %30 = load i8, i8* %7, align 1
  %31 = call i32 @snd_printdd(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8 zeroext %29, i8 zeroext %30)
  %32 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %33 = load i8, i8* %5, align 1
  %34 = load i8, i8* %7, align 1
  %35 = call i32 @SEND_PCLR(%struct.cmdif* %32, i8 zeroext %33, i8 zeroext %34)
  %36 = load i8**, i8*** @lbusin2out, align 8
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %5, align 1
  br label %43

43:                                               ; preds = %28, %14
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  %46 = load i8, i8* %44, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @SPLIT_PATH, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %43
  %53 = load i8*, i8** %6, align 8
  store i8* %53, i8** %8, align 8
  br label %54

54:                                               ; preds = %59, %52
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %57, 255
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %8, align 8
  br label %54

62:                                               ; preds = %54
  %63 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %64 = load i8, i8* %5, align 1
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, 1
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %8, align 8
  call void @freelbuspath(%struct.cmdif* %63, i8 zeroext %67, i8* %69)
  br label %70

70:                                               ; preds = %62, %43
  br label %9

71:                                               ; preds = %9
  ret void
}

declare dso_local i32 @snd_printdd(i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @SEND_PCLR(%struct.cmdif*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
