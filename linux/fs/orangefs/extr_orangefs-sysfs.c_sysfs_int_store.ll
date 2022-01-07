; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-sysfs.c_sysfs_int_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-sysfs.c_sysfs_int_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.orangefs_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GOSSIP_SYSFS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"sysfs_int_store: start attr->attr.name:%s: buf:%s:\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"op_timeout_secs\00", align 1
@op_timeout_secs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"slot_timeout_secs\00", align 1
@slot_timeout_secs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"cache_timeout_msecs\00", align 1
@orangefs_cache_timeout_msecs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"dcache_timeout_msecs\00", align 1
@orangefs_dcache_timeout_msecs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"getattr_timeout_msecs\00", align 1
@orangefs_getattr_timeout_msecs = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.orangefs_attribute*, i8*, i64)* @sysfs_int_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysfs_int_store(%struct.kobject* %0, %struct.orangefs_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.orangefs_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.orangefs_attribute* %1, %struct.orangefs_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @GOSSIP_SYSFS_DEBUG, align 4
  %11 = load %struct.orangefs_attribute*, %struct.orangefs_attribute** %6, align 8
  %12 = getelementptr inbounds %struct.orangefs_attribute, %struct.orangefs_attribute* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @gossip_debug(i32 %10, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %15)
  %17 = load %struct.orangefs_attribute*, %struct.orangefs_attribute** %6, align 8
  %18 = getelementptr inbounds %struct.orangefs_attribute, %struct.orangefs_attribute* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcmp(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @kstrtoint(i8* %24, i32 0, i32* @op_timeout_secs)
  store i32 %25, i32* %9, align 4
  br label %67

26:                                               ; preds = %4
  %27 = load %struct.orangefs_attribute*, %struct.orangefs_attribute** %6, align 8
  %28 = getelementptr inbounds %struct.orangefs_attribute, %struct.orangefs_attribute* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcmp(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @kstrtoint(i8* %34, i32 0, i32* @slot_timeout_secs)
  store i32 %35, i32* %9, align 4
  br label %67

36:                                               ; preds = %26
  %37 = load %struct.orangefs_attribute*, %struct.orangefs_attribute** %6, align 8
  %38 = getelementptr inbounds %struct.orangefs_attribute, %struct.orangefs_attribute* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcmp(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @kstrtoint(i8* %44, i32 0, i32* @orangefs_cache_timeout_msecs)
  store i32 %45, i32* %9, align 4
  br label %67

46:                                               ; preds = %36
  %47 = load %struct.orangefs_attribute*, %struct.orangefs_attribute** %6, align 8
  %48 = getelementptr inbounds %struct.orangefs_attribute, %struct.orangefs_attribute* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strcmp(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @kstrtoint(i8* %54, i32 0, i32* @orangefs_dcache_timeout_msecs)
  store i32 %55, i32* %9, align 4
  br label %67

56:                                               ; preds = %46
  %57 = load %struct.orangefs_attribute*, %struct.orangefs_attribute** %6, align 8
  %58 = getelementptr inbounds %struct.orangefs_attribute, %struct.orangefs_attribute* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strcmp(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @kstrtoint(i8* %64, i32 0, i32* @orangefs_getattr_timeout_msecs)
  store i32 %65, i32* %9, align 4
  br label %67

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %63, %53, %43, %33, %23
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %76

73:                                               ; preds = %67
  %74 = load i64, i64* %8, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local i32 @gossip_debug(i32, i8*, i32, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
