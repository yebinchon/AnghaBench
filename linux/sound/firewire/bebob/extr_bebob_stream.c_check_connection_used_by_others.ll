; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_check_connection_used_by_others.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_check_connection_used_by_others.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { %struct.TYPE_2__*, %struct.cmp_connection, %struct.cmp_connection, %struct.amdtp_stream }
%struct.TYPE_2__ = type { i32 }
%struct.cmp_connection = type { i64, i32 }
%struct.amdtp_stream = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Connection established by others: %cPCR[%d]\0A\00", align 1
@CMP_OUTPUT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*, %struct.amdtp_stream*)* @check_connection_used_by_others to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_connection_used_by_others(%struct.snd_bebob* %0, %struct.amdtp_stream* %1) #0 {
  %3 = alloca %struct.snd_bebob*, align 8
  %4 = alloca %struct.amdtp_stream*, align 8
  %5 = alloca %struct.cmp_connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %3, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %4, align 8
  %8 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %9 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %10 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %9, i32 0, i32 3
  %11 = icmp eq %struct.amdtp_stream* %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %14 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %13, i32 0, i32 2
  store %struct.cmp_connection* %14, %struct.cmp_connection** %5, align 8
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %17 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %16, i32 0, i32 1
  store %struct.cmp_connection* %17, %struct.cmp_connection** %5, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.cmp_connection*, %struct.cmp_connection** %5, align 8
  %20 = call i32 @cmp_connection_check_used(%struct.cmp_connection* %19, i32* %6)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %28 = call i32 @amdtp_stream_running(%struct.amdtp_stream* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  %31 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %32 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.cmp_connection*, %struct.cmp_connection** %5, align 8
  %36 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CMP_OUTPUT, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 111, i32 105
  %42 = trunc i32 %41 to i8
  %43 = load %struct.cmp_connection*, %struct.cmp_connection** %5, align 8
  %44 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8 signext %42, i32 %45)
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %30, %26, %23, %18
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @cmp_connection_check_used(%struct.cmp_connection*, i32*) #1

declare dso_local i32 @amdtp_stream_running(%struct.amdtp_stream*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
