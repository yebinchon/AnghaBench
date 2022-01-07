; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_freeze_go_xmote_bh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_freeze_go_xmote_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 (%struct.gfs2_glock*, i32)* }
%struct.TYPE_4__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.gfs2_holder = type { i32 }
%struct.gfs2_inode = type { %struct.gfs2_glock* }
%struct.gfs2_log_header_host = type { i32, i32, i64 }

@SDF_JOURNAL_LIVE = common dso_local global i32 0, align 4
@DIO_METADATA = common dso_local global i32 0, align 4
@GFS2_LOG_HEAD_UNMOUNT = common dso_local global i32 0, align 4
@SDF_WITHDRAWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_glock*, %struct.gfs2_holder*)* @freeze_go_xmote_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freeze_go_xmote_bh(%struct.gfs2_glock* %0, %struct.gfs2_holder* %1) #0 {
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca %struct.gfs2_holder*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_glock*, align 8
  %8 = alloca %struct.gfs2_log_header_host, align 8
  %9 = alloca i32, align 4
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %3, align 8
  store %struct.gfs2_holder* %1, %struct.gfs2_holder** %4, align 8
  %10 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %11 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %5, align 8
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %15 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.gfs2_inode* @GFS2_I(i32 %18)
  store %struct.gfs2_inode* %19, %struct.gfs2_inode** %6, align 8
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %21 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %20, i32 0, i32 0
  %22 = load %struct.gfs2_glock*, %struct.gfs2_glock** %21, align 8
  store %struct.gfs2_glock* %22, %struct.gfs2_glock** %7, align 8
  %23 = load i32, i32* @SDF_JOURNAL_LIVE, align 4
  %24 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %25 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %24, i32 0, i32 1
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %2
  %29 = load %struct.gfs2_glock*, %struct.gfs2_glock** %7, align 8
  %30 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (%struct.gfs2_glock*, i32)*, i32 (%struct.gfs2_glock*, i32)** %32, align 8
  %34 = load %struct.gfs2_glock*, %struct.gfs2_glock** %7, align 8
  %35 = load i32, i32* @DIO_METADATA, align 4
  %36 = call i32 %33(%struct.gfs2_glock* %34, i32 %35)
  %37 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %38 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = call i32 @gfs2_find_jhead(%struct.TYPE_6__* %39, %struct.gfs2_log_header_host* %8, i32 0)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %45 = call i32 @gfs2_consist(%struct.gfs2_sbd* %44)
  br label %46

46:                                               ; preds = %43, %28
  %47 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GFS2_LOG_HEAD_UNMOUNT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %54 = call i32 @gfs2_consist(%struct.gfs2_sbd* %53)
  br label %55

55:                                               ; preds = %52, %46
  %56 = load i32, i32* @SDF_WITHDRAWN, align 4
  %57 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %58 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %57, i32 0, i32 1
  %59 = call i64 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %8, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  %65 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %66 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %68 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %8, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @gfs2_log_pointers_init(%struct.gfs2_sbd* %67, i32 %69)
  br label %71

71:                                               ; preds = %61, %55
  br label %72

72:                                               ; preds = %71, %2
  ret i32 0
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @gfs2_find_jhead(%struct.TYPE_6__*, %struct.gfs2_log_header_host*, i32) #1

declare dso_local i32 @gfs2_consist(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_log_pointers_init(%struct.gfs2_sbd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
