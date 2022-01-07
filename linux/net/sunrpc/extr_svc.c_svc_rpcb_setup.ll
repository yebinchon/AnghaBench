; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_rpcb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_rpcb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32 }
%struct.net = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_rpcb_setup(%struct.svc_serv* %0, %struct.net* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_serv*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  %7 = load %struct.net*, %struct.net** %5, align 8
  %8 = call i32 @rpcb_create_local(%struct.net* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %15 = load %struct.net*, %struct.net** %5, align 8
  %16 = call i32 @svc_unregister(%struct.svc_serv* %14, %struct.net* %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @rpcb_create_local(%struct.net*) #1

declare dso_local i32 @svc_unregister(%struct.svc_serv*, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
