; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_ctl_sock_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_ctl_sock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.sock*)* }
%struct.net = type { i32 }
%struct.socket = type { %struct.sock* }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_ctl_sock_create(%struct.sock** %0, i16 zeroext %1, i16 zeroext %2, i8 zeroext %3, %struct.net* %4) #0 {
  %6 = alloca %struct.sock**, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.socket*, align 8
  %12 = alloca i32, align 4
  store %struct.sock** %0, %struct.sock*** %6, align 8
  store i16 %1, i16* %7, align 2
  store i16 %2, i16* %8, align 2
  store i8 %3, i8* %9, align 1
  store %struct.net* %4, %struct.net** %10, align 8
  %13 = load %struct.net*, %struct.net** %10, align 8
  %14 = load i16, i16* %7, align 2
  %15 = load i16, i16* %8, align 2
  %16 = load i8, i8* %9, align 1
  %17 = call i32 @sock_create_kern(%struct.net* %13, i16 zeroext %14, i16 zeroext %15, i8 zeroext %16, %struct.socket** %11)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %5
  %21 = load %struct.socket*, %struct.socket** %11, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load %struct.sock*, %struct.sock** %22, align 8
  %24 = load %struct.sock**, %struct.sock*** %6, align 8
  store %struct.sock* %23, %struct.sock** %24, align 8
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = load %struct.sock**, %struct.sock*** %6, align 8
  %27 = load %struct.sock*, %struct.sock** %26, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load %struct.sock**, %struct.sock*** %6, align 8
  %30 = load %struct.sock*, %struct.sock** %29, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %33, align 8
  %35 = load %struct.sock**, %struct.sock*** %6, align 8
  %36 = load %struct.sock*, %struct.sock** %35, align 8
  %37 = call i32 %34(%struct.sock* %36)
  br label %38

38:                                               ; preds = %20, %5
  %39 = load i32, i32* %12, align 4
  ret i32 %39
}

declare dso_local i32 @sock_create_kern(%struct.net*, i16 zeroext, i16 zeroext, i8 zeroext, %struct.socket**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
