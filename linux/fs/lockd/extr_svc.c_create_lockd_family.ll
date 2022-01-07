; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svc.c_create_lockd_family.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svc.c_create_lockd_family.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32 }
%struct.net = type { i32 }
%struct.cred = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@nlm_udpport = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@nlm_tcpport = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_serv*, %struct.net*, i32, %struct.cred*)* @create_lockd_family to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_lockd_family(%struct.svc_serv* %0, %struct.net* %1, i32 %2, %struct.cred* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_serv*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cred*, align 8
  %10 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %6, align 8
  store %struct.net* %1, %struct.net** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.cred* %3, %struct.cred** %9, align 8
  %11 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %12 = load %struct.net*, %struct.net** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @nlm_udpport, align 4
  %15 = load %struct.cred*, %struct.cred** %9, align 8
  %16 = call i32 @create_lockd_listener(%struct.svc_serv* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.net* %12, i32 %13, i32 %14, %struct.cred* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %28

21:                                               ; preds = %4
  %22 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %23 = load %struct.net*, %struct.net** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @nlm_tcpport, align 4
  %26 = load %struct.cred*, %struct.cred** %9, align 8
  %27 = call i32 @create_lockd_listener(%struct.svc_serv* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.net* %23, i32 %24, i32 %25, %struct.cred* %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %21, %19
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @create_lockd_listener(%struct.svc_serv*, i8*, %struct.net*, i32, i32, %struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
