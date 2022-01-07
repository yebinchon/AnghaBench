; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_ports.c_get_client_port.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_ports.c_get_client_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client_port = type { i32 }
%struct.snd_seq_addr = type { i32, i32 }
%struct.snd_seq_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_seq_client_port* (%struct.snd_seq_addr*, %struct.snd_seq_client**)* @get_client_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_seq_client_port* @get_client_port(%struct.snd_seq_addr* %0, %struct.snd_seq_client** %1) #0 {
  %3 = alloca %struct.snd_seq_client_port*, align 8
  %4 = alloca %struct.snd_seq_addr*, align 8
  %5 = alloca %struct.snd_seq_client**, align 8
  %6 = alloca %struct.snd_seq_client_port*, align 8
  store %struct.snd_seq_addr* %0, %struct.snd_seq_addr** %4, align 8
  store %struct.snd_seq_client** %1, %struct.snd_seq_client*** %5, align 8
  %7 = load %struct.snd_seq_addr*, %struct.snd_seq_addr** %4, align 8
  %8 = getelementptr inbounds %struct.snd_seq_addr, %struct.snd_seq_addr* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.snd_seq_client* @snd_seq_client_use_ptr(i32 %9)
  %11 = load %struct.snd_seq_client**, %struct.snd_seq_client*** %5, align 8
  store %struct.snd_seq_client* %10, %struct.snd_seq_client** %11, align 8
  %12 = load %struct.snd_seq_client**, %struct.snd_seq_client*** %5, align 8
  %13 = load %struct.snd_seq_client*, %struct.snd_seq_client** %12, align 8
  %14 = icmp ne %struct.snd_seq_client* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.snd_seq_client**, %struct.snd_seq_client*** %5, align 8
  %17 = load %struct.snd_seq_client*, %struct.snd_seq_client** %16, align 8
  %18 = load %struct.snd_seq_addr*, %struct.snd_seq_addr** %4, align 8
  %19 = getelementptr inbounds %struct.snd_seq_addr, %struct.snd_seq_addr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.snd_seq_client_port* @snd_seq_port_use_ptr(%struct.snd_seq_client* %17, i32 %20)
  store %struct.snd_seq_client_port* %21, %struct.snd_seq_client_port** %6, align 8
  %22 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %6, align 8
  %23 = icmp ne %struct.snd_seq_client_port* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %15
  %25 = load %struct.snd_seq_client**, %struct.snd_seq_client*** %5, align 8
  %26 = load %struct.snd_seq_client*, %struct.snd_seq_client** %25, align 8
  %27 = call i32 @snd_seq_client_unlock(%struct.snd_seq_client* %26)
  %28 = load %struct.snd_seq_client**, %struct.snd_seq_client*** %5, align 8
  store %struct.snd_seq_client* null, %struct.snd_seq_client** %28, align 8
  br label %29

29:                                               ; preds = %24, %15
  %30 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %6, align 8
  store %struct.snd_seq_client_port* %30, %struct.snd_seq_client_port** %3, align 8
  br label %32

31:                                               ; preds = %2
  store %struct.snd_seq_client_port* null, %struct.snd_seq_client_port** %3, align 8
  br label %32

32:                                               ; preds = %31, %29
  %33 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %3, align 8
  ret %struct.snd_seq_client_port* %33
}

declare dso_local %struct.snd_seq_client* @snd_seq_client_use_ptr(i32) #1

declare dso_local %struct.snd_seq_client_port* @snd_seq_port_use_ptr(%struct.snd_seq_client*, i32) #1

declare dso_local i32 @snd_seq_client_unlock(%struct.snd_seq_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
