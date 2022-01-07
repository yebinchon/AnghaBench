; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_stream.c_start_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_stream.c_start_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_efw = type { i32, %struct.cmp_connection, %struct.cmp_connection, %struct.amdtp_stream }
%struct.cmp_connection = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amdtp_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_efw*, %struct.amdtp_stream*, i32)* @start_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_stream(%struct.snd_efw* %0, %struct.amdtp_stream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_efw*, align 8
  %6 = alloca %struct.amdtp_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmp_connection*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_efw* %0, %struct.snd_efw** %5, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %11 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %12 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %11, i32 0, i32 3
  %13 = icmp eq %struct.amdtp_stream* %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %16 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %15, i32 0, i32 2
  store %struct.cmp_connection* %16, %struct.cmp_connection** %8, align 8
  br label %20

17:                                               ; preds = %3
  %18 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %19 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %18, i32 0, i32 1
  store %struct.cmp_connection* %19, %struct.cmp_connection** %8, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.cmp_connection*, %struct.cmp_connection** %8, align 8
  %22 = call i32 @cmp_connection_establish(%struct.cmp_connection* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %46

27:                                               ; preds = %20
  %28 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %29 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %28, i32 0, i32 0
  %30 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %31 = load %struct.cmp_connection*, %struct.cmp_connection** %8, align 8
  %32 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cmp_connection*, %struct.cmp_connection** %8, align 8
  %36 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @amdtp_domain_add_stream(i32* %29, %struct.amdtp_stream* %30, i32 %34, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %27
  %42 = load %struct.cmp_connection*, %struct.cmp_connection** %8, align 8
  %43 = call i32 @cmp_connection_break(%struct.cmp_connection* %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %41, %25
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @cmp_connection_establish(%struct.cmp_connection*) #1

declare dso_local i32 @amdtp_domain_add_stream(i32*, %struct.amdtp_stream*, i32, i32) #1

declare dso_local i32 @cmp_connection_break(%struct.cmp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
