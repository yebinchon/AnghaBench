; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_start_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_start_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i32, i32*, %struct.cmp_connection, %struct.cmp_connection, %struct.amdtp_stream }
%struct.cmp_connection = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amdtp_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*, %struct.amdtp_stream*)* @start_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_stream(%struct.snd_bebob* %0, %struct.amdtp_stream* %1) #0 {
  %3 = alloca %struct.snd_bebob*, align 8
  %4 = alloca %struct.amdtp_stream*, align 8
  %5 = alloca %struct.cmp_connection*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %3, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %8 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %9 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %8, i32 0, i32 4
  %10 = icmp eq %struct.amdtp_stream* %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %13 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %12, i32 0, i32 3
  store %struct.cmp_connection* %13, %struct.cmp_connection** %5, align 8
  br label %17

14:                                               ; preds = %2
  %15 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %16 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %15, i32 0, i32 2
  store %struct.cmp_connection* %16, %struct.cmp_connection** %5, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %19 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %24 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %25 = call i32 @map_data_channels(%struct.snd_bebob* %23, %struct.amdtp_stream* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %42

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %17
  %31 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %32 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %31, i32 0, i32 0
  %33 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %34 = load %struct.cmp_connection*, %struct.cmp_connection** %5, align 8
  %35 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cmp_connection*, %struct.cmp_connection** %5, align 8
  %39 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @amdtp_domain_add_stream(i32* %32, %struct.amdtp_stream* %33, i32 %37, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %30, %28
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @map_data_channels(%struct.snd_bebob*, %struct.amdtp_stream*) #1

declare dso_local i32 @amdtp_domain_add_stream(i32*, %struct.amdtp_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
