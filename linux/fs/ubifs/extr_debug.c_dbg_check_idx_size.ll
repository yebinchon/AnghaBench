; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_check_idx_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_check_idx_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }

@add_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"error %d while walking the index\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"index size check failed: calculated size is %lld, should be %lld\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbg_check_idx_size(%struct.ubifs_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %9 = call i32 @dbg_is_chk_index(%struct.ubifs_info* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %14 = load i32, i32* @add_size, align 4
  %15 = call i32 @dbg_walk_index(%struct.ubifs_info* %13, i32* null, i32 %14, i64* %7)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = call i32 (%struct.ubifs_info*, i8*, i64, ...) @ubifs_err(%struct.ubifs_info* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %12
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 (%struct.ubifs_info*, i8*, i64, ...) @ubifs_err(%struct.ubifs_info* %29, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %30, i64 %31)
  %33 = call i32 (...) @dump_stack()
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %28, %18, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @dbg_is_chk_index(%struct.ubifs_info*) #1

declare dso_local i32 @dbg_walk_index(%struct.ubifs_info*, i32*, i32, i64*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i64, ...) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
