; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-sysfs.c_sysfs_int_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-sysfs.c_sysfs_int_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.kobject = type { i32 }
%struct.orangefs_attribute = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GOSSIP_SYSFS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"sysfs_int_show: id:%s:\0A\00", align 1
@ORANGEFS_KOBJ_ID = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"op_timeout_secs\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@op_timeout_secs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"slot_timeout_secs\00", align 1
@slot_timeout_secs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"cache_timeout_msecs\00", align 1
@orangefs_cache_timeout_msecs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"dcache_timeout_msecs\00", align 1
@orangefs_dcache_timeout_msecs = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"getattr_timeout_msecs\00", align 1
@orangefs_getattr_timeout_msecs = common dso_local global i32 0, align 4
@STATS_KOBJ_ID = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"reads\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@orangefs_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"writes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.orangefs_attribute*, i8*)* @sysfs_int_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysfs_int_show(%struct.kobject* %0, %struct.orangefs_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.orangefs_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.orangefs_attribute* %1, %struct.orangefs_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @EIO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @GOSSIP_SYSFS_DEBUG, align 4
  %11 = load %struct.kobject*, %struct.kobject** %4, align 8
  %12 = getelementptr inbounds %struct.kobject, %struct.kobject* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @gossip_debug(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.kobject*, %struct.kobject** %4, align 8
  %16 = getelementptr inbounds %struct.kobject, %struct.kobject* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** @ORANGEFS_KOBJ_ID, align 8
  %19 = call i32 @strcmp(i32 %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %82, label %21

21:                                               ; preds = %3
  %22 = load %struct.orangefs_attribute*, %struct.orangefs_attribute** %5, align 8
  %23 = getelementptr inbounds %struct.orangefs_attribute, %struct.orangefs_attribute* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strcmp(i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = load i32, i32* @op_timeout_secs, align 4
  %32 = call i32 @scnprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  store i32 %32, i32* %7, align 4
  br label %116

33:                                               ; preds = %21
  %34 = load %struct.orangefs_attribute*, %struct.orangefs_attribute** %5, align 8
  %35 = getelementptr inbounds %struct.orangefs_attribute, %struct.orangefs_attribute* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strcmp(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = load i32, i32* @slot_timeout_secs, align 4
  %44 = call i32 @scnprintf(i8* %41, i32 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %7, align 4
  br label %116

45:                                               ; preds = %33
  %46 = load %struct.orangefs_attribute*, %struct.orangefs_attribute** %5, align 8
  %47 = getelementptr inbounds %struct.orangefs_attribute, %struct.orangefs_attribute* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcmp(i32 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = load i32, i32* @orangefs_cache_timeout_msecs, align 4
  %56 = call i32 @scnprintf(i8* %53, i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  store i32 %56, i32* %7, align 4
  br label %116

57:                                               ; preds = %45
  %58 = load %struct.orangefs_attribute*, %struct.orangefs_attribute** %5, align 8
  %59 = getelementptr inbounds %struct.orangefs_attribute, %struct.orangefs_attribute* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strcmp(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = load i32, i32* @orangefs_dcache_timeout_msecs, align 4
  %68 = call i32 @scnprintf(i8* %65, i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  store i32 %68, i32* %7, align 4
  br label %116

69:                                               ; preds = %57
  %70 = load %struct.orangefs_attribute*, %struct.orangefs_attribute** %5, align 8
  %71 = getelementptr inbounds %struct.orangefs_attribute, %struct.orangefs_attribute* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @strcmp(i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %69
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = load i32, i32* @orangefs_getattr_timeout_msecs, align 4
  %80 = call i32 @scnprintf(i8* %77, i32 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  store i32 %80, i32* %7, align 4
  br label %116

81:                                               ; preds = %69
  br label %116

82:                                               ; preds = %3
  %83 = load %struct.kobject*, %struct.kobject** %4, align 8
  %84 = getelementptr inbounds %struct.kobject, %struct.kobject* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** @STATS_KOBJ_ID, align 8
  %87 = call i32 @strcmp(i32 %85, i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %114, label %89

89:                                               ; preds = %82
  %90 = load %struct.orangefs_attribute*, %struct.orangefs_attribute** %5, align 8
  %91 = getelementptr inbounds %struct.orangefs_attribute, %struct.orangefs_attribute* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @strcmp(i32 %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @orangefs_stats, i32 0, i32 1), align 4
  %100 = call i32 @scnprintf(i8* %97, i32 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %99)
  store i32 %100, i32* %7, align 4
  br label %116

101:                                              ; preds = %89
  %102 = load %struct.orangefs_attribute*, %struct.orangefs_attribute** %5, align 8
  %103 = getelementptr inbounds %struct.orangefs_attribute, %struct.orangefs_attribute* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @strcmp(i32 %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %101
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @orangefs_stats, i32 0, i32 0), align 4
  %112 = call i32 @scnprintf(i8* %109, i32 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %111)
  store i32 %112, i32* %7, align 4
  br label %116

113:                                              ; preds = %101
  br label %116

114:                                              ; preds = %82
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115, %113, %108, %96, %81, %76, %64, %52, %40, %28
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @gossip_debug(i32, i8*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
