; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_keep_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_keep_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { %struct.cmp_connection, %struct.snd_bebob_stream_formation*, %struct.cmp_connection, %struct.snd_bebob_stream_formation*, %struct.amdtp_stream }
%struct.cmp_connection = type { i32 }
%struct.snd_bebob_stream_formation = type { i32, i32 }
%struct.amdtp_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*, %struct.amdtp_stream*, i32, i32)* @keep_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keep_resources(%struct.snd_bebob* %0, %struct.amdtp_stream* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_bebob*, align 8
  %7 = alloca %struct.amdtp_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_bebob_stream_formation*, align 8
  %11 = alloca %struct.cmp_connection*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %6, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %14 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %15 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %14, i32 0, i32 4
  %16 = icmp eq %struct.amdtp_stream* %13, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %19 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %18, i32 0, i32 3
  %20 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %20, i64 %22
  store %struct.snd_bebob_stream_formation* %23, %struct.snd_bebob_stream_formation** %10, align 8
  %24 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %25 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %24, i32 0, i32 2
  store %struct.cmp_connection* %25, %struct.cmp_connection** %11, align 8
  br label %35

26:                                               ; preds = %4
  %27 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %28 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %27, i32 0, i32 1
  %29 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %29, i64 %31
  store %struct.snd_bebob_stream_formation* %32, %struct.snd_bebob_stream_formation** %10, align 8
  %33 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %34 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %33, i32 0, i32 0
  store %struct.cmp_connection* %34, %struct.cmp_connection** %11, align 8
  br label %35

35:                                               ; preds = %26, %17
  %36 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %10, align 8
  %39 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %10, align 8
  %42 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @amdtp_am824_set_parameters(%struct.amdtp_stream* %36, i32 %37, i32 %40, i32 %43, i32 0)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %54

49:                                               ; preds = %35
  %50 = load %struct.cmp_connection*, %struct.cmp_connection** %11, align 8
  %51 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %52 = call i32 @amdtp_stream_get_max_payload(%struct.amdtp_stream* %51)
  %53 = call i32 @cmp_connection_reserve(%struct.cmp_connection* %50, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %49, %47
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @amdtp_am824_set_parameters(%struct.amdtp_stream*, i32, i32, i32, i32) #1

declare dso_local i32 @cmp_connection_reserve(%struct.cmp_connection*, i32) #1

declare dso_local i32 @amdtp_stream_get_max_payload(%struct.amdtp_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
