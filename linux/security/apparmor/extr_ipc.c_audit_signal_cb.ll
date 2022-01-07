; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_audit_signal_cb.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_audit_signal_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32 }

@AA_SIGNAL_PERM_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c" requested_mask=\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" denied_mask=\00", align 1
@SIGUNKNOWN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"signal=unknown(%d)\00", align 1
@MAXMAPPED_SIGNAME = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c" signal=%s\00", align 1
@sig_names = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c" signal=rtmin+%d\00", align 1
@SIGRT_BASE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c" peer=\00", align 1
@FLAGS_NONE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*, i8*)* @audit_signal_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_signal_cb(%struct.audit_buffer* %0, i8* %1) #0 {
  %3 = alloca %struct.audit_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.common_audit_data*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.common_audit_data*
  store %struct.common_audit_data* %7, %struct.common_audit_data** %5, align 8
  %8 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %9 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @AA_SIGNAL_PERM_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %17 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %19 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %20 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @audit_signal_mask(%struct.audit_buffer* %18, i32 %22)
  %24 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %25 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AA_SIGNAL_PERM_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %15
  %32 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %33 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %35 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %36 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @audit_signal_mask(%struct.audit_buffer* %34, i32 %38)
  br label %40

40:                                               ; preds = %31, %15
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %43 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SIGUNKNOWN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %50 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %51 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %82

55:                                               ; preds = %41
  %56 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %57 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MAXMAPPED_SIGNAME, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %64 = load i32*, i32** @sig_names, align 8
  %65 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %66 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %81

72:                                               ; preds = %55
  %73 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %74 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %75 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SIGRT_BASE, align 8
  %79 = sub i64 %77, %78
  %80 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %79)
  br label %81

81:                                               ; preds = %72, %62
  br label %82

82:                                               ; preds = %81, %48
  %83 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %84 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %85 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %86 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %87 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @labels_ns(i32 %89)
  %91 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %92 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FLAGS_NONE, align 4
  %96 = load i32, i32* @GFP_ATOMIC, align 4
  %97 = call i32 @aa_label_xaudit(%struct.audit_buffer* %85, i32 %90, i32 %94, i32 %95, i32 %96)
  ret void
}

declare dso_local %struct.TYPE_2__* @aad(%struct.common_audit_data*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @audit_signal_mask(%struct.audit_buffer*, i32) #1

declare dso_local i32 @aa_label_xaudit(%struct.audit_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @labels_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
