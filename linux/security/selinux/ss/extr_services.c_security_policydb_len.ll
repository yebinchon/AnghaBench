; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_policydb_len.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_policydb_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.policydb }
%struct.policydb = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @security_policydb_len(%struct.selinux_state* %0) #0 {
  %2 = alloca %struct.selinux_state*, align 8
  %3 = alloca %struct.policydb*, align 8
  %4 = alloca i64, align 8
  store %struct.selinux_state* %0, %struct.selinux_state** %2, align 8
  %5 = load %struct.selinux_state*, %struct.selinux_state** %2, align 8
  %6 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store %struct.policydb* %8, %struct.policydb** %3, align 8
  %9 = load %struct.selinux_state*, %struct.selinux_state** %2, align 8
  %10 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @read_lock(i32* %12)
  %14 = load %struct.policydb*, %struct.policydb** %3, align 8
  %15 = getelementptr inbounds %struct.policydb, %struct.policydb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %4, align 8
  %17 = load %struct.selinux_state*, %struct.selinux_state** %2, align 8
  %18 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @read_unlock(i32* %20)
  %22 = load i64, i64* %4, align 8
  ret i64 %22
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
