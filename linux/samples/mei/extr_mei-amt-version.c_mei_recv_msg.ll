; ModuleID = '/home/carl/AnghaBench/linux/samples/mei/extr_mei-amt-version.c_mei_recv_msg.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mei/extr_mei-amt-version.c_mei_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"call read length = %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"read failed with status %zd %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"read succeeded with result %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mei*, i8*, i64, i64)* @mei_recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mei_recv_msg(%struct.mei* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mei*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mei* %0, %struct.mei** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.mei*, %struct.mei** %5, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @mei_msg(%struct.mei* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load %struct.mei*, %struct.mei** %5, align 8
  %14 = getelementptr inbounds %struct.mei, %struct.mei* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @read(i32 %15, i8* %16, i64 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load %struct.mei*, %struct.mei** %5, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @strerror(i32 %24)
  %26 = call i32 @mei_err(%struct.mei* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %23, i32 %25)
  %27 = load %struct.mei*, %struct.mei** %5, align 8
  %28 = call i32 @mei_deinit(%struct.mei* %27)
  br label %33

29:                                               ; preds = %4
  %30 = load %struct.mei*, %struct.mei** %5, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @mei_msg(%struct.mei* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %29, %21
  %34 = load i64, i64* %9, align 8
  ret i64 %34
}

declare dso_local i32 @mei_msg(%struct.mei*, i8*, i64) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @mei_err(%struct.mei*, i8*, i64, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @mei_deinit(%struct.mei*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
