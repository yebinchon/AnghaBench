; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_start_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_start_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_oxfw = type { i32, %struct.cmp_connection, %struct.cmp_connection, %struct.amdtp_stream }
%struct.cmp_connection = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amdtp_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_oxfw*, %struct.amdtp_stream*)* @start_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_stream(%struct.snd_oxfw* %0, %struct.amdtp_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_oxfw*, align 8
  %5 = alloca %struct.amdtp_stream*, align 8
  %6 = alloca %struct.cmp_connection*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_oxfw* %0, %struct.snd_oxfw** %4, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %5, align 8
  %8 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %9 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %10 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %9, i32 0, i32 3
  %11 = icmp eq %struct.amdtp_stream* %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %14 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %13, i32 0, i32 2
  store %struct.cmp_connection* %14, %struct.cmp_connection** %6, align 8
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %17 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %16, i32 0, i32 1
  store %struct.cmp_connection* %17, %struct.cmp_connection** %6, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %20 = call i32 @cmp_connection_establish(%struct.cmp_connection* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %44

25:                                               ; preds = %18
  %26 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %27 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %26, i32 0, i32 0
  %28 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %29 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %30 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %34 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @amdtp_domain_add_stream(i32* %27, %struct.amdtp_stream* %28, i32 %32, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %41 = call i32 @cmp_connection_break(%struct.cmp_connection* %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %39, %23
  %45 = load i32, i32* %3, align 4
  ret i32 %45
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
