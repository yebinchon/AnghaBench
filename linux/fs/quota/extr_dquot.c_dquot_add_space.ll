; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_add_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_add_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.super_block* }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.super_block = type { i32 }
%struct.dquot_warn = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@DQ_FAKE_B = common dso_local global i32 0, align 4
@DQUOT_SPACE_WARN = common dso_local global i32 0, align 4
@QUOTA_NL_BHARDWARN = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@QUOTA_NL_BSOFTLONGWARN = common dso_local global i32 0, align 4
@QUOTA_NL_BSOFTWARN = common dso_local global i32 0, align 4
@DQUOT_SPACE_NOFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*, i64, i64, i32, %struct.dquot_warn*)* @dquot_add_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dquot_add_space(%struct.dquot* %0, i64 %1, i64 %2, i32 %3, %struct.dquot_warn* %4) #0 {
  %6 = alloca %struct.dquot*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dquot_warn*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.dquot_warn* %4, %struct.dquot_warn** %10, align 8
  %14 = load %struct.dquot*, %struct.dquot** %6, align 8
  %15 = getelementptr inbounds %struct.dquot, %struct.dquot* %14, i32 0, i32 4
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.dquot*, %struct.dquot** %6, align 8
  %18 = getelementptr inbounds %struct.dquot, %struct.dquot* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.super_block*, %struct.super_block** %12, align 8
  %21 = load %struct.dquot*, %struct.dquot** %6, align 8
  %22 = getelementptr inbounds %struct.dquot, %struct.dquot* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @sb_has_quota_limits_enabled(%struct.super_block* %20, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %5
  %28 = load i32, i32* @DQ_FAKE_B, align 4
  %29 = load %struct.dquot*, %struct.dquot** %6, align 8
  %30 = getelementptr inbounds %struct.dquot, %struct.dquot* %29, i32 0, i32 3
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %5
  br label %170

34:                                               ; preds = %27
  %35 = load %struct.dquot*, %struct.dquot** %6, align 8
  %36 = getelementptr inbounds %struct.dquot, %struct.dquot* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.dquot*, %struct.dquot** %6, align 8
  %40 = getelementptr inbounds %struct.dquot, %struct.dquot* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %38, %42
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %45, %46
  store i64 %47, i64* %11, align 8
  %48 = load %struct.dquot*, %struct.dquot** %6, align 8
  %49 = getelementptr inbounds %struct.dquot, %struct.dquot* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %34
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.dquot*, %struct.dquot** %6, align 8
  %56 = getelementptr inbounds %struct.dquot, %struct.dquot* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %54, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %53
  %61 = load %struct.dquot*, %struct.dquot** %6, align 8
  %62 = call i32 @ignore_hardlimit(%struct.dquot* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @DQUOT_SPACE_WARN, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.dquot_warn*, %struct.dquot_warn** %10, align 8
  %71 = load %struct.dquot*, %struct.dquot** %6, align 8
  %72 = load i32, i32* @QUOTA_NL_BHARDWARN, align 4
  %73 = call i32 @prepare_warning(%struct.dquot_warn* %70, %struct.dquot* %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i32, i32* @EDQUOT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %13, align 4
  br label %170

77:                                               ; preds = %60, %53, %34
  %78 = load %struct.dquot*, %struct.dquot** %6, align 8
  %79 = getelementptr inbounds %struct.dquot, %struct.dquot* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %120

83:                                               ; preds = %77
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.dquot*, %struct.dquot** %6, align 8
  %86 = getelementptr inbounds %struct.dquot, %struct.dquot* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %84, %88
  br i1 %89, label %90, label %120

90:                                               ; preds = %83
  %91 = load %struct.dquot*, %struct.dquot** %6, align 8
  %92 = getelementptr inbounds %struct.dquot, %struct.dquot* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %120

96:                                               ; preds = %90
  %97 = call i64 (...) @ktime_get_real_seconds()
  %98 = load %struct.dquot*, %struct.dquot** %6, align 8
  %99 = getelementptr inbounds %struct.dquot, %struct.dquot* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp sge i64 %97, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %96
  %104 = load %struct.dquot*, %struct.dquot** %6, align 8
  %105 = call i32 @ignore_hardlimit(%struct.dquot* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %120, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @DQUOT_SPACE_WARN, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.dquot_warn*, %struct.dquot_warn** %10, align 8
  %114 = load %struct.dquot*, %struct.dquot** %6, align 8
  %115 = load i32, i32* @QUOTA_NL_BSOFTLONGWARN, align 4
  %116 = call i32 @prepare_warning(%struct.dquot_warn* %113, %struct.dquot* %114, i32 %115)
  br label %117

117:                                              ; preds = %112, %107
  %118 = load i32, i32* @EDQUOT, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %13, align 4
  br label %170

120:                                              ; preds = %103, %96, %90, %83, %77
  %121 = load %struct.dquot*, %struct.dquot** %6, align 8
  %122 = getelementptr inbounds %struct.dquot, %struct.dquot* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %169

126:                                              ; preds = %120
  %127 = load i64, i64* %11, align 8
  %128 = load %struct.dquot*, %struct.dquot** %6, align 8
  %129 = getelementptr inbounds %struct.dquot, %struct.dquot* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %127, %131
  br i1 %132, label %133, label %169

133:                                              ; preds = %126
  %134 = load %struct.dquot*, %struct.dquot** %6, align 8
  %135 = getelementptr inbounds %struct.dquot, %struct.dquot* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %169

139:                                              ; preds = %133
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @DQUOT_SPACE_WARN, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %165

144:                                              ; preds = %139
  %145 = load %struct.dquot_warn*, %struct.dquot_warn** %10, align 8
  %146 = load %struct.dquot*, %struct.dquot** %6, align 8
  %147 = load i32, i32* @QUOTA_NL_BSOFTWARN, align 4
  %148 = call i32 @prepare_warning(%struct.dquot_warn* %145, %struct.dquot* %146, i32 %147)
  %149 = call i64 (...) @ktime_get_real_seconds()
  %150 = load %struct.super_block*, %struct.super_block** %12, align 8
  %151 = call %struct.TYPE_8__* @sb_dqopt(%struct.super_block* %150)
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load %struct.dquot*, %struct.dquot** %6, align 8
  %155 = getelementptr inbounds %struct.dquot, %struct.dquot* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %149, %160
  %162 = load %struct.dquot*, %struct.dquot** %6, align 8
  %163 = getelementptr inbounds %struct.dquot, %struct.dquot* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 4
  store i64 %161, i64* %164, align 8
  br label %168

165:                                              ; preds = %139
  %166 = load i32, i32* @EDQUOT, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %13, align 4
  br label %170

168:                                              ; preds = %144
  br label %169

169:                                              ; preds = %168, %133, %126, %120
  br label %170

170:                                              ; preds = %169, %165, %117, %74, %33
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @DQUOT_SPACE_NOFAIL, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  store i32 0, i32* %13, align 4
  br label %176

176:                                              ; preds = %175, %170
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %192, label %179

179:                                              ; preds = %176
  %180 = load i64, i64* %8, align 8
  %181 = load %struct.dquot*, %struct.dquot** %6, align 8
  %182 = getelementptr inbounds %struct.dquot, %struct.dquot* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, %180
  store i64 %185, i64* %183, align 8
  %186 = load i64, i64* %7, align 8
  %187 = load %struct.dquot*, %struct.dquot** %6, align 8
  %188 = getelementptr inbounds %struct.dquot, %struct.dquot* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %190, %186
  store i64 %191, i64* %189, align 8
  br label %192

192:                                              ; preds = %179, %176
  %193 = load %struct.dquot*, %struct.dquot** %6, align 8
  %194 = getelementptr inbounds %struct.dquot, %struct.dquot* %193, i32 0, i32 0
  %195 = call i32 @spin_unlock(i32* %194)
  %196 = load i32, i32* %13, align 4
  ret i32 %196
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sb_has_quota_limits_enabled(%struct.super_block*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ignore_hardlimit(%struct.dquot*) #1

declare dso_local i32 @prepare_warning(%struct.dquot_warn*, %struct.dquot*, i32) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local %struct.TYPE_8__* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
