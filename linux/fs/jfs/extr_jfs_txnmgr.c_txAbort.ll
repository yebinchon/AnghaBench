; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txAbort.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txAbort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapage = type { i32, i64, i64 }
%struct.tblock = type { i32, i64, i64 }
%struct.tlock = type { i32, %struct.metapage*, i64 }
%struct.TYPE_2__ = type { i64 }

@COMMIT_PAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @txAbort(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.metapage*, align 8
  %8 = alloca %struct.tblock*, align 8
  %9 = alloca %struct.tlock*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.tblock* @tid_to_tblock(i32 %10)
  store %struct.tblock* %11, %struct.tblock** %8, align 8
  %12 = load %struct.tblock*, %struct.tblock** %8, align 8
  %13 = getelementptr inbounds %struct.tblock, %struct.tblock* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %57, %2
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = call %struct.tlock* @lid_to_tlock(i64 %19)
  store %struct.tlock* %20, %struct.tlock** %9, align 8
  %21 = load %struct.tlock*, %struct.tlock** %9, align 8
  %22 = getelementptr inbounds %struct.tlock, %struct.tlock* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load %struct.tlock*, %struct.tlock** %9, align 8
  %25 = getelementptr inbounds %struct.tlock, %struct.tlock* %24, i32 0, i32 1
  %26 = load %struct.metapage*, %struct.metapage** %25, align 8
  store %struct.metapage* %26, %struct.metapage** %7, align 8
  %27 = load %struct.tlock*, %struct.tlock** %9, align 8
  %28 = getelementptr inbounds %struct.tlock, %struct.tlock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.TYPE_2__* @JFS_IP(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.metapage*, %struct.metapage** %7, align 8
  %33 = icmp ne %struct.metapage* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %18
  %35 = load %struct.metapage*, %struct.metapage** %7, align 8
  %36 = getelementptr inbounds %struct.metapage, %struct.metapage* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.metapage*, %struct.metapage** %7, align 8
  %38 = getelementptr inbounds %struct.metapage, %struct.metapage* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @COMMIT_PAGE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load %struct.metapage*, %struct.metapage** %7, align 8
  %45 = getelementptr inbounds %struct.metapage, %struct.metapage* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.metapage*, %struct.metapage** %7, align 8
  %50 = call i32 @LogSyncRelease(%struct.metapage* %49)
  br label %51

51:                                               ; preds = %48, %43, %34
  br label %52

52:                                               ; preds = %51, %18
  %53 = call i32 (...) @TXN_LOCK()
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @txLockFree(i64 %54)
  %56 = call i32 (...) @TXN_UNLOCK()
  br label %57

57:                                               ; preds = %52
  %58 = load i64, i64* %6, align 8
  store i64 %58, i64* %5, align 8
  br label %15

59:                                               ; preds = %15
  %60 = load %struct.tblock*, %struct.tblock** %8, align 8
  %61 = getelementptr inbounds %struct.tblock, %struct.tblock* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.tblock*, %struct.tblock** %8, align 8
  %63 = getelementptr inbounds %struct.tblock, %struct.tblock* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.tblock*, %struct.tblock** %8, align 8
  %68 = getelementptr inbounds %struct.tblock, %struct.tblock* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @jfs_error(i32 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %66, %59
  ret void
}

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local %struct.tlock* @lid_to_tlock(i64) #1

declare dso_local %struct.TYPE_2__* @JFS_IP(i32) #1

declare dso_local i32 @LogSyncRelease(%struct.metapage*) #1

declare dso_local i32 @TXN_LOCK(...) #1

declare dso_local i32 @txLockFree(i64) #1

declare dso_local i32 @TXN_UNLOCK(...) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
