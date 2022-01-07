; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_loadfirmware.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_loadfirmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdif = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"load firmware return %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdif*, i8*, i32)* @loadfirmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadfirmware(%struct.cmdif* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.cmdif*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cmdif* %0, %struct.cmdif** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %79, %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ugt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %12, align 4
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i1 [ false, %13 ], [ %18, %16 ]
  br i1 %20, label %21, label %80

21:                                               ; preds = %19
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 58
  br i1 %27, label %28, label %79

28:                                               ; preds = %21
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 7
  %31 = call i32 @atoh(i8* %30, i32 2)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  switch i32 %32, label %63 [
    i32 132, label %33
    i32 128, label %40
    i32 129, label %45
    i32 130, label %50
    i32 131, label %62
  ]

33:                                               ; preds = %28
  %34 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @senddata(%struct.cmdif* %34, i8* %35, i32 %38)
  store i32 %39, i32* %12, align 4
  br label %64

40:                                               ; preds = %28
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 9
  %43 = call i32 @atoh(i8* %42, i32 4)
  %44 = shl i32 %43, 4
  store i32 %44, i32* %9, align 4
  br label %64

45:                                               ; preds = %28
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 9
  %48 = call i32 @atoh(i8* %47, i32 4)
  %49 = shl i32 %48, 16
  store i32 %49, i32* %8, align 4
  br label %64

50:                                               ; preds = %28
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 9
  %53 = call i32 @atoh(i8* %52, i32 8)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @SEND_GOTO(%struct.cmdif* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* @EACCES, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %58, %50
  br label %64

62:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %64

63:                                               ; preds = %28
  br label %64

64:                                               ; preds = %63, %62, %61, %45, %40, %33
  br label %65

65:                                               ; preds = %77, %64
  %66 = load i32, i32* %6, align 4
  %67 = icmp ugt i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %69, -1
  store i32 %70, i32* %6, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %5, align 8
  %73 = load i8, i8* %71, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 10
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %78

77:                                               ; preds = %68
  br label %65

78:                                               ; preds = %76, %65
  br label %79

79:                                               ; preds = %78, %21
  br label %13

80:                                               ; preds = %19
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @snd_printdd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %12, align 4
  ret i32 %83
}

declare dso_local i32 @atoh(i8*, i32) #1

declare dso_local i32 @senddata(%struct.cmdif*, i8*, i32) #1

declare dso_local i32 @SEND_GOTO(%struct.cmdif*, i32) #1

declare dso_local i32 @snd_printdd(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
