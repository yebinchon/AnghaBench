; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_quota_enable.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_quota_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quota_info = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@DQUOT_QUOTA_SYS_FILE = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@FS_QUOTA_UDQ_ACCT = common dso_local global i32 0, align 4
@FS_QUOTA_GDQ_ACCT = common dso_local global i32 0, align 4
@FS_QUOTA_PDQ_ACCT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAXQUOTAS = common dso_local global i32 0, align 4
@DQUOT_LIMITS_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @dquot_quota_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dquot_quota_enable(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.quota_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.quota_info* @sb_dqopt(%struct.super_block* %9)
  store %struct.quota_info* %10, %struct.quota_info** %8, align 8
  %11 = load %struct.quota_info*, %struct.quota_info** %8, align 8
  %12 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DQUOT_QUOTA_SYS_FILE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %112

20:                                               ; preds = %2
  %21 = load i32, i32* @FS_QUOTA_UDQ_ACCT, align 4
  %22 = load i32, i32* @FS_QUOTA_GDQ_ACCT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FS_QUOTA_PDQ_ACCT, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %112

34:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %77, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MAXQUOTAS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %80

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @qtype_enforce_flag(i32 %41)
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %77

46:                                               ; preds = %39
  %47 = load %struct.super_block*, %struct.super_block** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @sb_has_quota_usage_enabled(%struct.super_block* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %112

54:                                               ; preds = %46
  %55 = load %struct.quota_info*, %struct.quota_info** %8, align 8
  %56 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.quota_info*, %struct.quota_info** %8, align 8
  %64 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DQUOT_LIMITS_ENABLED, align 4
  %72 = call i32 @dquot_enable(i32 %61, i32 %62, i32 %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %54
  br label %81

76:                                               ; preds = %54
  br label %77

77:                                               ; preds = %76, %45
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %35

80:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %112

81:                                               ; preds = %75
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %99, %81
  %85 = load i32, i32* %7, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @qtype_enforce_flag(i32 %89)
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.super_block*, %struct.super_block** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @DQUOT_LIMITS_ENABLED, align 4
  %97 = call i32 @dquot_disable(%struct.super_block* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %87
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %7, align 4
  br label %84

102:                                              ; preds = %84
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @EBUSY, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* @EEXIST, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %80, %51, %31, %17
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.quota_info* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @qtype_enforce_flag(i32) #1

declare dso_local i32 @sb_has_quota_usage_enabled(%struct.super_block*, i32) #1

declare dso_local i32 @dquot_enable(i32, i32, i32, i32) #1

declare dso_local i32 @dquot_disable(%struct.super_block*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
