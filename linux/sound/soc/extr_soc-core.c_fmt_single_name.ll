; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_fmt_single_name.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_fmt_single_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c".%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%x-%x\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i32*)* @fmt_single_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fmt_single_name(%struct.device* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i32, i32* @NAME_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i8* @dev_name(%struct.device* %18)
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %92

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i8* @dev_name(%struct.device* %23)
  %25 = load i32, i32* @NAME_SIZE, align 4
  %26 = call i32 @strlcpy(i8* %17, i8* %24, i32 %25)
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @strstr(i8* %17, i8* %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %62

35:                                               ; preds = %22
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = getelementptr inbounds i8, i8* %36, i64 %42
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %44)
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %61

47:                                               ; preds = %35
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strlen(i8* %57)
  %59 = getelementptr inbounds i8, i8* %52, i64 %58
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %51, %47
  br label %61

61:                                               ; preds = %60, %35
  br label %89

62:                                               ; preds = %22
  %63 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32* %10)
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %86

65:                                               ; preds = %62
  %66 = load i32, i32* @NAME_SIZE, align 4
  %67 = zext i32 %66 to i64
  %68 = call i8* @llvm.stacksave()
  store i8* %68, i8** %12, align 8
  %69 = alloca i8, i64 %67, align 16
  store i64 %67, i64* %13, align 8
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 65535
  %72 = shl i32 %71, 16
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32*, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @NAME_SIZE, align 4
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = getelementptr inbounds %struct.device, %struct.device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @snprintf(i8* %69, i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %81, i8* %17)
  %83 = load i32, i32* @NAME_SIZE, align 4
  %84 = call i32 @strlcpy(i8* %17, i8* %69, i32 %83)
  %85 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %85)
  br label %88

86:                                               ; preds = %62
  %87 = load i32*, i32** %5, align 8
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %86, %65
  br label %89

89:                                               ; preds = %88, %61
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i8* @kstrdup(i8* %17, i32 %90)
  store i8* %91, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %92

92:                                               ; preds = %89, %21
  %93 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i8*, i8** %3, align 8
  ret i8* %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @dev_name(%struct.device*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i8* @kstrdup(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
