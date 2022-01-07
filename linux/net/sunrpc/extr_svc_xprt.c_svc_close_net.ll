; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_close_net.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_close_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32, i32 }
%struct.net = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_close_net(%struct.svc_serv* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.svc_serv*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %3, align 8
  store %struct.net* %1, %struct.net** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %19, %2
  %7 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %8 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %9 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %8, i32 0, i32 1
  %10 = load %struct.net*, %struct.net** %4, align 8
  %11 = call i64 @svc_close_list(%struct.svc_serv* %7, i32* %9, %struct.net* %10)
  %12 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %13 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %14 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %13, i32 0, i32 0
  %15 = load %struct.net*, %struct.net** %4, align 8
  %16 = call i64 @svc_close_list(%struct.svc_serv* %12, i32* %14, %struct.net* %15)
  %17 = add nsw i64 %11, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %6
  %20 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %21 = load %struct.net*, %struct.net** %4, align 8
  %22 = call i32 @svc_clean_up_xprts(%struct.svc_serv* %20, %struct.net* %21)
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = call i32 @msleep(i32 %23)
  br label %6

26:                                               ; preds = %6
  ret void
}

declare dso_local i64 @svc_close_list(%struct.svc_serv*, i32*, %struct.net*) #1

declare dso_local i32 @svc_clean_up_xprts(%struct.svc_serv*, %struct.net*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
