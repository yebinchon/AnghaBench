; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_add_new_perm_xprt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_add_new_perm_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32, i32 }
%struct.svc_xprt = type { i32, i32 }

@XPT_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_add_new_perm_xprt(%struct.svc_serv* %0, %struct.svc_xprt* %1) #0 {
  %3 = alloca %struct.svc_serv*, align 8
  %4 = alloca %struct.svc_xprt*, align 8
  store %struct.svc_serv* %0, %struct.svc_serv** %3, align 8
  store %struct.svc_xprt* %1, %struct.svc_xprt** %4, align 8
  %5 = load i32, i32* @XPT_TEMP, align 4
  %6 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %7 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %6, i32 0, i32 1
  %8 = call i32 @clear_bit(i32 %5, i32* %7)
  %9 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %10 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %13 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %12, i32 0, i32 0
  %14 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %15 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %14, i32 0, i32 1
  %16 = call i32 @list_add(i32* %13, i32* %15)
  %17 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %18 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock_bh(i32* %18)
  %20 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %21 = call i32 @svc_xprt_received(%struct.svc_xprt* %20)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @svc_xprt_received(%struct.svc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
