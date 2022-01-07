; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_aa_may_signal.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_aa_may_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.aa_profile = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@sa = common dso_local global i32 0, align 4
@LSM_AUDIT_DATA_NONE = common dso_local global i32 0, align 4
@OP_SIGNAL = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_may_signal(%struct.aa_label* %0, %struct.aa_label* %1, i32 %2) #0 {
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aa_profile*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %4, align 8
  store %struct.aa_label* %1, %struct.aa_label** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @sa, align 4
  %9 = load i32, i32* @LSM_AUDIT_DATA_NONE, align 4
  %10 = load i32, i32* @OP_SIGNAL, align 4
  %11 = call i32 @DEFINE_AUDIT_DATA(i32 %8, i32 %9, i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @map_signal_num(i32 %12)
  %14 = call %struct.TYPE_2__* @aad(i32* @sa)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.TYPE_2__* @aad(i32* @sa)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %20 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %21 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %22 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %23 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %24 = load i32, i32* @MAY_WRITE, align 4
  %25 = call i32 @profile_signal_perm(%struct.aa_profile* %22, %struct.aa_label* %23, i32 %24, i32* @sa)
  %26 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %27 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %28 = load i32, i32* @MAY_READ, align 4
  %29 = call i32 @profile_signal_perm(%struct.aa_profile* %26, %struct.aa_label* %27, i32 %28, i32* @sa)
  %30 = call i32 @xcheck_labels(%struct.aa_label* %19, %struct.aa_label* %20, %struct.aa_profile* %21, i32 %25, i32 %29)
  ret i32 %30
}

declare dso_local i32 @DEFINE_AUDIT_DATA(i32, i32, i32) #1

declare dso_local i32 @map_signal_num(i32) #1

declare dso_local %struct.TYPE_2__* @aad(i32*) #1

declare dso_local i32 @xcheck_labels(%struct.aa_label*, %struct.aa_label*, %struct.aa_profile*, i32, i32) #1

declare dso_local i32 @profile_signal_perm(%struct.aa_profile*, %struct.aa_label*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
