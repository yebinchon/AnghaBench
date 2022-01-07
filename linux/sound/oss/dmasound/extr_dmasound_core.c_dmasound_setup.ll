; ModuleID = '/home/carl/AnghaBench/linux/sound/oss/dmasound/extr_dmasound_core.c_dmasound_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/oss/dmasound/extr_dmasound_core.c_dmasound_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_CATCH_RADIUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"dmasound_setup: invalid catch radius, using default = %d\0A\00", align 1
@catchRadius = common dso_local global i32 0, align 4
@MIN_BUFFERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"dmasound_setup: invalid number of buffers, using default = %d\0A\00", align 1
@numWriteBufs = common dso_local global i32 0, align 4
@MIN_BUFSIZE = common dso_local global i32 0, align 4
@MAX_BUFSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"dmasound_setup: invalid write buffer size, using default = %d\0A\00", align 1
@writeBufSize = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"dmasound_setup: invalid number of arguments\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dmasound_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmasound_setup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [6 x i32], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %8 = call i32 @ARRAY_SIZE(i32* %7)
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %10 = call i8* @get_options(i8* %6, i32 %8, i32* %9)
  store i8* %10, i8** %3, align 8
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %12 = load i32, i32* %11, align 16
  switch i32 %12, label %63 [
    i32 3, label %13
    i32 2, label %29
    i32 1, label %41
    i32 0, label %62
  ]

13:                                               ; preds = %1
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MAX_CATCH_RADIUS, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %13
  %23 = load i32, i32* @catchRadius, align 4
  %24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %28

25:                                               ; preds = %17
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 3
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @catchRadius, align 4
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %1, %28
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MIN_BUFFERS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @numWriteBufs, align 4
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %40

37:                                               ; preds = %29
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* @numWriteBufs, align 4
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %1, %40
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %5, align 4
  %44 = icmp slt i32 %43, 256
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = shl i32 %46, 10
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @MIN_BUFSIZE, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @MAX_BUFSIZE, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52, %48
  %57 = load i32, i32* @writeBufSize, align 4
  %58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* @writeBufSize, align 4
  br label %61

61:                                               ; preds = %59, %56
  br label %62

62:                                               ; preds = %1, %61
  br label %65

63:                                               ; preds = %1
  %64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %66

65:                                               ; preds = %62
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %63
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i8* @get_options(i8*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
