; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lbmWrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lbmWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_log = type { i32, %struct.lbuf*, i64 }
%struct.lbuf = type { i32, i32, %struct.lbuf*, i64 }

@.str = private unnamed_addr constant [36 x i8] c"lbmWrite: bp:0x%p flag:0x%x pn:0x%x\00", align 1
@L2LOGPSIZE = common dso_local global i32 0, align 4
@lbmWRITE = common dso_local global i32 0, align 4
@lbmSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jfs_log*, %struct.lbuf*, i32, i32)* @lbmWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbmWrite(%struct.jfs_log* %0, %struct.lbuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.jfs_log*, align 8
  %6 = alloca %struct.lbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lbuf*, align 8
  %10 = alloca i64, align 8
  store %struct.jfs_log* %0, %struct.jfs_log** %5, align 8
  store %struct.lbuf* %1, %struct.lbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %14 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @jfs_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.lbuf* %11, i32 %12, i32 %15)
  %17 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %18 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %21 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @L2LOGPSIZE, align 4
  %24 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %25 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %23, %26
  %28 = shl i32 %22, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %19, %29
  %31 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %32 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @LCACHE_LOCK(i64 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %37 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %39 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %38, i32 0, i32 1
  %40 = load %struct.lbuf*, %struct.lbuf** %39, align 8
  store %struct.lbuf* %40, %struct.lbuf** %9, align 8
  %41 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %42 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %41, i32 0, i32 2
  %43 = load %struct.lbuf*, %struct.lbuf** %42, align 8
  %44 = icmp eq %struct.lbuf* %43, null
  br i1 %44, label %45, label %69

45:                                               ; preds = %4
  %46 = load %struct.lbuf*, %struct.lbuf** %9, align 8
  %47 = icmp eq %struct.lbuf* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %50 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %51 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %50, i32 0, i32 1
  store %struct.lbuf* %49, %struct.lbuf** %51, align 8
  %52 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %53 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %54 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %53, i32 0, i32 2
  store %struct.lbuf* %52, %struct.lbuf** %54, align 8
  br label %67

55:                                               ; preds = %45
  %56 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %57 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %58 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %57, i32 0, i32 1
  store %struct.lbuf* %56, %struct.lbuf** %58, align 8
  %59 = load %struct.lbuf*, %struct.lbuf** %9, align 8
  %60 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %59, i32 0, i32 2
  %61 = load %struct.lbuf*, %struct.lbuf** %60, align 8
  %62 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %63 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %62, i32 0, i32 2
  store %struct.lbuf* %61, %struct.lbuf** %63, align 8
  %64 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %65 = load %struct.lbuf*, %struct.lbuf** %9, align 8
  %66 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %65, i32 0, i32 2
  store %struct.lbuf* %64, %struct.lbuf** %66, align 8
  br label %67

67:                                               ; preds = %55, %48
  %68 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  store %struct.lbuf* %68, %struct.lbuf** %9, align 8
  br label %69

69:                                               ; preds = %67, %4
  %70 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %71 = load %struct.lbuf*, %struct.lbuf** %9, align 8
  %72 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %71, i32 0, i32 2
  %73 = load %struct.lbuf*, %struct.lbuf** %72, align 8
  %74 = icmp ne %struct.lbuf* %70, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @lbmWRITE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75, %69
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @LCACHE_UNLOCK(i64 %81)
  br label %107

83:                                               ; preds = %75
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @LCACHE_UNLOCK(i64 %84)
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %90 = call i32 @lbmRedrive(%struct.lbuf* %89)
  br label %107

91:                                               ; preds = %83
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @lbmSYNC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %98 = call i32 @lbmStartIO(%struct.lbuf* %97)
  br label %106

99:                                               ; preds = %91
  %100 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %101 = call i32 @LOGGC_UNLOCK(%struct.jfs_log* %100)
  %102 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %103 = call i32 @lbmStartIO(%struct.lbuf* %102)
  %104 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %105 = call i32 @LOGGC_LOCK(%struct.jfs_log* %104)
  br label %106

106:                                              ; preds = %99, %96
  br label %107

107:                                              ; preds = %80, %106, %88
  ret void
}

declare dso_local i32 @jfs_info(i8*, %struct.lbuf*, i32, i32) #1

declare dso_local i32 @LCACHE_LOCK(i64) #1

declare dso_local i32 @LCACHE_UNLOCK(i64) #1

declare dso_local i32 @lbmRedrive(%struct.lbuf*) #1

declare dso_local i32 @lbmStartIO(%struct.lbuf*) #1

declare dso_local i32 @LOGGC_UNLOCK(%struct.jfs_log*) #1

declare dso_local i32 @LOGGC_LOCK(%struct.jfs_log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
