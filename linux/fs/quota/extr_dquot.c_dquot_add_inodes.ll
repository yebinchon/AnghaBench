; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_add_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_add_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.dquot_warn = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@DQ_FAKE_B = common dso_local global i32 0, align 4
@QUOTA_NL_IHARDWARN = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@QUOTA_NL_ISOFTLONGWARN = common dso_local global i32 0, align 4
@QUOTA_NL_ISOFTWARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*, i64, %struct.dquot_warn*)* @dquot_add_inodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dquot_add_inodes(%struct.dquot* %0, i64 %1, %struct.dquot_warn* %2) #0 {
  %4 = alloca %struct.dquot*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dquot_warn*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.dquot_warn* %2, %struct.dquot_warn** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.dquot*, %struct.dquot** %4, align 8
  %10 = getelementptr inbounds %struct.dquot, %struct.dquot* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.dquot*, %struct.dquot** %4, align 8
  %13 = getelementptr inbounds %struct.dquot, %struct.dquot* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %7, align 8
  %18 = load %struct.dquot*, %struct.dquot** %4, align 8
  %19 = getelementptr inbounds %struct.dquot, %struct.dquot* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dquot*, %struct.dquot** %4, align 8
  %22 = getelementptr inbounds %struct.dquot, %struct.dquot* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @sb_has_quota_limits_enabled(i32 %20, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32, i32* @DQ_FAKE_B, align 4
  %29 = load %struct.dquot*, %struct.dquot** %4, align 8
  %30 = getelementptr inbounds %struct.dquot, %struct.dquot* %29, i32 0, i32 4
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %3
  br label %138

34:                                               ; preds = %27
  %35 = load %struct.dquot*, %struct.dquot** %4, align 8
  %36 = getelementptr inbounds %struct.dquot, %struct.dquot* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.dquot*, %struct.dquot** %4, align 8
  %43 = getelementptr inbounds %struct.dquot, %struct.dquot* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %41, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.dquot*, %struct.dquot** %4, align 8
  %49 = call i32 @ignore_hardlimit(%struct.dquot* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = load %struct.dquot_warn*, %struct.dquot_warn** %6, align 8
  %53 = load %struct.dquot*, %struct.dquot** %4, align 8
  %54 = load i32, i32* @QUOTA_NL_IHARDWARN, align 4
  %55 = call i32 @prepare_warning(%struct.dquot_warn* %52, %struct.dquot* %53, i32 %54)
  %56 = load i32, i32* @EDQUOT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %143

58:                                               ; preds = %47, %40, %34
  %59 = load %struct.dquot*, %struct.dquot** %4, align 8
  %60 = getelementptr inbounds %struct.dquot, %struct.dquot* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %58
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.dquot*, %struct.dquot** %4, align 8
  %67 = getelementptr inbounds %struct.dquot, %struct.dquot* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %65, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %64
  %72 = load %struct.dquot*, %struct.dquot** %4, align 8
  %73 = getelementptr inbounds %struct.dquot, %struct.dquot* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %71
  %78 = call i64 (...) @ktime_get_real_seconds()
  %79 = load %struct.dquot*, %struct.dquot** %4, align 8
  %80 = getelementptr inbounds %struct.dquot, %struct.dquot* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %78, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = load %struct.dquot*, %struct.dquot** %4, align 8
  %86 = call i32 @ignore_hardlimit(%struct.dquot* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = load %struct.dquot_warn*, %struct.dquot_warn** %6, align 8
  %90 = load %struct.dquot*, %struct.dquot** %4, align 8
  %91 = load i32, i32* @QUOTA_NL_ISOFTLONGWARN, align 4
  %92 = call i32 @prepare_warning(%struct.dquot_warn* %89, %struct.dquot* %90, i32 %91)
  %93 = load i32, i32* @EDQUOT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %143

95:                                               ; preds = %84, %77, %71, %64, %58
  %96 = load %struct.dquot*, %struct.dquot** %4, align 8
  %97 = getelementptr inbounds %struct.dquot, %struct.dquot* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %137

101:                                              ; preds = %95
  %102 = load i64, i64* %7, align 8
  %103 = load %struct.dquot*, %struct.dquot** %4, align 8
  %104 = getelementptr inbounds %struct.dquot, %struct.dquot* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %102, %106
  br i1 %107, label %108, label %137

108:                                              ; preds = %101
  %109 = load %struct.dquot*, %struct.dquot** %4, align 8
  %110 = getelementptr inbounds %struct.dquot, %struct.dquot* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %108
  %115 = load %struct.dquot_warn*, %struct.dquot_warn** %6, align 8
  %116 = load %struct.dquot*, %struct.dquot** %4, align 8
  %117 = load i32, i32* @QUOTA_NL_ISOFTWARN, align 4
  %118 = call i32 @prepare_warning(%struct.dquot_warn* %115, %struct.dquot* %116, i32 %117)
  %119 = call i64 (...) @ktime_get_real_seconds()
  %120 = load %struct.dquot*, %struct.dquot** %4, align 8
  %121 = getelementptr inbounds %struct.dquot, %struct.dquot* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call %struct.TYPE_8__* @sb_dqopt(i32 %122)
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load %struct.dquot*, %struct.dquot** %4, align 8
  %127 = getelementptr inbounds %struct.dquot, %struct.dquot* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %119, %132
  %134 = load %struct.dquot*, %struct.dquot** %4, align 8
  %135 = getelementptr inbounds %struct.dquot, %struct.dquot* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  store i64 %133, i64* %136, align 8
  br label %137

137:                                              ; preds = %114, %108, %101, %95
  br label %138

138:                                              ; preds = %137, %33
  %139 = load i64, i64* %7, align 8
  %140 = load %struct.dquot*, %struct.dquot** %4, align 8
  %141 = getelementptr inbounds %struct.dquot, %struct.dquot* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  store i64 %139, i64* %142, align 8
  br label %143

143:                                              ; preds = %138, %88, %51
  %144 = load %struct.dquot*, %struct.dquot** %4, align 8
  %145 = getelementptr inbounds %struct.dquot, %struct.dquot* %144, i32 0, i32 0
  %146 = call i32 @spin_unlock(i32* %145)
  %147 = load i32, i32* %8, align 4
  ret i32 %147
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sb_has_quota_limits_enabled(i32, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ignore_hardlimit(%struct.dquot*) #1

declare dso_local i32 @prepare_warning(%struct.dquot_warn*, %struct.dquot*, i32) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local %struct.TYPE_8__* @sb_dqopt(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
