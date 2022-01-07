; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_sysfs.c_f2fs_sbi_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_sysfs.c_f2fs_sbi_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_attr = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.f2fs_sb_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"gc_urgent\00", align 1
@GC_THREAD = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_attr*, %struct.f2fs_sb_info*, i8*, i64)* @f2fs_sbi_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_sbi_store(%struct.f2fs_attr* %0, %struct.f2fs_sb_info* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_attr*, align 8
  %7 = alloca %struct.f2fs_sb_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.f2fs_attr* %0, %struct.f2fs_attr** %6, align 8
  store %struct.f2fs_sb_info* %1, %struct.f2fs_sb_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.f2fs_attr*, %struct.f2fs_attr** %6, align 8
  %13 = getelementptr inbounds %struct.f2fs_attr, %struct.f2fs_attr* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @strcmp(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.f2fs_attr*, %struct.f2fs_attr** %6, align 8
  %20 = getelementptr inbounds %struct.f2fs_attr, %struct.f2fs_attr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GC_THREAD, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %18, %4
  %25 = phi i1 [ true, %4 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %31 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @down_read_trylock(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %56

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %24
  %41 = load %struct.f2fs_attr*, %struct.f2fs_attr** %6, align 8
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @__sbi_store(%struct.f2fs_attr* %41, %struct.f2fs_sb_info* %42, i8* %43, i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %50 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @up_read(i32* %52)
  br label %54

54:                                               ; preds = %48, %40
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %36
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @__sbi_store(%struct.f2fs_attr*, %struct.f2fs_sb_info*, i8*, i64) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
