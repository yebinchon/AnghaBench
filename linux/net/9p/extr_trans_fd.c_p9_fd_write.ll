; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_fd_write.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_p9_fd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i64, %struct.p9_trans_fd* }
%struct.p9_trans_fd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@Disconnected = common dso_local global i64 0, align 8
@EREMOTEIO = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"blocking write ...\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, i8*, i32)* @p9_fd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_fd_write(%struct.p9_client* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.p9_trans_fd*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.p9_trans_fd* null, %struct.p9_trans_fd** %9, align 8
  %10 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %11 = icmp ne %struct.p9_client* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %14 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @Disconnected, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %20 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %19, i32 0, i32 1
  %21 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %20, align 8
  store %struct.p9_trans_fd* %21, %struct.p9_trans_fd** %9, align 8
  br label %22

22:                                               ; preds = %18, %12, %3
  %23 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %9, align 8
  %24 = icmp ne %struct.p9_trans_fd* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @EREMOTEIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %69

28:                                               ; preds = %22
  %29 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %9, align 8
  %30 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @O_NONBLOCK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %39 = call i32 @p9_debug(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %28
  %41 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %9, align 8
  %42 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %9, align 8
  %47 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = call i32 @kernel_write(%struct.TYPE_2__* %43, i8* %44, i32 %45, i32* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %40
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ERESTARTSYS, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i64, i64* @Disconnected, align 8
  %65 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %66 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %58, %53, %40
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %25
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @p9_debug(i32, i8*) #1

declare dso_local i32 @kernel_write(%struct.TYPE_2__*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
