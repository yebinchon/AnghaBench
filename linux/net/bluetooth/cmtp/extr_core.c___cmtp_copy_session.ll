; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_core.c___cmtp_copy_session.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_core.c___cmtp_copy_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmtp_session = type { i32, i32, i32, i32 }
%struct.cmtp_conninfo = type { i32, i32, i32, i32 }

@CMTP_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmtp_session*, %struct.cmtp_conninfo*)* @__cmtp_copy_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cmtp_copy_session(%struct.cmtp_session* %0, %struct.cmtp_conninfo* %1) #0 {
  %3 = alloca %struct.cmtp_session*, align 8
  %4 = alloca %struct.cmtp_conninfo*, align 8
  %5 = alloca i32, align 4
  store %struct.cmtp_session* %0, %struct.cmtp_session** %3, align 8
  store %struct.cmtp_conninfo* %1, %struct.cmtp_conninfo** %4, align 8
  %6 = load i32, i32* @CMTP_LOOPBACK, align 4
  %7 = call i32 @BIT(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.cmtp_conninfo*, %struct.cmtp_conninfo** %4, align 8
  %9 = call i32 @memset(%struct.cmtp_conninfo* %8, i32 0, i32 16)
  %10 = load %struct.cmtp_conninfo*, %struct.cmtp_conninfo** %4, align 8
  %11 = getelementptr inbounds %struct.cmtp_conninfo, %struct.cmtp_conninfo* %10, i32 0, i32 3
  %12 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %13 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %12, i32 0, i32 3
  %14 = call i32 @bacpy(i32* %11, i32* %13)
  %15 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %16 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.cmtp_conninfo*, %struct.cmtp_conninfo** %4, align 8
  %21 = getelementptr inbounds %struct.cmtp_conninfo, %struct.cmtp_conninfo* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %23 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cmtp_conninfo*, %struct.cmtp_conninfo** %4, align 8
  %26 = getelementptr inbounds %struct.cmtp_conninfo, %struct.cmtp_conninfo* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %28 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cmtp_conninfo*, %struct.cmtp_conninfo** %4, align 8
  %31 = getelementptr inbounds %struct.cmtp_conninfo, %struct.cmtp_conninfo* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memset(%struct.cmtp_conninfo*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
