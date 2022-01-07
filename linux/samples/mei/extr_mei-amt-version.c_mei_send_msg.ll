; ModuleID = '/home/carl/AnghaBench/linux/samples/mei/extr_mei-amt-version.c_mei_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mei/extr_mei-amt-version.c_mei_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei = type { i64 }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"call write length = %zd\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"write failed with status %zd %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"write success\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"write failed on timeout with status\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"write failed on select with status %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei*, i8*, i32, i64)* @mei_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_send_msg(%struct.mei* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.mei*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mei* %0, %struct.mei** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = udiv i64 %13, 1000
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load i64, i64* %8, align 8
  %17 = urem i64 %16, 1000
  %18 = mul i64 %17, 1000000
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 %18, i64* %19, align 8
  %20 = load %struct.mei*, %struct.mei** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (%struct.mei*, i8*, ...) @mei_msg(%struct.mei* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.mei*, %struct.mei** %5, align 8
  %24 = getelementptr inbounds %struct.mei, %struct.mei* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @write(i64 %25, i8* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %4
  %32 = load i32, i32* @errno, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.mei*, %struct.mei** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 (%struct.mei*, i8*, ...) @mei_err(%struct.mei* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %37)
  br label %73

39:                                               ; preds = %4
  %40 = call i32 @FD_ZERO(i32* %12)
  %41 = load %struct.mei*, %struct.mei** %5, align 8
  %42 = getelementptr inbounds %struct.mei, %struct.mei* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @FD_SET(i64 %43, i32* %12)
  %45 = load %struct.mei*, %struct.mei** %5, align 8
  %46 = getelementptr inbounds %struct.mei, %struct.mei* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i32 @select(i64 %48, i32* %12, i32* null, i32* null, %struct.timeval* %9)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %39
  %53 = load %struct.mei*, %struct.mei** %5, align 8
  %54 = getelementptr inbounds %struct.mei, %struct.mei* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @FD_ISSET(i64 %55, i32* %12)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.mei*, %struct.mei** %5, align 8
  %60 = call i32 (%struct.mei*, i8*, ...) @mei_msg(%struct.mei* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %71

61:                                               ; preds = %52, %39
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.mei*, %struct.mei** %5, align 8
  %66 = call i32 (%struct.mei*, i8*, ...) @mei_err(%struct.mei* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %73

67:                                               ; preds = %61
  %68 = load %struct.mei*, %struct.mei** %5, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 (%struct.mei*, i8*, ...) @mei_err(%struct.mei* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %73

71:                                               ; preds = %58
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %71, %67, %64, %31
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.mei*, %struct.mei** %5, align 8
  %78 = call i32 @mei_deinit(%struct.mei* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %11, align 4
  ret i32 %80
}

declare dso_local i32 @mei_msg(%struct.mei*, i8*, ...) #1

declare dso_local i32 @write(i64, i8*, i32) #1

declare dso_local i32 @mei_err(%struct.mei*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @mei_deinit(%struct.mei*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
