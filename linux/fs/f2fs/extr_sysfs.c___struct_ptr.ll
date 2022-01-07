; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_sysfs.c___struct_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_sysfs.c___struct_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64 }
%struct.TYPE_3__ = type { i64 }

@GC_THREAD = common dso_local global i32 0, align 4
@SM_INFO = common dso_local global i32 0, align 4
@DCC_INFO = common dso_local global i32 0, align 4
@NM_INFO = common dso_local global i32 0, align 4
@F2FS_SBI = common dso_local global i32 0, align 4
@RESERVED_BLOCKS = common dso_local global i32 0, align 4
@FAULT_INFO_RATE = common dso_local global i32 0, align 4
@FAULT_INFO_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.f2fs_sb_info*, i32)* @__struct_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__struct_ptr(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @GC_THREAD, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %11 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %3, align 8
  br label %56

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SM_INFO, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %20 = call %struct.TYPE_3__* @SM_I(%struct.f2fs_sb_info* %19)
  %21 = bitcast %struct.TYPE_3__* %20 to i8*
  store i8* %21, i8** %3, align 8
  br label %56

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @DCC_INFO, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %28 = call %struct.TYPE_3__* @SM_I(%struct.f2fs_sb_info* %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %3, align 8
  br label %56

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @NM_INFO, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %38 = call i64 @NM_I(%struct.f2fs_sb_info* %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %3, align 8
  br label %56

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @F2FS_SBI, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @RESERVED_BLOCKS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %40
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %50 = bitcast %struct.f2fs_sb_info* %49 to i8*
  store i8* %50, i8** %3, align 8
  br label %56

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  store i8* null, i8** %3, align 8
  br label %56

56:                                               ; preds = %55, %48, %36, %26, %18, %9
  %57 = load i8*, i8** %3, align 8
  ret i8* %57
}

declare dso_local %struct.TYPE_3__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i64 @NM_I(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
