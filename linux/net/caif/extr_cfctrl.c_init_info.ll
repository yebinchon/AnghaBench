; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfctrl.c_init_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfctrl.c_init_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caif_payload_info = type { i32*, i32, i64 }
%struct.cfctrl = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.caif_payload_info*, %struct.cfctrl*)* @init_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_info(%struct.caif_payload_info* %0, %struct.cfctrl* %1) #0 {
  %3 = alloca %struct.caif_payload_info*, align 8
  %4 = alloca %struct.cfctrl*, align 8
  store %struct.caif_payload_info* %0, %struct.caif_payload_info** %3, align 8
  store %struct.cfctrl* %1, %struct.cfctrl** %4, align 8
  %5 = load %struct.caif_payload_info*, %struct.caif_payload_info** %3, align 8
  %6 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.cfctrl*, %struct.cfctrl** %4, align 8
  %8 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.caif_payload_info*, %struct.caif_payload_info** %3, align 8
  %13 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.cfctrl*, %struct.cfctrl** %4, align 8
  %15 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.caif_payload_info*, %struct.caif_payload_info** %3, align 8
  %18 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
