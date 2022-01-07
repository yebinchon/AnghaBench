; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_audit.c_aa_audit.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_audit.c_aa_audit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }
%struct.common_audit_data = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.audit_buffer = type opaque
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.audit_buffer.0 = type opaque

@AUDIT_APPARMOR_AUTO = common dso_local global i32 0, align 4
@AUDIT_ALL = common dso_local global i64 0, align 8
@AUDIT_APPARMOR_AUDIT = common dso_local global i32 0, align 4
@AUDIT_APPARMOR_ALLOWED = common dso_local global i32 0, align 4
@AUDIT_APPARMOR_DENIED = common dso_local global i32 0, align 4
@AUDIT_QUIET = common dso_local global i64 0, align 8
@AUDIT_APPARMOR_KILL = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@LSM_AUDIT_DATA_TASK = common dso_local global i64 0, align 8
@current = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_audit(i32 %0, %struct.aa_profile* %1, %struct.common_audit_data* %2, void (%struct.audit_buffer*, i8*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca %struct.common_audit_data*, align 8
  %9 = alloca void (%struct.audit_buffer*, i8*)*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.aa_profile* %1, %struct.aa_profile** %7, align 8
  store %struct.common_audit_data* %2, %struct.common_audit_data** %8, align 8
  store void (%struct.audit_buffer*, i8*)* %3, void (%struct.audit_buffer*, i8*)** %9, align 8
  %10 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %11 = icmp ne %struct.aa_profile* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @AA_BUG(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @AUDIT_APPARMOR_AUTO, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %4
  %19 = load %struct.common_audit_data*, %struct.common_audit_data** %8, align 8
  %20 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %18
  %29 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %30 = call i64 @AUDIT_MODE(%struct.aa_profile* %29)
  %31 = load i64, i64* @AUDIT_ALL, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %133

34:                                               ; preds = %28
  %35 = load i32, i32* @AUDIT_APPARMOR_AUDIT, align 4
  store i32 %35, i32* %6, align 4
  br label %45

36:                                               ; preds = %18
  %37 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %38 = call i64 @COMPLAIN_MODE(%struct.aa_profile* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @AUDIT_APPARMOR_ALLOWED, align 4
  store i32 %41, i32* %6, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @AUDIT_APPARMOR_DENIED, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %34
  br label %46

46:                                               ; preds = %45, %4
  %47 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %48 = call i64 @AUDIT_MODE(%struct.aa_profile* %47)
  %49 = load i64, i64* @AUDIT_QUIET, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @AUDIT_APPARMOR_DENIED, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %57 = call i64 @AUDIT_MODE(%struct.aa_profile* %56)
  %58 = load i64, i64* @AUDIT_QUIET, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55, %46
  %61 = load %struct.common_audit_data*, %struct.common_audit_data** %8, align 8
  %62 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %5, align 4
  br label %133

65:                                               ; preds = %55, %51
  %66 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %67 = call i64 @KILL_MODE(%struct.aa_profile* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @AUDIT_APPARMOR_DENIED, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @AUDIT_APPARMOR_KILL, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %73, %69, %65
  %76 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %77 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %76, i32 0, i32 0
  %78 = load %struct.common_audit_data*, %struct.common_audit_data** %8, align 8
  %79 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i32* %77, i32** %80, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.common_audit_data*, %struct.common_audit_data** %8, align 8
  %83 = load void (%struct.audit_buffer*, i8*)*, void (%struct.audit_buffer*, i8*)** %9, align 8
  %84 = bitcast void (%struct.audit_buffer*, i8*)* %83 to void (%struct.audit_buffer.0*, i8*)*
  %85 = call i32 @aa_audit_msg(i32 %81, %struct.common_audit_data* %82, void (%struct.audit_buffer.0*, i8*)* %84)
  %86 = load %struct.common_audit_data*, %struct.common_audit_data** %8, align 8
  %87 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %86)
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @AUDIT_APPARMOR_KILL, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %75
  %93 = load i32, i32* @SIGKILL, align 4
  %94 = load %struct.common_audit_data*, %struct.common_audit_data** %8, align 8
  %95 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @LSM_AUDIT_DATA_TASK, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %92
  %100 = load %struct.common_audit_data*, %struct.common_audit_data** %8, align 8
  %101 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.common_audit_data*, %struct.common_audit_data** %8, align 8
  %107 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  br label %112

110:                                              ; preds = %99, %92
  %111 = load i64, i64* @current, align 8
  br label %112

112:                                              ; preds = %110, %105
  %113 = phi i64 [ %109, %105 ], [ %111, %110 ]
  %114 = call i32 @send_sig_info(i32 %93, i32* null, i64 %113)
  br label %115

115:                                              ; preds = %112, %75
  %116 = load %struct.common_audit_data*, %struct.common_audit_data** %8, align 8
  %117 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %116)
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @AUDIT_APPARMOR_ALLOWED, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %115
  %123 = load %struct.common_audit_data*, %struct.common_audit_data** %8, align 8
  %124 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %123)
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @complain_error(i32 %126)
  store i32 %127, i32* %5, align 4
  br label %133

128:                                              ; preds = %115
  %129 = load %struct.common_audit_data*, %struct.common_audit_data** %8, align 8
  %130 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %129)
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %128, %122, %60, %33
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.TYPE_4__* @aad(%struct.common_audit_data*) #1

declare dso_local i64 @AUDIT_MODE(%struct.aa_profile*) #1

declare dso_local i64 @COMPLAIN_MODE(%struct.aa_profile*) #1

declare dso_local i64 @KILL_MODE(%struct.aa_profile*) #1

declare dso_local i32 @aa_audit_msg(i32, %struct.common_audit_data*, void (%struct.audit_buffer.0*, i8*)*) #1

declare dso_local i32 @send_sig_info(i32, i32*, i64) #1

declare dso_local i32 @complain_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
