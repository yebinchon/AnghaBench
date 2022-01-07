; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lmLogFileSystem.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lmLogFileSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_log = type { i32 }
%struct.jfs_sb_info = type { i32, i32 }
%struct.logsuper = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lbuf = type { i64 }

@MAX_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Too many file systems sharing journal!\00", align 1
@EMFILE = common dso_local global i32 0, align 4
@uuid_null = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Somebody stomped on the journal!\00", align 1
@EIO = common dso_local global i32 0, align 4
@lbmWRITE = common dso_local global i32 0, align 4
@lbmRELEASE = common dso_local global i32 0, align 4
@lbmSYNC = common dso_local global i32 0, align 4
@lbmFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jfs_log*, %struct.jfs_sb_info*, i32)* @lmLogFileSystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lmLogFileSystem(%struct.jfs_log* %0, %struct.jfs_sb_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jfs_log*, align 8
  %6 = alloca %struct.jfs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.logsuper*, align 8
  %11 = alloca %struct.lbuf*, align 8
  %12 = alloca i32*, align 8
  store %struct.jfs_log* %0, %struct.jfs_log** %5, align 8
  store %struct.jfs_sb_info* %1, %struct.jfs_sb_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %14 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %13, i32 0, i32 1
  store i32* %14, i32** %12, align 8
  %15 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %16 = call i32 @lbmRead(%struct.jfs_log* %15, i32 1, %struct.lbuf** %11)
  store i32 %16, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %123

20:                                               ; preds = %3
  %21 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  %22 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.logsuper*
  store %struct.logsuper* %24, %struct.logsuper** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %70

27:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %56, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @MAX_ACTIVE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %28
  %33 = load %struct.logsuper*, %struct.logsuper** %10, align 8
  %34 = getelementptr inbounds %struct.logsuper, %struct.logsuper* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i64 @uuid_is_null(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %32
  %43 = load %struct.logsuper*, %struct.logsuper** %10, align 8
  %44 = getelementptr inbounds %struct.logsuper, %struct.logsuper* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @uuid_copy(i32* %49, i32* %50)
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %54 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %59

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %28

59:                                               ; preds = %42, %28
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @MAX_ACTIVE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = call i32 @jfs_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  %66 = call i32 @lbmFree(%struct.lbuf* %65)
  %67 = load i32, i32* @EMFILE, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %123

69:                                               ; preds = %59
  br label %110

70:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %96, %70
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @MAX_ACTIVE, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %71
  %76 = load %struct.logsuper*, %struct.logsuper** %10, align 8
  %77 = getelementptr inbounds %struct.logsuper, %struct.logsuper* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32*, i32** %12, align 8
  %84 = call i64 @uuid_equal(i32* %82, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %75
  %87 = load %struct.logsuper*, %struct.logsuper** %10, align 8
  %88 = getelementptr inbounds %struct.logsuper, %struct.logsuper* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 @uuid_copy(i32* %93, i32* @uuid_null)
  br label %99

95:                                               ; preds = %75
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %71

99:                                               ; preds = %86, %71
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @MAX_ACTIVE, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = call i32 @jfs_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %105 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  %106 = call i32 @lbmFree(%struct.lbuf* %105)
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %123

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %69
  %111 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %112 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  %113 = load i32, i32* @lbmWRITE, align 4
  %114 = load i32, i32* @lbmRELEASE, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @lbmSYNC, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @lbmDirectWrite(%struct.jfs_log* %111, %struct.lbuf* %112, i32 %117)
  %119 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  %120 = load i32, i32* @lbmFREE, align 4
  %121 = call i32 @lbmIOWait(%struct.lbuf* %119, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %110, %103, %63, %18
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @lbmRead(%struct.jfs_log*, i32, %struct.lbuf**) #1

declare dso_local i64 @uuid_is_null(i32*) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

declare dso_local i32 @jfs_warn(i8*) #1

declare dso_local i32 @lbmFree(%struct.lbuf*) #1

declare dso_local i64 @uuid_equal(i32*, i32*) #1

declare dso_local i32 @lbmDirectWrite(%struct.jfs_log*, %struct.lbuf*, i32) #1

declare dso_local i32 @lbmIOWait(%struct.lbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
