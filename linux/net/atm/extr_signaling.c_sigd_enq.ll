; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_signaling.c_sigd_enq.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_signaling.c_sigd_enq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32 }
%struct.sockaddr_atmpvc = type { i32 }
%struct.sockaddr_atmsvc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigd_enq(%struct.atm_vcc* %0, i32 %1, %struct.atm_vcc* %2, %struct.sockaddr_atmpvc* %3, %struct.sockaddr_atmsvc* %4) #0 {
  %6 = alloca %struct.atm_vcc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atm_vcc*, align 8
  %9 = alloca %struct.sockaddr_atmpvc*, align 8
  %10 = alloca %struct.sockaddr_atmsvc*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.atm_vcc* %2, %struct.atm_vcc** %8, align 8
  store %struct.sockaddr_atmpvc* %3, %struct.sockaddr_atmpvc** %9, align 8
  store %struct.sockaddr_atmsvc* %4, %struct.sockaddr_atmsvc** %10, align 8
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %14 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %9, align 8
  %15 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %10, align 8
  %16 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %17 = icmp ne %struct.atm_vcc* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %20 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %19, i32 0, i32 0
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i32* [ %20, %18 ], [ null, %21 ]
  %24 = call i32 @sigd_enq2(%struct.atm_vcc* %11, i32 %12, %struct.atm_vcc* %13, %struct.sockaddr_atmpvc* %14, %struct.sockaddr_atmsvc* %15, i32* %23, i32 0)
  ret void
}

declare dso_local i32 @sigd_enq2(%struct.atm_vcc*, i32, %struct.atm_vcc*, %struct.sockaddr_atmpvc*, %struct.sockaddr_atmsvc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
