; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/bnep/extr_core.c___bnep_copy_ci.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/bnep/extr_core.c___bnep_copy_ci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnep_conninfo = type { i32, i32, i32, i32, i32 }
%struct.bnep_session = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BNEP_SETUP_RESPONSE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnep_conninfo*, %struct.bnep_session*)* @__bnep_copy_ci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bnep_copy_ci(%struct.bnep_conninfo* %0, %struct.bnep_session* %1) #0 {
  %3 = alloca %struct.bnep_conninfo*, align 8
  %4 = alloca %struct.bnep_session*, align 8
  %5 = alloca i32, align 4
  store %struct.bnep_conninfo* %0, %struct.bnep_conninfo** %3, align 8
  store %struct.bnep_session* %1, %struct.bnep_session** %4, align 8
  %6 = load i32, i32* @BNEP_SETUP_RESPONSE, align 4
  %7 = call i32 @BIT(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.bnep_conninfo*, %struct.bnep_conninfo** %3, align 8
  %9 = call i32 @memset(%struct.bnep_conninfo* %8, i32 0, i32 20)
  %10 = load %struct.bnep_conninfo*, %struct.bnep_conninfo** %3, align 8
  %11 = getelementptr inbounds %struct.bnep_conninfo, %struct.bnep_conninfo* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %14 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = call i32 @memcpy(i32 %12, i32 %16, i32 %17)
  %19 = load %struct.bnep_conninfo*, %struct.bnep_conninfo** %3, align 8
  %20 = getelementptr inbounds %struct.bnep_conninfo, %struct.bnep_conninfo* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %23 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcpy(i32 %21, i32 %26)
  %28 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %29 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.bnep_conninfo*, %struct.bnep_conninfo** %3, align 8
  %34 = getelementptr inbounds %struct.bnep_conninfo, %struct.bnep_conninfo* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %36 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.bnep_conninfo*, %struct.bnep_conninfo** %3, align 8
  %39 = getelementptr inbounds %struct.bnep_conninfo, %struct.bnep_conninfo* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %41 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bnep_conninfo*, %struct.bnep_conninfo** %3, align 8
  %44 = getelementptr inbounds %struct.bnep_conninfo, %struct.bnep_conninfo* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memset(%struct.bnep_conninfo*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
