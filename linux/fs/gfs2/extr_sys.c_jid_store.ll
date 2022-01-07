; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_jid_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_jid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SDF_NOJOURNALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i8*, i64)* @jid_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jid_store(%struct.gfs2_sbd* %0, i8* %1, i64 %2) #0 {
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
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %88

17:                                               ; preds = %3
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %19 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %18, i32 0, i32 4
  %20 = call i32 @wait_for_completion_killable(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %88

25:                                               ; preds = %17
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %27 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %32 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %74

39:                                               ; preds = %25
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @SDF_NOJOURNALID, align 4
  %43 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %44 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %43, i32 0, i32 1
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %74

48:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  %49 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %50 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %54, %48
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %63 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @SDF_NOJOURNALID, align 4
  %66 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %67 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %66, i32 0, i32 1
  %68 = call i32 @clear_bit(i32 %65, i32* %67)
  %69 = call i32 (...) @smp_mb__after_atomic()
  %70 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %71 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %70, i32 0, i32 1
  %72 = load i32, i32* @SDF_NOJOURNALID, align 4
  %73 = call i32 @wake_up_bit(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %60, %47, %38
  %75 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %76 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  br label %85

83:                                               ; preds = %74
  %84 = load i64, i64* %7, align 8
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi i64 [ %82, %80 ], [ %84, %83 ]
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %85, %23, %14
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @wait_for_completion_killable(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
