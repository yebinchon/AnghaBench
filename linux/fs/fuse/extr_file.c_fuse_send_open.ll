; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_send_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_send_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.fuse_open_out* }
%struct.fuse_open_out = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.fuse_open_in* }
%struct.fuse_open_in = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.file = type { i32 }

@args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_conn*, i32, %struct.file*, i32, %struct.fuse_open_out*)* @fuse_send_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_send_open(%struct.fuse_conn* %0, i32 %1, %struct.file* %2, i32 %3, %struct.fuse_open_out* %4) #0 {
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fuse_open_out*, align 8
  %11 = alloca %struct.fuse_open_in, align 4
  store %struct.fuse_conn* %0, %struct.fuse_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.file* %2, %struct.file** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.fuse_open_out* %4, %struct.fuse_open_out** %10, align 8
  %12 = call i32 @FUSE_ARGS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 @args)
  %13 = call i32 @memset(%struct.fuse_open_in* %11, i32 0, i32 4)
  %14 = load %struct.file*, %struct.file** %8, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @O_CREAT, align 4
  %18 = load i32, i32* @O_EXCL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @O_NOCTTY, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %16, %22
  %24 = getelementptr inbounds %struct.fuse_open_in, %struct.fuse_open_in* %11, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %26 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @O_TRUNC, align 4
  %31 = xor i32 %30, -1
  %32 = getelementptr inbounds %struct.fuse_open_in, %struct.fuse_open_in* %11, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %5
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 8
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 5), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 1), align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 4), align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 4, i32* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 4), align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store %struct.fuse_open_in* %11, %struct.fuse_open_in** %43, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 2), align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 3), align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 4, i32* %46, align 8
  %47 = load %struct.fuse_open_out*, %struct.fuse_open_out** %10, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 3), align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store %struct.fuse_open_out* %47, %struct.fuse_open_out** %50, align 8
  %51 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %52 = call i32 @fuse_simple_request(%struct.fuse_conn* %51, %struct.TYPE_8__* @args)
  ret i32 %52
}

declare dso_local i32 @FUSE_ARGS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @memset(%struct.fuse_open_in*, i32, i32) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
