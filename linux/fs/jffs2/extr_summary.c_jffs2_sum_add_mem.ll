; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_summary.c_jffs2_sum_add_mem.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_summary.c_jffs2_sum_add_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_summary = type { i32, i32, %union.jffs2_sum_mem*, %union.jffs2_sum_mem* }
%union.jffs2_sum_mem = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %union.jffs2_sum_mem* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@JFFS2_SUMMARY_INODE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"inode (%u) added to summary\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"dirent (%u) added to summary\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"UNKNOWN node type %u\0A\00", align 1
@JFFS2_SUMMARY_XATTR_SIZE = common dso_local global i32 0, align 4
@JFFS2_SUMMARY_XREF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_summary*, %union.jffs2_sum_mem*)* @jffs2_sum_add_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_sum_add_mem(%struct.jffs2_summary* %0, %union.jffs2_sum_mem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jffs2_summary*, align 8
  %5 = alloca %union.jffs2_sum_mem*, align 8
  store %struct.jffs2_summary* %0, %struct.jffs2_summary** %4, align 8
  store %union.jffs2_sum_mem* %1, %union.jffs2_sum_mem** %5, align 8
  %6 = load %struct.jffs2_summary*, %struct.jffs2_summary** %4, align 8
  %7 = getelementptr inbounds %struct.jffs2_summary, %struct.jffs2_summary* %6, i32 0, i32 3
  %8 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %7, align 8
  %9 = icmp ne %union.jffs2_sum_mem* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %5, align 8
  %12 = load %struct.jffs2_summary*, %struct.jffs2_summary** %4, align 8
  %13 = getelementptr inbounds %struct.jffs2_summary, %struct.jffs2_summary* %12, i32 0, i32 3
  store %union.jffs2_sum_mem* %11, %union.jffs2_sum_mem** %13, align 8
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.jffs2_summary*, %struct.jffs2_summary** %4, align 8
  %16 = getelementptr inbounds %struct.jffs2_summary, %struct.jffs2_summary* %15, i32 0, i32 2
  %17 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %16, align 8
  %18 = icmp ne %union.jffs2_sum_mem* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %5, align 8
  %21 = load %struct.jffs2_summary*, %struct.jffs2_summary** %4, align 8
  %22 = getelementptr inbounds %struct.jffs2_summary, %struct.jffs2_summary* %21, i32 0, i32 2
  %23 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %22, align 8
  %24 = bitcast %union.jffs2_sum_mem* %23 to %struct.TYPE_8__*
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store %union.jffs2_sum_mem* %20, %union.jffs2_sum_mem** %25, align 8
  br label %26

26:                                               ; preds = %19, %14
  %27 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %5, align 8
  %28 = load %struct.jffs2_summary*, %struct.jffs2_summary** %4, align 8
  %29 = getelementptr inbounds %struct.jffs2_summary, %struct.jffs2_summary* %28, i32 0, i32 2
  store %union.jffs2_sum_mem* %27, %union.jffs2_sum_mem** %29, align 8
  %30 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %5, align 8
  %31 = bitcast %union.jffs2_sum_mem* %30 to %struct.TYPE_8__*
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @je16_to_cpu(i32 %33)
  switch i32 %34, label %71 [
    i32 130, label %35
    i32 131, label %51
  ]

35:                                               ; preds = %26
  %36 = load i32, i32* @JFFS2_SUMMARY_INODE_SIZE, align 4
  %37 = load %struct.jffs2_summary*, %struct.jffs2_summary** %4, align 8
  %38 = getelementptr inbounds %struct.jffs2_summary, %struct.jffs2_summary* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.jffs2_summary*, %struct.jffs2_summary** %4, align 8
  %42 = getelementptr inbounds %struct.jffs2_summary, %struct.jffs2_summary* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %5, align 8
  %46 = bitcast %union.jffs2_sum_mem* %45 to %struct.TYPE_5__*
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @je32_to_cpu(i32 %48)
  %50 = call i32 (i8*, ...) @dbg_summary(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %78

51:                                               ; preds = %26
  %52 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %5, align 8
  %53 = bitcast %union.jffs2_sum_mem* %52 to %struct.TYPE_6__*
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @JFFS2_SUMMARY_DIRENT_SIZE(i32 %55)
  %57 = load %struct.jffs2_summary*, %struct.jffs2_summary** %4, align 8
  %58 = getelementptr inbounds %struct.jffs2_summary, %struct.jffs2_summary* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.jffs2_summary*, %struct.jffs2_summary** %4, align 8
  %62 = getelementptr inbounds %struct.jffs2_summary, %struct.jffs2_summary* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %5, align 8
  %66 = bitcast %union.jffs2_sum_mem* %65 to %struct.TYPE_6__*
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @je32_to_cpu(i32 %68)
  %70 = call i32 (i8*, ...) @dbg_summary(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %78

71:                                               ; preds = %26
  %72 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %5, align 8
  %73 = bitcast %union.jffs2_sum_mem* %72 to %struct.TYPE_8__*
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @je16_to_cpu(i32 %75)
  %77 = call i32 @JFFS2_WARNING(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  store i32 1, i32* %3, align 4
  br label %79

78:                                               ; preds = %51, %35
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %71
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @je16_to_cpu(i32) #1

declare dso_local i32 @dbg_summary(i8*, ...) #1

declare dso_local i32 @je32_to_cpu(i32) #1

declare dso_local i32 @JFFS2_SUMMARY_DIRENT_SIZE(i32) #1

declare dso_local i32 @JFFS2_WARNING(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
