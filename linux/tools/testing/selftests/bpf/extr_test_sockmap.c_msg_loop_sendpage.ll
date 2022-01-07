; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_msg_loop_sendpage.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_msg_loop_sendpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_stats = type { i32, i32, i32 }
%struct.sockmap_options = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c".sendpage_tst.tmp\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"send loop error:\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"sendpage loop error expected: %i\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.msg_stats*, %struct.sockmap_options*)* @msg_loop_sendpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_loop_sendpage(i32 %0, i32 %1, i32 %2, %struct.msg_stats* %3, %struct.sockmap_options* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.msg_stats*, align 8
  %11 = alloca %struct.sockmap_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.msg_stats* %3, %struct.msg_stats** %10, align 8
  store %struct.sockmap_options* %4, %struct.sockmap_options** %11, align 8
  %18 = load %struct.sockmap_options*, %struct.sockmap_options** %11, align 8
  %19 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  store i8 0, i8* %13, align 1
  %21 = call i32* @fopen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %31, %5
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %24, %25
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @fwrite(i8* %13, i32 1, i32 1, i32* %29)
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %15, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %15, align 4
  %34 = load i8, i8* %13, align 1
  %35 = add i8 %34, 1
  store i8 %35, i8* %13, align 1
  br label %22

36:                                               ; preds = %22
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @fflush(i32* %37)
  %39 = load i32*, i32** %14, align 8
  %40 = load i32, i32* @SEEK_SET, align 4
  %41 = call i32 @fseek(i32* %39, i32 0, i32 %40)
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @fclose(i32* %42)
  %44 = load i32, i32* @O_RDONLY, align 4
  %45 = call i32 @open(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %47 = load %struct.msg_stats*, %struct.msg_stats** %10, align 8
  %48 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %47, i32 0, i32 2
  %49 = call i32 @clock_gettime(i32 %46, i32* %48)
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %93, %36
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %96

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @sendfile(i32 %55, i32 %56, i32* null, i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %17, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @close(i32 %66)
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %6, align 4
  br label %103

69:                                               ; preds = %61, %54
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load i32, i32* %17, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @close(i32 %78)
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %103

82:                                               ; preds = %72, %69
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %17, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32, i32* %17, align 4
  %88 = load %struct.msg_stats*, %struct.msg_stats** %10, align 8
  %89 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %83
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %50

96:                                               ; preds = %50
  %97 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %98 = load %struct.msg_stats*, %struct.msg_stats** %10, align 8
  %99 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %98, i32 0, i32 1
  %100 = call i32 @clock_gettime(i32 %97, i32* %99)
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @close(i32 %101)
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %96, %75, %64
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @clock_gettime(i32, i32*) #1

declare dso_local i32 @sendfile(i32, i32, i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
