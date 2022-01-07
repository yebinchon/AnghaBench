; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lbmIODone.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lbmIODone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i64, %struct.lbuf* }
%struct.lbuf = type { i32, i32, i32, %struct.lbuf*, i64, %struct.jfs_log* }
%struct.jfs_log = type { %struct.lbuf*, i64 }

@.str = private unnamed_addr constant [29 x i8] c"lbmIODone: bp:0x%p flag:0x%x\00", align 1
@lbmDONE = common dso_local global i32 0, align 4
@lbmERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"lbmIODone: I/O error in JFS log\00", align 1
@lbmREAD = common dso_local global i32 0, align 4
@lbmWRITE = common dso_local global i32 0, align 4
@lmStat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@L2LOGPSIZE = common dso_local global i32 0, align 4
@lbmDIRECT = common dso_local global i32 0, align 4
@lbmRELEASE = common dso_local global i32 0, align 4
@lbmSYNC = common dso_local global i32 0, align 4
@lbmGC = common dso_local global i32 0, align 4
@lbmFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @lbmIODone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbmIODone(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.lbuf*, align 8
  %4 = alloca %struct.lbuf*, align 8
  %5 = alloca %struct.lbuf*, align 8
  %6 = alloca %struct.jfs_log*, align 8
  %7 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 1
  %10 = load %struct.lbuf*, %struct.lbuf** %9, align 8
  store %struct.lbuf* %10, %struct.lbuf** %3, align 8
  %11 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %12 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %13 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @jfs_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.lbuf* %11, i32 %14)
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @LCACHE_LOCK(i64 %16)
  %18 = load i32, i32* @lbmDONE, align 4
  %19 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %20 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.bio*, %struct.bio** %2, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load i32, i32* @lbmERROR, align 4
  %29 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %30 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = call i32 @jfs_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %27, %1
  %35 = load %struct.bio*, %struct.bio** %2, align 8
  %36 = call i32 @bio_put(%struct.bio* %35)
  %37 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %38 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @lbmREAD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %34
  %44 = load i32, i32* @lbmREAD, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %47 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @LCACHE_UNLOCK(i64 %50)
  %52 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %53 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %52, i32 0, i32 2
  %54 = call i32 @LCACHE_WAKEUP(i32* %53)
  br label %180

55:                                               ; preds = %34
  %56 = load i32, i32* @lbmWRITE, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %59 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lmStat, i32 0, i32 0), align 4
  %63 = call i32 @INCREMENT(i32 %62)
  %64 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %65 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %64, i32 0, i32 5
  %66 = load %struct.jfs_log*, %struct.jfs_log** %65, align 8
  store %struct.jfs_log* %66, %struct.jfs_log** %6, align 8
  %67 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %68 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @L2LOGPSIZE, align 4
  %71 = shl i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %74 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %78 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %80 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @lbmDIRECT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %55
  %86 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %87 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %86, i32 0, i32 2
  %88 = call i32 @LCACHE_WAKEUP(i32* %87)
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @LCACHE_UNLOCK(i64 %89)
  br label %180

91:                                               ; preds = %55
  %92 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %93 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %92, i32 0, i32 0
  %94 = load %struct.lbuf*, %struct.lbuf** %93, align 8
  store %struct.lbuf* %94, %struct.lbuf** %5, align 8
  %95 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %96 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %97 = icmp eq %struct.lbuf* %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %100 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @lbmRELEASE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %107 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %106, i32 0, i32 0
  store %struct.lbuf* null, %struct.lbuf** %107, align 8
  %108 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %109 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %108, i32 0, i32 3
  store %struct.lbuf* null, %struct.lbuf** %109, align 8
  br label %110

110:                                              ; preds = %105, %98
  br label %137

111:                                              ; preds = %91
  %112 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %113 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @lbmRELEASE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %111
  %119 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %120 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %119, i32 0, i32 3
  %121 = load %struct.lbuf*, %struct.lbuf** %120, align 8
  %122 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %123 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %122, i32 0, i32 3
  store %struct.lbuf* %121, %struct.lbuf** %123, align 8
  store %struct.lbuf* %121, %struct.lbuf** %4, align 8
  %124 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %125 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %124, i32 0, i32 3
  store %struct.lbuf* null, %struct.lbuf** %125, align 8
  %126 = load %struct.lbuf*, %struct.lbuf** %4, align 8
  %127 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @lbmWRITE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %118
  %133 = load %struct.lbuf*, %struct.lbuf** %4, align 8
  %134 = call i32 @lbmRedrive(%struct.lbuf* %133)
  br label %135

135:                                              ; preds = %132, %118
  br label %136

136:                                              ; preds = %135, %111
  br label %137

137:                                              ; preds = %136, %110
  %138 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %139 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @lbmSYNC, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %137
  %145 = load i64, i64* %7, align 8
  %146 = call i32 @LCACHE_UNLOCK(i64 %145)
  %147 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %148 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %147, i32 0, i32 2
  %149 = call i32 @LCACHE_WAKEUP(i32* %148)
  br label %180

150:                                              ; preds = %137
  %151 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %152 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @lbmGC, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %150
  %158 = load i64, i64* %7, align 8
  %159 = call i32 @LCACHE_UNLOCK(i64 %158)
  %160 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %161 = call i32 @lmPostGC(%struct.lbuf* %160)
  br label %179

162:                                              ; preds = %150
  %163 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %164 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @lbmRELEASE, align 4
  %167 = and i32 %165, %166
  %168 = call i32 @assert(i32 %167)
  %169 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %170 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @lbmFREE, align 4
  %173 = and i32 %171, %172
  %174 = call i32 @assert(i32 %173)
  %175 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %176 = call i32 @lbmfree(%struct.lbuf* %175)
  %177 = load i64, i64* %7, align 8
  %178 = call i32 @LCACHE_UNLOCK(i64 %177)
  br label %179

179:                                              ; preds = %162, %157
  br label %180

180:                                              ; preds = %43, %85, %179, %144
  ret void
}

declare dso_local i32 @jfs_info(i8*, %struct.lbuf*, i32) #1

declare dso_local i32 @LCACHE_LOCK(i64) #1

declare dso_local i32 @jfs_err(i8*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @LCACHE_UNLOCK(i64) #1

declare dso_local i32 @LCACHE_WAKEUP(i32*) #1

declare dso_local i32 @INCREMENT(i32) #1

declare dso_local i32 @lbmRedrive(%struct.lbuf*) #1

declare dso_local i32 @lmPostGC(%struct.lbuf*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lbmfree(%struct.lbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
