; ModuleID = '/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_open_backend.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_open_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: can't open: %s\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: can't map: %s %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mic_info*)* @open_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_backend(%struct.mic_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mic_info*, align 8
  store %struct.mic_info* %0, %struct.mic_info** %3, align 8
  %4 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %5 = call i32 @set_backend_file(%struct.mic_info* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %84

8:                                                ; preds = %1
  %9 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %10 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = call i64 @open(i32 %12, i32 %13)
  %15 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %16 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %19 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %8
  %24 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %25 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %28 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, i32, i32, ...) @mpsslog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30)
  br label %78

32:                                               ; preds = %8
  %33 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %34 = call i32 @set_backend_size(%struct.mic_info* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %72

37:                                               ; preds = %32
  %38 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %39 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PROT_READ, align 4
  %43 = load i32, i32* @PROT_WRITE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MAP_SHARED, align 4
  %46 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %47 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @mmap(i32* null, i32 %41, i32 %44, i32 %45, i64 %49, i64 0)
  %51 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %52 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  %54 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %55 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MAP_FAILED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %37
  %61 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %62 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %65 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @errno, align 4
  %69 = call i32 @strerror(i32 %68)
  %70 = call i32 (i8*, i32, i32, ...) @mpsslog(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %67, i32 %69)
  br label %72

71:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %85

72:                                               ; preds = %60, %36
  %73 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %74 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @close(i64 %76)
  br label %78

78:                                               ; preds = %72, %23
  %79 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %80 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @free(i32 %82)
  br label %84

84:                                               ; preds = %78, %7
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %71
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @set_backend_file(%struct.mic_info*) #1

declare dso_local i64 @open(i32, i32) #1

declare dso_local i32 @mpsslog(i8*, i32, i32, ...) #1

declare dso_local i32 @set_backend_size(%struct.mic_info*) #1

declare dso_local i64 @mmap(i32*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
