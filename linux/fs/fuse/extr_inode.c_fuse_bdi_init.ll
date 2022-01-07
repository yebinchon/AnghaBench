; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_bdi_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_bdi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.fuse_conn = type { i32 }
%struct.super_block = type { %struct.TYPE_4__*, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-fuseblk\00", align 1
@noop_backing_dev_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%u:%u%s\00", align 1
@VM_READAHEAD_PAGES = common dso_local global i32 0, align 4
@BDI_CAP_NO_ACCT_WB = common dso_local global i32 0, align 4
@BDI_CAP_STRICTLIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_conn*, %struct.super_block*)* @fuse_bdi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_bdi_init(%struct.fuse_conn* %0, %struct.super_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fuse_conn*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %4, align 8
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = load %struct.super_block*, %struct.super_block** %5, align 8
  %9 = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @bdi_put(%struct.TYPE_4__* %15)
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i32 0, i32 0
  store %struct.TYPE_4__* @noop_backing_dev_info, %struct.TYPE_4__** %18, align 8
  br label %19

19:                                               ; preds = %12, %2
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %22 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MAJOR(i32 %23)
  %25 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %26 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @MINOR(i32 %27)
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @super_setup_bdi_name(%struct.super_block* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %28, i8* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %52

35:                                               ; preds = %19
  %36 = load i32, i32* @VM_READAHEAD_PAGES, align 4
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @BDI_CAP_NO_ACCT_WB, align 4
  %42 = load i32, i32* @BDI_CAP_STRICTLIMIT, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.super_block*, %struct.super_block** %5, align 8
  %45 = getelementptr inbounds %struct.super_block, %struct.super_block* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = call i32 @bdi_set_max_ratio(%struct.TYPE_4__* %50, i32 1)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %35, %33
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @bdi_put(%struct.TYPE_4__*) #1

declare dso_local i32 @super_setup_bdi_name(%struct.super_block*, i8*, i32, i32, i8*) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @bdi_set_max_ratio(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
