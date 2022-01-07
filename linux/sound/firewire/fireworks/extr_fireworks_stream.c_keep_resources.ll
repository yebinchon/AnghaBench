; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_stream.c_keep_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_stream.c_keep_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_efw = type { i32*, i32, i32*, i32, %struct.cmp_connection, %struct.cmp_connection, %struct.amdtp_stream }
%struct.cmp_connection = type { i32 }
%struct.amdtp_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_efw*, %struct.amdtp_stream*, i32, i32)* @keep_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keep_resources(%struct.snd_efw* %0, %struct.amdtp_stream* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_efw*, align 8
  %7 = alloca %struct.amdtp_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cmp_connection*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_efw* %0, %struct.snd_efw** %6, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %15 = load %struct.snd_efw*, %struct.snd_efw** %6, align 8
  %16 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %15, i32 0, i32 6
  %17 = icmp eq %struct.amdtp_stream* %14, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %4
  %19 = load %struct.snd_efw*, %struct.snd_efw** %6, align 8
  %20 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.snd_efw*, %struct.snd_efw** %6, align 8
  %27 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load %struct.snd_efw*, %struct.snd_efw** %6, align 8
  %30 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %29, i32 0, i32 5
  store %struct.cmp_connection* %30, %struct.cmp_connection** %12, align 8
  br label %44

31:                                               ; preds = %4
  %32 = load %struct.snd_efw*, %struct.snd_efw** %6, align 8
  %33 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load %struct.snd_efw*, %struct.snd_efw** %6, align 8
  %40 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %11, align 4
  %42 = load %struct.snd_efw*, %struct.snd_efw** %6, align 8
  %43 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %42, i32 0, i32 4
  store %struct.cmp_connection* %43, %struct.cmp_connection** %12, align 8
  br label %44

44:                                               ; preds = %31, %18
  %45 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @amdtp_am824_set_parameters(%struct.amdtp_stream* %45, i32 %46, i32 %47, i32 %48, i32 0)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %5, align 4
  br label %59

54:                                               ; preds = %44
  %55 = load %struct.cmp_connection*, %struct.cmp_connection** %12, align 8
  %56 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %57 = call i32 @amdtp_stream_get_max_payload(%struct.amdtp_stream* %56)
  %58 = call i32 @cmp_connection_reserve(%struct.cmp_connection* %55, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %54, %52
  %60 = load i32, i32* %5, align 4
  ret i32 %60
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
