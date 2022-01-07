; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_clean_up_xprts.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_clean_up_xprts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32 }
%struct.net = type { i32 }
%struct.svc_xprt = type { i32 }

@XPT_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_serv*, %struct.net*)* @svc_clean_up_xprts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_clean_up_xprts(%struct.svc_serv* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.svc_serv*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.svc_xprt*, align 8
  store %struct.svc_serv* %0, %struct.svc_serv** %3, align 8
  store %struct.net* %1, %struct.net** %4, align 8
  br label %6

6:                                                ; preds = %11, %2
  %7 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %8 = load %struct.net*, %struct.net** %4, align 8
  %9 = call %struct.svc_xprt* @svc_dequeue_net(%struct.svc_serv* %7, %struct.net* %8)
  store %struct.svc_xprt* %9, %struct.svc_xprt** %5, align 8
  %10 = icmp ne %struct.svc_xprt* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = load i32, i32* @XPT_CLOSE, align 4
  %13 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %14 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %13, i32 0, i32 0
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  %16 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %17 = call i32 @svc_delete_xprt(%struct.svc_xprt* %16)
  br label %6

18:                                               ; preds = %6
  ret void
}

declare dso_local %struct.svc_xprt* @svc_dequeue_net(%struct.svc_serv*, %struct.net*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @svc_delete_xprt(%struct.svc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
