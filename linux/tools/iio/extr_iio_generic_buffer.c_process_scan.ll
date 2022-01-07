; ModuleID = '/home/carl/AnghaBench/linux/tools/iio/extr_iio_generic_buffer.c_process_scan.c'
source_filename = "/home/carl/AnghaBench/linux/tools/iio/extr_iio_generic_buffer.c_process_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_channel_info = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_scan(i8* %0, %struct.iio_channel_info* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_channel_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.iio_channel_info* %1, %struct.iio_channel_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %89, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %92

12:                                               ; preds = %8
  %13 = load %struct.iio_channel_info*, %struct.iio_channel_info** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %13, i64 %15
  %17 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %87 [
    i32 1, label %19
    i32 2, label %36
    i32 4, label %53
    i32 8, label %70
  ]

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.iio_channel_info*, %struct.iio_channel_info** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %21, i64 %23
  %25 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %20, i64 %27
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iio_channel_info*, %struct.iio_channel_info** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %31, i64 %33
  %35 = call i32 @print1byte(i32 %30, %struct.iio_channel_info* %34)
  br label %88

36:                                               ; preds = %12
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.iio_channel_info*, %struct.iio_channel_info** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %38, i64 %40
  %42 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %37, i64 %44
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iio_channel_info*, %struct.iio_channel_info** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %48, i64 %50
  %52 = call i32 @print2byte(i32 %47, %struct.iio_channel_info* %51)
  br label %88

53:                                               ; preds = %12
  %54 = load i8*, i8** %4, align 8
  %55 = load %struct.iio_channel_info*, %struct.iio_channel_info** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %55, i64 %57
  %59 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %54, i64 %61
  %63 = bitcast i8* %62 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iio_channel_info*, %struct.iio_channel_info** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %65, i64 %67
  %69 = call i32 @print4byte(i32 %64, %struct.iio_channel_info* %68)
  br label %88

70:                                               ; preds = %12
  %71 = load i8*, i8** %4, align 8
  %72 = load %struct.iio_channel_info*, %struct.iio_channel_info** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %72, i64 %74
  %76 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %71, i64 %78
  %80 = bitcast i8* %79 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.iio_channel_info*, %struct.iio_channel_info** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %82, i64 %84
  %86 = call i32 @print8byte(i32 %81, %struct.iio_channel_info* %85)
  br label %88

87:                                               ; preds = %12
  br label %88

88:                                               ; preds = %87, %70, %53, %36, %19
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %8

92:                                               ; preds = %8
  %93 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @print1byte(i32, %struct.iio_channel_info*) #1

declare dso_local i32 @print2byte(i32, %struct.iio_channel_info*) #1

declare dso_local i32 @print4byte(i32, %struct.iio_channel_info*) #1

declare dso_local i32 @print8byte(i32, %struct.iio_channel_info*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
