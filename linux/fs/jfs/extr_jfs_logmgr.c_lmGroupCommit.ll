; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lmGroupCommit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lmGroupCommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_log = type { i32, i32, i32, i32 }
%struct.tblock = type { i32, i32, i32 }

@tblkGC_COMMITTED = common dso_local global i32 0, align 4
@tblkGC_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"lmGroup Commit: tblk = 0x%p, gcrtc = %d\00", align 1
@COMMIT_LAZY = common dso_local global i32 0, align 4
@tblkGC_LAZY = common dso_local global i32 0, align 4
@logGC_PAGEOUT = common dso_local global i32 0, align 4
@log_FLUSH = common dso_local global i32 0, align 4
@jfs_tlocks_low = common dso_local global i64 0, align 8
@tblkGC_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lmGroupCommit(%struct.jfs_log* %0, %struct.tblock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jfs_log*, align 8
  %5 = alloca %struct.tblock*, align 8
  %6 = alloca i32, align 4
  store %struct.jfs_log* %0, %struct.jfs_log** %4, align 8
  store %struct.tblock* %1, %struct.tblock** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %8 = call i32 @LOGGC_LOCK(%struct.jfs_log* %7)
  %9 = load %struct.tblock*, %struct.tblock** %5, align 8
  %10 = getelementptr inbounds %struct.tblock, %struct.tblock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @tblkGC_COMMITTED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.tblock*, %struct.tblock** %5, align 8
  %17 = getelementptr inbounds %struct.tblock, %struct.tblock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @tblkGC_ERROR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %15
  %26 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %27 = call i32 @LOGGC_UNLOCK(%struct.jfs_log* %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %150

29:                                               ; preds = %2
  %30 = load %struct.tblock*, %struct.tblock** %5, align 8
  %31 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %32 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @jfs_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.tblock* %30, i32 %33)
  %35 = load %struct.tblock*, %struct.tblock** %5, align 8
  %36 = getelementptr inbounds %struct.tblock, %struct.tblock* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @COMMIT_LAZY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load i32, i32* @tblkGC_LAZY, align 4
  %43 = load %struct.tblock*, %struct.tblock** %5, align 8
  %44 = getelementptr inbounds %struct.tblock, %struct.tblock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %29
  %48 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %49 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @logGC_PAGEOUT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %83, label %54

54:                                               ; preds = %47
  %55 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %56 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %55, i32 0, i32 3
  %57 = call i32 @list_empty(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %83, label %59

59:                                               ; preds = %54
  %60 = load %struct.tblock*, %struct.tblock** %5, align 8
  %61 = getelementptr inbounds %struct.tblock, %struct.tblock* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @COMMIT_LAZY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load i32, i32* @log_FLUSH, align 4
  %68 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %69 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %68, i32 0, i32 2
  %70 = call i64 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i64, i64* @jfs_tlocks_low, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72, %66, %59
  %76 = load i32, i32* @logGC_PAGEOUT, align 4
  %77 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %78 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %82 = call i32 @lmGCwrite(%struct.jfs_log* %81, i32 0)
  br label %83

83:                                               ; preds = %75, %72, %54, %47
  %84 = load %struct.tblock*, %struct.tblock** %5, align 8
  %85 = getelementptr inbounds %struct.tblock, %struct.tblock* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @COMMIT_LAZY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %92 = call i32 @LOGGC_UNLOCK(%struct.jfs_log* %91)
  store i32 0, i32* %3, align 4
  br label %150

93:                                               ; preds = %83
  %94 = load %struct.tblock*, %struct.tblock** %5, align 8
  %95 = getelementptr inbounds %struct.tblock, %struct.tblock* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @tblkGC_COMMITTED, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %93
  %101 = load %struct.tblock*, %struct.tblock** %5, align 8
  %102 = getelementptr inbounds %struct.tblock, %struct.tblock* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @tblkGC_ERROR, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %107, %100
  %111 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %112 = call i32 @LOGGC_UNLOCK(%struct.jfs_log* %111)
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %150

114:                                              ; preds = %93
  %115 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %116 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* @tblkGC_READY, align 4
  %120 = load %struct.tblock*, %struct.tblock** %5, align 8
  %121 = getelementptr inbounds %struct.tblock, %struct.tblock* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.tblock*, %struct.tblock** %5, align 8
  %125 = getelementptr inbounds %struct.tblock, %struct.tblock* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.tblock*, %struct.tblock** %5, align 8
  %128 = getelementptr inbounds %struct.tblock, %struct.tblock* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @tblkGC_COMMITTED, align 4
  %131 = and i32 %129, %130
  %132 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %133 = call i32 @LOGGC_LOCK(%struct.jfs_log* %132)
  %134 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %135 = call i32 @LOGGC_UNLOCK(%struct.jfs_log* %134)
  %136 = call i32 @__SLEEP_COND(i32 %126, i32 %131, i32 %133, i32 %135)
  %137 = load %struct.tblock*, %struct.tblock** %5, align 8
  %138 = getelementptr inbounds %struct.tblock, %struct.tblock* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @tblkGC_ERROR, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %114
  %144 = load i32, i32* @EIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %143, %114
  %147 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %148 = call i32 @LOGGC_UNLOCK(%struct.jfs_log* %147)
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %146, %110, %90, %25
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @LOGGC_LOCK(%struct.jfs_log*) #1

declare dso_local i32 @LOGGC_UNLOCK(%struct.jfs_log*) #1

declare dso_local i32 @jfs_info(i8*, %struct.tblock*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @lmGCwrite(%struct.jfs_log*, i32) #1

declare dso_local i32 @__SLEEP_COND(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
