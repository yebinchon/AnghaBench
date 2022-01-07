; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_fd_read.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_fd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i64, %struct.p9_trans_fd* }
%struct.p9_trans_fd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@Disconnected = common dso_local global i64 0, align 8
@EREMOTEIO = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"blocking read ...\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, i8*, i32)* @p9_fd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_fd_read(%struct.p9_client* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.p9_trans_fd*, align 8
  %10 = alloca i32, align 4
  store %struct.p9_client* %0, %struct.p9_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.p9_trans_fd* null, %struct.p9_trans_fd** %9, align 8
  %11 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %12 = icmp ne %struct.p9_client* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %15 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @Disconnected, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %21 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %20, i32 0, i32 1
  %22 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %21, align 8
  store %struct.p9_trans_fd* %22, %struct.p9_trans_fd** %9, align 8
  br label %23

23:                                               ; preds = %19, %13, %3
  %24 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %9, align 8
  %25 = icmp ne %struct.p9_trans_fd* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @EREMOTEIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %71

29:                                               ; preds = %23
  %30 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %9, align 8
  %31 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @O_NONBLOCK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %40 = call i32 @p9_debug(i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %29
  %42 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %9, align 8
  %43 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %9, align 8
  %48 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @kernel_read(%struct.TYPE_2__* %49, i8* %50, i32 %51, i32* %10)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %41
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @ERESTARTSYS, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @EAGAIN, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i64, i64* @Disconnected, align 8
  %67 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %68 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %60, %55, %41
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %26
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @p9_debug(i32, i8*) #1

declare dso_local i32 @kernel_read(%struct.TYPE_2__*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
