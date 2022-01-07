; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_ntp_log.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_ntp_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_ntp_data = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@AUDIT_NTP_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@AUDIT_NTP_FREQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@AUDIT_NTP_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"tai\00", align 1
@AUDIT_NTP_TAI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"tick\00", align 1
@AUDIT_NTP_TICK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"adjust\00", align 1
@AUDIT_NTP_ADJUST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__audit_ntp_log(%struct.audit_ntp_data* %0) #0 {
  %2 = alloca %struct.audit_ntp_data*, align 8
  store %struct.audit_ntp_data* %0, %struct.audit_ntp_data** %2, align 8
  %3 = load %struct.audit_ntp_data*, %struct.audit_ntp_data** %2, align 8
  %4 = load i32, i32* @AUDIT_NTP_OFFSET, align 4
  %5 = call i32 @audit_log_ntp_val(%struct.audit_ntp_data* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load %struct.audit_ntp_data*, %struct.audit_ntp_data** %2, align 8
  %7 = load i32, i32* @AUDIT_NTP_FREQ, align 4
  %8 = call i32 @audit_log_ntp_val(%struct.audit_ntp_data* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load %struct.audit_ntp_data*, %struct.audit_ntp_data** %2, align 8
  %10 = load i32, i32* @AUDIT_NTP_STATUS, align 4
  %11 = call i32 @audit_log_ntp_val(%struct.audit_ntp_data* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load %struct.audit_ntp_data*, %struct.audit_ntp_data** %2, align 8
  %13 = load i32, i32* @AUDIT_NTP_TAI, align 4
  %14 = call i32 @audit_log_ntp_val(%struct.audit_ntp_data* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %13)
  %15 = load %struct.audit_ntp_data*, %struct.audit_ntp_data** %2, align 8
  %16 = load i32, i32* @AUDIT_NTP_TICK, align 4
  %17 = call i32 @audit_log_ntp_val(%struct.audit_ntp_data* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %16)
  %18 = load %struct.audit_ntp_data*, %struct.audit_ntp_data** %2, align 8
  %19 = load i32, i32* @AUDIT_NTP_ADJUST, align 4
  %20 = call i32 @audit_log_ntp_val(%struct.audit_ntp_data* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %19)
  ret void
}

declare dso_local i32 @audit_log_ntp_val(%struct.audit_ntp_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
