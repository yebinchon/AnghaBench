; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, i64 }
%struct.gfs2_quota_data = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_quota_sync(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.gfs2_quota_data**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %6, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.gfs2_quota_data** @kcalloc(i32 %19, i32 8, i32 %20)
  store %struct.gfs2_quota_data** %21, %struct.gfs2_quota_data*** %7, align 8
  %22 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %23 = icmp ne %struct.gfs2_quota_data** %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %125

27:                                               ; preds = %2
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %29 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %32 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  br label %35

35:                                               ; preds = %116, %27
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %59, %35
  %37 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %38 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %38, i64 %40
  %42 = call i32 @qd_fish(%struct.gfs2_sbd* %37, %struct.gfs2_quota_data** %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %36
  %46 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %46, i64 %48
  %50 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %49, align 8
  %51 = icmp ne %struct.gfs2_quota_data* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %45, %36
  br label %60

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %60

59:                                               ; preds = %53
  br label %36

60:                                               ; preds = %58, %52
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %108

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %69 = call i32 @do_sync(i32 %67, %struct.gfs2_quota_data** %68)
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %88, %73
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %80 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %82, i64 %84
  %86 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %85, align 8
  %87 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %86, i32 0, i32 0
  store i64 %81, i64* %87, align 8
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %10, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %74

91:                                               ; preds = %74
  br label %92

92:                                               ; preds = %91, %70
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %104, %92
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %99 = load i32, i32* %10, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %98, i64 %100
  %102 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %101, align 8
  %103 = call i32 @qd_unlock(%struct.gfs2_quota_data* %102)
  br label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %10, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %93

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107, %60
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 %113, %114
  br label %116

116:                                              ; preds = %112, %109
  %117 = phi i1 [ false, %109 ], [ %115, %112 ]
  br i1 %117, label %35, label %118

118:                                              ; preds = %116
  %119 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %120 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %119, i32 0, i32 0
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %123 = call i32 @kfree(%struct.gfs2_quota_data** %122)
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %118, %24
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.gfs2_quota_data** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qd_fish(%struct.gfs2_sbd*, %struct.gfs2_quota_data**) #1

declare dso_local i32 @do_sync(i32, %struct.gfs2_quota_data**) #1

declare dso_local i32 @qd_unlock(%struct.gfs2_quota_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.gfs2_quota_data**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
