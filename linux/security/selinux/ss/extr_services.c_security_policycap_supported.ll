; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_policycap_supported.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_policycap_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.policydb }
%struct.policydb = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_policycap_supported(%struct.selinux_state* %0, i32 %1) #0 {
  %3 = alloca %struct.selinux_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca i32, align 4
  store %struct.selinux_state* %0, %struct.selinux_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.selinux_state*, %struct.selinux_state** %3, align 8
  %8 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.policydb* %10, %struct.policydb** %5, align 8
  %11 = load %struct.selinux_state*, %struct.selinux_state** %3, align 8
  %12 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @read_lock(i32* %14)
  %16 = load %struct.policydb*, %struct.policydb** %5, align 8
  %17 = getelementptr inbounds %struct.policydb, %struct.policydb* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ebitmap_get_bit(i32* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.selinux_state*, %struct.selinux_state** %3, align 8
  %21 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @read_unlock(i32* %23)
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @ebitmap_get_bit(i32*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
