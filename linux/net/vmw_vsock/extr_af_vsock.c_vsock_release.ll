; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32* }

@SS_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @vsock_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsock_release(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %3 = load %struct.socket*, %struct.socket** %2, align 8
  %4 = getelementptr inbounds %struct.socket, %struct.socket* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @__vsock_release(i32* %5, i32 0)
  %7 = load %struct.socket*, %struct.socket** %2, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 1
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* @SS_FREE, align 4
  %10 = load %struct.socket*, %struct.socket** %2, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  ret i32 0
}

declare dso_local i32 @__vsock_release(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
