; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_quota_state_to_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_quota_state_to_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qc_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@USRQUOTA = common dso_local global i64 0, align 8
@QCI_ACCT_ENABLED = common dso_local global i32 0, align 4
@FS_QUOTA_UDQ_ACCT = common dso_local global i32 0, align 4
@QCI_LIMITS_ENFORCED = common dso_local global i32 0, align 4
@FS_QUOTA_UDQ_ENFD = common dso_local global i32 0, align 4
@GRPQUOTA = common dso_local global i64 0, align 8
@FS_QUOTA_GDQ_ACCT = common dso_local global i32 0, align 4
@FS_QUOTA_GDQ_ENFD = common dso_local global i32 0, align 4
@PRJQUOTA = common dso_local global i64 0, align 8
@FS_QUOTA_PDQ_ACCT = common dso_local global i32 0, align 4
@FS_QUOTA_PDQ_ENFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qc_state*)* @quota_state_to_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quota_state_to_flags(%struct.qc_state* %0) #0 {
  %2 = alloca %struct.qc_state*, align 8
  %3 = alloca i32, align 4
  store %struct.qc_state* %0, %struct.qc_state** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.qc_state*, %struct.qc_state** %2, align 8
  %5 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = load i64, i64* @USRQUOTA, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @QCI_ACCT_ENABLED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @FS_QUOTA_UDQ_ACCT, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.qc_state*, %struct.qc_state** %2, align 8
  %20 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* @USRQUOTA, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @QCI_LIMITS_ENFORCED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load i32, i32* @FS_QUOTA_UDQ_ENFD, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %18
  %34 = load %struct.qc_state*, %struct.qc_state** %2, align 8
  %35 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* @GRPQUOTA, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @QCI_ACCT_ENABLED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load i32, i32* @FS_QUOTA_GDQ_ACCT, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %33
  %49 = load %struct.qc_state*, %struct.qc_state** %2, align 8
  %50 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* @GRPQUOTA, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @QCI_LIMITS_ENFORCED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load i32, i32* @FS_QUOTA_GDQ_ENFD, align 4
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %48
  %64 = load %struct.qc_state*, %struct.qc_state** %2, align 8
  %65 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* @PRJQUOTA, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @QCI_ACCT_ENABLED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load i32, i32* @FS_QUOTA_PDQ_ACCT, align 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %63
  %79 = load %struct.qc_state*, %struct.qc_state** %2, align 8
  %80 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* @PRJQUOTA, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @QCI_LIMITS_ENFORCED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %78
  %90 = load i32, i32* @FS_QUOTA_PDQ_ENFD, align 4
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %78
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
