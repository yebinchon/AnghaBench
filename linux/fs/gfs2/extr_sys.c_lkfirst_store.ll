; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_lkfirst_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_lkfirst_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, %struct.TYPE_6__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SDF_NOJOURNALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i8*, i64)* @lkfirst_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lkfirst_store(%struct.gfs2_sbd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @sscanf(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  %16 = icmp ugt i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %77

20:                                               ; preds = %14
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %22 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %21, i32 0, i32 4
  %23 = call i32 @wait_for_completion_killable(i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %77

28:                                               ; preds = %20
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %30 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @SDF_NOJOURNALID, align 4
  %35 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %36 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %35, i32 0, i32 3
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %63

40:                                               ; preds = %28
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %44 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %63

49:                                               ; preds = %40
  %50 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %51 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %63

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %61 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %58, %57, %48, %39
  %64 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %65 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  br label %74

72:                                               ; preds = %63
  %73 = load i64, i64* %7, align 8
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i64 [ %71, %69 ], [ %73, %72 ]
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %26, %17
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @wait_for_completion_killable(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
