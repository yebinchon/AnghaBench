; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_shrinker.c_ubifs_shrink_scan.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_shrinker.c_ubifs_shrink_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shrinker = type { i32 }
%struct.shrink_control = type { i64 }

@ubifs_clean_zn_cnt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"no clean znodes, kick a thread\00", align 1
@OLD_ZNODE_AGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"not enough old znodes, try to free young ones\00", align 1
@YOUNG_ZNODE_AGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"not enough young znodes, free all\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"freed nothing, but contention\00", align 1
@SHRINK_STOP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"%lu znodes were freed, requested %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ubifs_shrink_scan(%struct.shrinker* %0, %struct.shrink_control* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.shrinker*, align 8
  %5 = alloca %struct.shrink_control*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.shrinker* %0, %struct.shrinker** %4, align 8
  store %struct.shrink_control* %1, %struct.shrink_control** %5, align 8
  %10 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %11 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %13 = call i64 @atomic_long_read(i32* @ubifs_clean_zn_cnt)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @dbg_tnc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = call i64 (...) @kick_a_thread()
  store i64 %18, i64* %3, align 8
  br label %62

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @OLD_ZNODE_AGE, align 4
  %22 = call i64 @shrink_tnc_trees(i64 %20, i32 %21, i32* %7)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %57

27:                                               ; preds = %19
  %28 = call i32 (i8*, ...) @dbg_tnc(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %8, align 8
  %31 = sub i64 %29, %30
  %32 = load i32, i32* @YOUNG_ZNODE_AGE, align 4
  %33 = call i64 @shrink_tnc_trees(i64 %31, i32 %32, i32* %7)
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %57

40:                                               ; preds = %27
  %41 = call i32 (i8*, ...) @dbg_tnc(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %8, align 8
  %44 = sub i64 %42, %43
  %45 = call i64 @shrink_tnc_trees(i64 %44, i32 0, i32* %7)
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = call i32 (i8*, ...) @dbg_tnc(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i64, i64* @SHRINK_STOP, align 8
  store i64 %55, i64* %3, align 8
  br label %62

56:                                               ; preds = %50, %40
  br label %57

57:                                               ; preds = %56, %39, %26
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 (i8*, ...) @dbg_tnc(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %58, i64 %59)
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %57, %53, %16
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @dbg_tnc(i8*, ...) #1

declare dso_local i64 @kick_a_thread(...) #1

declare dso_local i64 @shrink_tnc_trees(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
