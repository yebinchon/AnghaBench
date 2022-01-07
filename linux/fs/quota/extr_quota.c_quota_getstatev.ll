; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_quota_getstatev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_quota_getstatev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.super_block*, %struct.qc_state*)* }
%struct.qc_state = type { %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.fs_quota_statv = type { %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FS_QSTAT_VERSION = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i64 0, align 8
@GRPQUOTA = common dso_local global i64 0, align 8
@PRJQUOTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, %struct.fs_quota_statv*)* @quota_getstatev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quota_getstatev(%struct.super_block* %0, i32 %1, %struct.fs_quota_statv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fs_quota_statv*, align 8
  %8 = alloca %struct.qc_state, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fs_quota_statv* %2, %struct.fs_quota_statv** %7, align 8
  %10 = call i32 @memset(%struct.qc_state* %8, i32 0, i32 96)
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, %struct.qc_state*)** %14, align 8
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = call i32 %15(%struct.super_block* %16, %struct.qc_state* %8)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %197

22:                                               ; preds = %3
  %23 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %24 = bitcast %struct.fs_quota_statv* %23 to %struct.qc_state*
  %25 = call i32 @memset(%struct.qc_state* %24, i32 0, i32 96)
  %26 = load i32, i32* @FS_QSTAT_VERSION, align 4
  %27 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %28 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %27, i32 0, i32 12
  store i32 %26, i32* %28, align 8
  %29 = call i32 @quota_state_to_flags(%struct.qc_state* %8)
  %30 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %31 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %30, i32 0, i32 11
  store i32 %29, i32* %31, align 4
  %32 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %33 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %22
  %37 = load i32, i32* @ENOSYS, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %197

39:                                               ; preds = %22
  %40 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %43 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %42, i32 0, i32 10
  store i32 %41, i32* %43, align 8
  %44 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %52 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 8
  %53 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %61 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 4
  %62 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %70 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %79 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %88 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load i64, i64* @USRQUOTA, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %39
  %97 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = load i64, i64* @USRQUOTA, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %104 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  store i64 %102, i64* %105, align 8
  %106 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load i64, i64* @USRQUOTA, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %113 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  %115 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = load i64, i64* @USRQUOTA, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %122 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  br label %124

124:                                              ; preds = %96, %39
  %125 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = load i64, i64* @GRPQUOTA, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %160

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 0
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = load i64, i64* @GRPQUOTA, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %140 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  store i64 %138, i64* %141, align 8
  %142 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 0
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = load i64, i64* @GRPQUOTA, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %149 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 4
  %151 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 0
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = load i64, i64* @GRPQUOTA, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %158 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  br label %160

160:                                              ; preds = %132, %124
  %161 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 0
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = load i64, i64* @PRJQUOTA, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %196

168:                                              ; preds = %160
  %169 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 0
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = load i64, i64* @PRJQUOTA, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %176 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  store i64 %174, i64* %177, align 8
  %178 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 0
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = load i64, i64* @PRJQUOTA, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %185 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 1
  store i32 %183, i32* %186, align 4
  %187 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %8, i32 0, i32 0
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = load i64, i64* @PRJQUOTA, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.fs_quota_statv*, %struct.fs_quota_statv** %7, align 8
  %194 = getelementptr inbounds %struct.fs_quota_statv, %struct.fs_quota_statv* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  br label %196

196:                                              ; preds = %168, %160
  store i32 0, i32* %4, align 4
  br label %197

197:                                              ; preds = %196, %36, %20
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @memset(%struct.qc_state*, i32, i32) #1

declare dso_local i32 @quota_state_to_flags(%struct.qc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
