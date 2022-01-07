; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_mnt_warn_timestamp_expiry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_mnt_warn_timestamp_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.vfsmount = type { %struct.super_block* }
%struct.super_block = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tm = type { i64 }

@TIME_UPTIME_SEC_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Mounted %s file system at %s supports timestamps until %04ld (0x%llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.path*, %struct.vfsmount*)* @mnt_warn_timestamp_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mnt_warn_timestamp_expiry(%struct.path* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tm, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %9 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %10 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %9, i32 0, i32 0
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %5, align 8
  %12 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %13 = call i32 @__mnt_is_readonly(%struct.vfsmount* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %60, label %15

15:                                               ; preds = %2
  %16 = call i64 (...) @ktime_get_real_seconds()
  %17 = load i64, i64* @TIME_UPTIME_SEC_MAX, align 8
  %18 = add nsw i64 %16, %17
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %15
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i64 @__get_free_page(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.path*, %struct.path** %3, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = call i8* @d_path(%struct.path* %30, i8* %31, i32 %32)
  br label %38

34:                                               ; preds = %23
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i8* @ERR_PTR(i32 %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i8* [ %33, %29 ], [ %37, %34 ]
  store i8* %39, i8** %7, align 8
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = getelementptr inbounds %struct.super_block, %struct.super_block* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @time64_to_tm(i64 %42, i32 0, %struct.tm* %8)
  %44 = load %struct.super_block*, %struct.super_block** %5, align 8
  %45 = getelementptr inbounds %struct.super_block, %struct.super_block* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1900
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = getelementptr inbounds %struct.super_block, %struct.super_block* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @pr_warn(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %48, i8* %49, i64 %52, i64 %55)
  %57 = load i8*, i8** %6, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = call i32 @free_page(i64 %58)
  br label %60

60:                                               ; preds = %38, %15, %2
  ret void
}

declare dso_local i32 @__mnt_is_readonly(%struct.vfsmount*) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i8* @d_path(%struct.path*, i8*, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @time64_to_tm(i64, i32, %struct.tm*) #1

declare dso_local i32 @pr_warn(i8*, i32, i8*, i64, i64) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
