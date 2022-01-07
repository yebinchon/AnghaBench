; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_file_poll.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_file_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.fuse_poll_out* }
%struct.fuse_poll_out = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.fuse_poll_in* }
%struct.fuse_poll_in = type { i32, i32, i32, i32 }
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { i32, i32, i32, i32, %struct.fuse_conn* }
%struct.fuse_conn = type { i32 }

@args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@DEFAULT_POLLMASK = common dso_local global i32 0, align 4
@FUSE_POLL_SCHEDULE_NOTIFY = common dso_local global i32 0, align 4
@FUSE_POLL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_file_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.fuse_file*, align 8
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_poll_in, align 4
  %9 = alloca %struct.fuse_poll_out, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.fuse_file*, %struct.fuse_file** %12, align 8
  store %struct.fuse_file* %13, %struct.fuse_file** %6, align 8
  %14 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %15 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %14, i32 0, i32 4
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %15, align 8
  store %struct.fuse_conn* %16, %struct.fuse_conn** %7, align 8
  %17 = getelementptr inbounds %struct.fuse_poll_in, %struct.fuse_poll_in* %8, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.fuse_poll_in, %struct.fuse_poll_in* %8, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.fuse_poll_in, %struct.fuse_poll_in* %8, i32 0, i32 2
  %20 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %21 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.fuse_poll_in, %struct.fuse_poll_in* %8, i32 0, i32 3
  %24 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %25 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 4
  %27 = call i32 @FUSE_ARGS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 @args)
  %28 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %29 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @DEFAULT_POLLMASK, align 4
  store i32 %33, i32* %3, align 4
  br label %92

34:                                               ; preds = %2
  %35 = load %struct.file*, %struct.file** %4, align 8
  %36 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %37 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %36, i32 0, i32 1
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @poll_wait(%struct.file* %35, i32* %37, i32* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @poll_requested_events(i32* %40)
  %42 = call i32 @mangle_poll(i32 %41)
  %43 = getelementptr inbounds %struct.fuse_poll_in, %struct.fuse_poll_in* %8, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %45 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %44, i32 0, i32 1
  %46 = call i64 @waitqueue_active(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %34
  %49 = load i32, i32* @FUSE_POLL_SCHEDULE_NOTIFY, align 4
  %50 = getelementptr inbounds %struct.fuse_poll_in, %struct.fuse_poll_in* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %54 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %55 = call i32 @fuse_register_polled_file(%struct.fuse_conn* %53, %struct.fuse_file* %54)
  br label %56

56:                                               ; preds = %48, %34
  %57 = load i32, i32* @FUSE_POLL, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 5), align 4
  %58 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %59 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 3), align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 16, i32* %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 3), align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store %struct.fuse_poll_in* %8, %struct.fuse_poll_in** %66, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 1), align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 2), align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 4, i32* %69, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 2), align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store %struct.fuse_poll_out* %9, %struct.fuse_poll_out** %72, align 8
  %73 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %74 = call i32 @fuse_simple_request(%struct.fuse_conn* %73, %struct.TYPE_8__* @args)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %56
  %78 = getelementptr inbounds %struct.fuse_poll_out, %struct.fuse_poll_out* %9, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @demangle_poll(i32 %79)
  store i32 %80, i32* %3, align 4
  br label %92

81:                                               ; preds = %56
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @ENOSYS, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %88 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  %89 = load i32, i32* @DEFAULT_POLLMASK, align 4
  store i32 %89, i32* %3, align 4
  br label %92

90:                                               ; preds = %81
  %91 = load i32, i32* @EPOLLERR, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %86, %77, %32
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @FUSE_ARGS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @mangle_poll(i32) #1

declare dso_local i32 @poll_requested_events(i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @fuse_register_polled_file(%struct.fuse_conn*, %struct.fuse_file*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_8__*) #1

declare dso_local i32 @demangle_poll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
