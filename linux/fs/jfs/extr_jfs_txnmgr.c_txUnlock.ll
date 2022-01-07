; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txUnlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txUnlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tblock = type { i32, i64, i64, i64, i64, i32 }
%struct.tlock = type { i32, i32, i32, %struct.metapage*, i64 }
%struct.metapage = type { i32, i64, i64 }
%struct.linelock = type { i64 }
%struct.jfs_log = type { i32 }
%struct.TYPE_2__ = type { %struct.jfs_log* }

@.str = private unnamed_addr constant [22 x i8] c"txUnlock: tblk = 0x%p\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unlocking lid = %d, tlck = 0x%p\00", align 1
@tlckBTROOT = common dso_local global i32 0, align 4
@COMMIT_PAGE = common dso_local global i32 0, align 4
@tlckFREEPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tblock*)* @txUnlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txUnlock(%struct.tblock* %0) #0 {
  %2 = alloca %struct.tblock*, align 8
  %3 = alloca %struct.tlock*, align 8
  %4 = alloca %struct.linelock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.metapage*, align 8
  %10 = alloca %struct.jfs_log*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.tblock* %0, %struct.tblock** %2, align 8
  %14 = load %struct.tblock*, %struct.tblock** %2, align 8
  %15 = call i32 (i8*, %struct.tblock*, ...) @jfs_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.tblock* %14)
  %16 = load %struct.tblock*, %struct.tblock** %2, align 8
  %17 = getelementptr inbounds %struct.tblock, %struct.tblock* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_2__* @JFS_SBI(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.jfs_log*, %struct.jfs_log** %20, align 8
  store %struct.jfs_log* %21, %struct.jfs_log** %10, align 8
  %22 = load %struct.tblock*, %struct.tblock** %2, align 8
  %23 = getelementptr inbounds %struct.tblock, %struct.tblock* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %141, %1
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %143

28:                                               ; preds = %25
  %29 = load i64, i64* %5, align 8
  %30 = call %struct.tlock* @lid_to_tlock(i64 %29)
  store %struct.tlock* %30, %struct.tlock** %3, align 8
  %31 = load %struct.tlock*, %struct.tlock** %3, align 8
  %32 = getelementptr inbounds %struct.tlock, %struct.tlock* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = inttoptr i64 %34 to %struct.tblock*
  %36 = load %struct.tlock*, %struct.tlock** %3, align 8
  %37 = call i32 (i8*, %struct.tblock*, ...) @jfs_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.tblock* %35, %struct.tlock* %36)
  %38 = load %struct.tlock*, %struct.tlock** %3, align 8
  %39 = getelementptr inbounds %struct.tlock, %struct.tlock* %38, i32 0, i32 3
  %40 = load %struct.metapage*, %struct.metapage** %39, align 8
  store %struct.metapage* %40, %struct.metapage** %9, align 8
  %41 = icmp ne %struct.metapage* %40, null
  br i1 %41, label %42, label %117

42:                                               ; preds = %28
  %43 = load %struct.tlock*, %struct.tlock** %3, align 8
  %44 = getelementptr inbounds %struct.tlock, %struct.tlock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @tlckBTROOT, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %117

49:                                               ; preds = %42
  %50 = load %struct.metapage*, %struct.metapage** %9, align 8
  %51 = getelementptr inbounds %struct.metapage, %struct.metapage* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @COMMIT_PAGE, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.metapage*, %struct.metapage** %9, align 8
  %57 = call i32 @hold_metapage(%struct.metapage* %56)
  %58 = load %struct.metapage*, %struct.metapage** %9, align 8
  %59 = getelementptr inbounds %struct.metapage, %struct.metapage* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.metapage*, %struct.metapage** %9, align 8
  %65 = call i32 @_metapage_homeok(%struct.metapage* %64)
  %66 = load %struct.jfs_log*, %struct.jfs_log** %10, align 8
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @LOGSYNC_LOCK(%struct.jfs_log* %66, i64 %67)
  %69 = load %struct.metapage*, %struct.metapage** %9, align 8
  %70 = getelementptr inbounds %struct.metapage, %struct.metapage* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %49
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.tblock*, %struct.tblock** %2, align 8
  %76 = getelementptr inbounds %struct.tblock, %struct.tblock* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.jfs_log*, %struct.jfs_log** %10, align 8
  %79 = call i32 @logdiff(i32 %74, i64 %77, %struct.jfs_log* %78)
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.metapage*, %struct.metapage** %9, align 8
  %82 = getelementptr inbounds %struct.metapage, %struct.metapage* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.jfs_log*, %struct.jfs_log** %10, align 8
  %85 = call i32 @logdiff(i32 %80, i64 %83, %struct.jfs_log* %84)
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %73
  %90 = load %struct.tblock*, %struct.tblock** %2, align 8
  %91 = getelementptr inbounds %struct.tblock, %struct.tblock* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.metapage*, %struct.metapage** %9, align 8
  %94 = getelementptr inbounds %struct.metapage, %struct.metapage* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %73
  br label %102

96:                                               ; preds = %49
  %97 = load %struct.tblock*, %struct.tblock** %2, align 8
  %98 = getelementptr inbounds %struct.tblock, %struct.tblock* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.metapage*, %struct.metapage** %9, align 8
  %101 = getelementptr inbounds %struct.metapage, %struct.metapage* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %96, %95
  %103 = load %struct.jfs_log*, %struct.jfs_log** %10, align 8
  %104 = load i64, i64* %13, align 8
  %105 = call i32 @LOGSYNC_UNLOCK(%struct.jfs_log* %103, i64 %104)
  %106 = load %struct.tlock*, %struct.tlock** %3, align 8
  %107 = getelementptr inbounds %struct.tlock, %struct.tlock* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @tlckFREEPAGE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load %struct.metapage*, %struct.metapage** %9, align 8
  %116 = call i32 @put_metapage(%struct.metapage* %115)
  br label %117

117:                                              ; preds = %102, %42, %28
  %118 = call i32 (...) @TXN_LOCK()
  %119 = load %struct.tlock*, %struct.tlock** %3, align 8
  %120 = getelementptr inbounds %struct.tlock, %struct.tlock* %119, i32 0, i32 2
  %121 = bitcast i32* %120 to %struct.linelock*
  %122 = getelementptr inbounds %struct.linelock, %struct.linelock* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %7, align 8
  br label %124

124:                                              ; preds = %127, %117
  %125 = load i64, i64* %7, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load i64, i64* %7, align 8
  %129 = call %struct.tlock* @lid_to_tlock(i64 %128)
  %130 = bitcast %struct.tlock* %129 to %struct.linelock*
  store %struct.linelock* %130, %struct.linelock** %4, align 8
  %131 = load %struct.linelock*, %struct.linelock** %4, align 8
  %132 = getelementptr inbounds %struct.linelock, %struct.linelock* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %8, align 8
  %134 = load i64, i64* %7, align 8
  %135 = call i32 @txLockFree(i64 %134)
  %136 = load i64, i64* %8, align 8
  store i64 %136, i64* %7, align 8
  br label %124

137:                                              ; preds = %124
  %138 = load i64, i64* %5, align 8
  %139 = call i32 @txLockFree(i64 %138)
  %140 = call i32 (...) @TXN_UNLOCK()
  br label %141

141:                                              ; preds = %137
  %142 = load i64, i64* %6, align 8
  store i64 %142, i64* %5, align 8
  br label %25

143:                                              ; preds = %25
  %144 = load %struct.tblock*, %struct.tblock** %2, align 8
  %145 = getelementptr inbounds %struct.tblock, %struct.tblock* %144, i32 0, i32 2
  store i64 0, i64* %145, align 8
  %146 = load %struct.tblock*, %struct.tblock** %2, align 8
  %147 = getelementptr inbounds %struct.tblock, %struct.tblock* %146, i32 0, i32 3
  store i64 0, i64* %147, align 8
  %148 = load %struct.tblock*, %struct.tblock** %2, align 8
  %149 = getelementptr inbounds %struct.tblock, %struct.tblock* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %143
  %153 = load %struct.jfs_log*, %struct.jfs_log** %10, align 8
  %154 = load i64, i64* %13, align 8
  %155 = call i32 @LOGSYNC_LOCK(%struct.jfs_log* %153, i64 %154)
  %156 = load %struct.jfs_log*, %struct.jfs_log** %10, align 8
  %157 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %157, align 4
  %160 = load %struct.tblock*, %struct.tblock** %2, align 8
  %161 = getelementptr inbounds %struct.tblock, %struct.tblock* %160, i32 0, i32 0
  %162 = call i32 @list_del(i32* %161)
  %163 = load %struct.jfs_log*, %struct.jfs_log** %10, align 8
  %164 = load i64, i64* %13, align 8
  %165 = call i32 @LOGSYNC_UNLOCK(%struct.jfs_log* %163, i64 %164)
  br label %166

166:                                              ; preds = %152, %143
  ret void
}

declare dso_local i32 @jfs_info(i8*, %struct.tblock*, ...) #1

declare dso_local %struct.TYPE_2__* @JFS_SBI(i32) #1

declare dso_local %struct.tlock* @lid_to_tlock(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @hold_metapage(%struct.metapage*) #1

declare dso_local i32 @_metapage_homeok(%struct.metapage*) #1

declare dso_local i32 @LOGSYNC_LOCK(%struct.jfs_log*, i64) #1

declare dso_local i32 @logdiff(i32, i64, %struct.jfs_log*) #1

declare dso_local i32 @LOGSYNC_UNLOCK(%struct.jfs_log*, i64) #1

declare dso_local i32 @put_metapage(%struct.metapage*) #1

declare dso_local i32 @TXN_LOCK(...) #1

declare dso_local i32 @txLockFree(i64) #1

declare dso_local i32 @TXN_UNLOCK(...) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
