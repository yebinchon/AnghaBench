; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_getlk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_getlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.fuse_lk_out* }
%struct.fuse_lk_out = type { i32 }
%struct.file = type { i32 }
%struct.file_lock = type { i32 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_lk_in = type { i32 }

@args = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@FUSE_GETLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.file_lock*)* @fuse_getlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_getlk(%struct.file* %0, %struct.file_lock* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca %struct.fuse_lk_in, align 4
  %8 = alloca %struct.fuse_lk_out, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.file_lock* %1, %struct.file_lock** %4, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = call %struct.inode* @file_inode(%struct.file* %10)
  store %struct.inode* %11, %struct.inode** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %12)
  store %struct.fuse_conn* %13, %struct.fuse_conn** %6, align 8
  %14 = load i32, i32* getelementptr inbounds ({ i32, %struct.TYPE_6__* }, { i32, %struct.TYPE_6__* }* bitcast (%struct.TYPE_7__* @args to { i32, %struct.TYPE_6__* }*), i32 0, i32 0), align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds ({ i32, %struct.TYPE_6__* }, { i32, %struct.TYPE_6__* }* bitcast (%struct.TYPE_7__* @args to { i32, %struct.TYPE_6__* }*), i32 0, i32 1), align 8
  %16 = call i32 @FUSE_ARGS(i32 %14, %struct.TYPE_6__* %15)
  %17 = load %struct.file*, %struct.file** %3, align 8
  %18 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %19 = load i32, i32* @FUSE_GETLK, align 4
  %20 = call i32 @fuse_lk_fill(%struct.TYPE_7__* @args, %struct.file* %17, %struct.file_lock* %18, i32 %19, i32 0, i32 0, %struct.fuse_lk_in* %7)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @args, i32 0, i32 0), align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @args, i32 0, i32 1), align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 4, i32* %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @args, i32 0, i32 1), align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store %struct.fuse_lk_out* %8, %struct.fuse_lk_out** %26, align 8
  %27 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %28 = call i32 @fuse_simple_request(%struct.fuse_conn* %27, %struct.TYPE_7__* @args)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %2
  %32 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %33 = getelementptr inbounds %struct.fuse_lk_out, %struct.fuse_lk_out* %8, i32 0, i32 0
  %34 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %35 = call i32 @convert_fuse_file_lock(%struct.fuse_conn* %32, i32* %33, %struct.file_lock* %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %31, %2
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @FUSE_ARGS(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @fuse_lk_fill(%struct.TYPE_7__*, %struct.file*, %struct.file_lock*, i32, i32, i32, %struct.fuse_lk_in*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_7__*) #1

declare dso_local i32 @convert_fuse_file_lock(%struct.fuse_conn*, i32*, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
