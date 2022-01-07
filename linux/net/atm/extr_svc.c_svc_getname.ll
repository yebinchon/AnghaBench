; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_svc.c_svc_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_svc.c_svc_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_atmsvc = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @svc_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_atmsvc*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %9 = bitcast %struct.sockaddr* %8 to %struct.sockaddr_atmsvc*
  store %struct.sockaddr_atmsvc* %9, %struct.sockaddr_atmsvc** %7, align 8
  %10 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.socket*, %struct.socket** %4, align 8
  %15 = call %struct.TYPE_2__* @ATM_SD(%struct.socket* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.socket*, %struct.socket** %4, align 8
  %19 = call %struct.TYPE_2__* @ATM_SD(%struct.socket* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i32* [ %16, %13 ], [ %20, %17 ]
  %23 = call i32 @memcpy(%struct.sockaddr_atmsvc* %10, i32* %22, i32 4)
  ret i32 4
}

declare dso_local i32 @memcpy(%struct.sockaddr_atmsvc*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @ATM_SD(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
