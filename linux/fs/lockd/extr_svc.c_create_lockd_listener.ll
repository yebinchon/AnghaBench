; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svc.c_create_lockd_listener.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svc.c_create_lockd_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32 }
%struct.net = type { i32 }
%struct.cred = type { i32 }
%struct.svc_xprt = type { i32 }

@SVC_SOCK_DEFAULTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_serv*, i8*, %struct.net*, i32, i16, %struct.cred*)* @create_lockd_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_lockd_listener(%struct.svc_serv* %0, i8* %1, %struct.net* %2, i32 %3, i16 zeroext %4, %struct.cred* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.svc_serv*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca %struct.cred*, align 8
  %14 = alloca %struct.svc_xprt*, align 8
  store %struct.svc_serv* %0, %struct.svc_serv** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.net* %2, %struct.net** %10, align 8
  store i32 %3, i32* %11, align 4
  store i16 %4, i16* %12, align 2
  store %struct.cred* %5, %struct.cred** %13, align 8
  %15 = load %struct.svc_serv*, %struct.svc_serv** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.net*, %struct.net** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call %struct.svc_xprt* @svc_find_xprt(%struct.svc_serv* %15, i8* %16, %struct.net* %17, i32 %18, i32 0)
  store %struct.svc_xprt* %19, %struct.svc_xprt** %14, align 8
  %20 = load %struct.svc_xprt*, %struct.svc_xprt** %14, align 8
  %21 = icmp eq %struct.svc_xprt* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %6
  %23 = load %struct.svc_serv*, %struct.svc_serv** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.net*, %struct.net** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i16, i16* %12, align 2
  %28 = load i32, i32* @SVC_SOCK_DEFAULTS, align 4
  %29 = load %struct.cred*, %struct.cred** %13, align 8
  %30 = call i32 @svc_create_xprt(%struct.svc_serv* %23, i8* %24, %struct.net* %25, i32 %26, i16 zeroext %27, i32 %28, %struct.cred* %29)
  store i32 %30, i32* %7, align 4
  br label %34

31:                                               ; preds = %6
  %32 = load %struct.svc_xprt*, %struct.svc_xprt** %14, align 8
  %33 = call i32 @svc_xprt_put(%struct.svc_xprt* %32)
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %22
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local %struct.svc_xprt* @svc_find_xprt(%struct.svc_serv*, i8*, %struct.net*, i32, i32) #1

declare dso_local i32 @svc_create_xprt(%struct.svc_serv*, i8*, %struct.net*, i32, i16 zeroext, i32, %struct.cred*) #1

declare dso_local i32 @svc_xprt_put(%struct.svc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
