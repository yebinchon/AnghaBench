; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_check_perms.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_check_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }
%struct.aa_perms = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.common_audit_data = type { i32 }
%struct.audit_buffer = type opaque
%struct.TYPE_2__ = type { i32, i32, i32, i32* }
%struct.audit_buffer.0 = type opaque

@AUDIT_APPARMOR_AUDIT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@AUDIT_APPARMOR_KILL = common dso_local global i32 0, align 4
@AUDIT_APPARMOR_ALLOWED = common dso_local global i32 0, align 4
@AUDIT_APPARMOR_DENIED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_check_perms(%struct.aa_profile* %0, %struct.aa_perms* %1, i32 %2, %struct.common_audit_data* %3, void (%struct.audit_buffer*, i8*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca %struct.aa_perms*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.common_audit_data*, align 8
  %11 = alloca void (%struct.audit_buffer*, i8*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %7, align 8
  store %struct.aa_perms* %1, %struct.aa_perms** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.common_audit_data* %3, %struct.common_audit_data** %10, align 8
  store void (%struct.audit_buffer*, i8*)* %4, void (%struct.audit_buffer*, i8*)** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.aa_perms*, %struct.aa_perms** %8, align 8
  %17 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.aa_perms*, %struct.aa_perms** %8, align 8
  %21 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %19, %22
  %24 = and i32 %15, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %5
  %32 = load %struct.aa_perms*, %struct.aa_perms** %8, align 8
  %33 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.common_audit_data*, %struct.common_audit_data** %10, align 8
  %41 = icmp ne %struct.common_audit_data* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %31
  store i32 0, i32* %6, align 4
  br label %128

43:                                               ; preds = %39
  %44 = load i32, i32* @AUDIT_APPARMOR_AUDIT, align 4
  store i32 %44, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %95

45:                                               ; preds = %5
  %46 = load i32, i32* @EACCES, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.aa_perms*, %struct.aa_perms** %8, align 8
  %50 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @AUDIT_APPARMOR_KILL, align 4
  store i32 %55, i32* %12, align 4
  br label %69

56:                                               ; preds = %45
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.aa_perms*, %struct.aa_perms** %8, align 8
  %60 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %58, %61
  %63 = icmp eq i32 %57, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @AUDIT_APPARMOR_ALLOWED, align 4
  store i32 %65, i32* %12, align 4
  br label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @AUDIT_APPARMOR_DENIED, align 4
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %66, %64
  br label %69

69:                                               ; preds = %68, %54
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.aa_perms*, %struct.aa_perms** %8, align 8
  %73 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %71, %74
  %76 = icmp eq i32 %70, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i32, i32* @ENOENT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %77, %69
  %81 = load %struct.aa_perms*, %struct.aa_perms** %8, align 8
  %82 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %14, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %14, align 4
  %87 = load %struct.common_audit_data*, %struct.common_audit_data** %10, align 8
  %88 = icmp ne %struct.common_audit_data* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89, %80
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %6, align 4
  br label %128

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %43
  %96 = load %struct.common_audit_data*, %struct.common_audit_data** %10, align 8
  %97 = icmp ne %struct.common_audit_data* %96, null
  br i1 %97, label %98, label %121

98:                                               ; preds = %95
  %99 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %100 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %99, i32 0, i32 0
  %101 = load %struct.common_audit_data*, %struct.common_audit_data** %10, align 8
  %102 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %101)
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  store i32* %100, i32** %103, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.common_audit_data*, %struct.common_audit_data** %10, align 8
  %106 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %105)
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.common_audit_data*, %struct.common_audit_data** %10, align 8
  %110 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %109)
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.common_audit_data*, %struct.common_audit_data** %10, align 8
  %114 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %113)
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  store i32 %112, i32* %115, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.common_audit_data*, %struct.common_audit_data** %10, align 8
  %118 = load void (%struct.audit_buffer*, i8*)*, void (%struct.audit_buffer*, i8*)** %11, align 8
  %119 = bitcast void (%struct.audit_buffer*, i8*)* %118 to void (%struct.audit_buffer.0*, i8*)*
  %120 = call i32 @aa_audit_msg(i32 %116, %struct.common_audit_data* %117, void (%struct.audit_buffer.0*, i8*)* %119)
  br label %121

121:                                              ; preds = %98, %95
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @AUDIT_APPARMOR_ALLOWED, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i32 0, i32* %13, align 4
  br label %126

126:                                              ; preds = %125, %121
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %126, %92, %42
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.TYPE_2__* @aad(%struct.common_audit_data*) #1

declare dso_local i32 @aa_audit_msg(i32, %struct.common_audit_data*, void (%struct.audit_buffer.0*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
