; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-perl.c_perl_process_event_generic.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-perl.c_perl_process_event_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.perf_sample = type { i32, i64 }
%struct.evsel = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@dSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"process_event\00", align 1
@ENTER = common dso_local global i32 0, align 4
@SAVETMPS = common dso_local global i32 0, align 4
@SP = common dso_local global i32 0, align 4
@PUTBACK = common dso_local global i32 0, align 4
@G_SCALAR = common dso_local global i32 0, align 4
@SPAGAIN = common dso_local global i32 0, align 4
@FREETMPS = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.perf_event*, %struct.perf_sample*, %struct.evsel*)* @perl_process_event_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perl_process_event_generic(%union.perf_event* %0, %struct.perf_sample* %1, %struct.evsel* %2) #0 {
  %4 = alloca %union.perf_event*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca %struct.evsel*, align 8
  store %union.perf_event* %0, %union.perf_event** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  store %struct.evsel* %2, %struct.evsel** %6, align 8
  %7 = load i32, i32* @dSP, align 4
  %8 = call i32 @get_cv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %54

11:                                               ; preds = %3
  %12 = load i32, i32* @ENTER, align 4
  %13 = load i32, i32* @SAVETMPS, align 4
  %14 = load i32, i32* @SP, align 4
  %15 = call i32 @PUSHMARK(i32 %14)
  %16 = load %union.perf_event*, %union.perf_event** %4, align 8
  %17 = bitcast %union.perf_event* %16 to i8*
  %18 = load %union.perf_event*, %union.perf_event** %4, align 8
  %19 = bitcast %union.perf_event* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @newSVpvn(i8* %17, i32 %21)
  %23 = call i32 @sv_2mortal(i32 %22)
  %24 = call i32 @XPUSHs(i32 %23)
  %25 = load %struct.evsel*, %struct.evsel** %6, align 8
  %26 = getelementptr inbounds %struct.evsel, %struct.evsel* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to i8*
  %29 = call i32 @newSVpvn(i8* %28, i32 4)
  %30 = call i32 @sv_2mortal(i32 %29)
  %31 = call i32 @XPUSHs(i32 %30)
  %32 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %33 = bitcast %struct.perf_sample* %32 to i8*
  %34 = call i32 @newSVpvn(i8* %33, i32 16)
  %35 = call i32 @sv_2mortal(i32 %34)
  %36 = call i32 @XPUSHs(i32 %35)
  %37 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %38 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %42 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @newSVpvn(i8* %40, i32 %43)
  %45 = call i32 @sv_2mortal(i32 %44)
  %46 = call i32 @XPUSHs(i32 %45)
  %47 = load i32, i32* @PUTBACK, align 4
  %48 = load i32, i32* @G_SCALAR, align 4
  %49 = call i32 @call_pv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @SPAGAIN, align 4
  %51 = load i32, i32* @PUTBACK, align 4
  %52 = load i32, i32* @FREETMPS, align 4
  %53 = load i32, i32* @LEAVE, align 4
  br label %54

54:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @get_cv(i8*, i32) #1

declare dso_local i32 @PUSHMARK(i32) #1

declare dso_local i32 @XPUSHs(i32) #1

declare dso_local i32 @sv_2mortal(i32) #1

declare dso_local i32 @newSVpvn(i8*, i32) #1

declare dso_local i32 @call_pv(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
