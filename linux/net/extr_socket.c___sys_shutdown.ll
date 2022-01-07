; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c___sys_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c___sys_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.socket*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sys_shutdown(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.socket* @sockfd_lookup_light(i32 %8, i32* %5, i32* %6)
  store %struct.socket* %9, %struct.socket** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %7, align 8
  %11 = icmp ne %struct.socket* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load %struct.socket*, %struct.socket** %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @security_socket_shutdown(%struct.socket* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %12
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)** %22, align 8
  %24 = load %struct.socket*, %struct.socket** %7, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 %23(%struct.socket* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %18, %12
  %28 = load %struct.socket*, %struct.socket** %7, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @fput_light(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %2
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.socket* @sockfd_lookup_light(i32, i32*, i32*) #1

declare dso_local i32 @security_socket_shutdown(%struct.socket*, i32) #1

declare dso_local i32 @fput_light(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
