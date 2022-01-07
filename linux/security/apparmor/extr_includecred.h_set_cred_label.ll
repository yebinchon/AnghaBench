; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_includecred.h_set_cred_label.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_includecred.h_set_cred_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cred = type { %struct.aa_label** }
%struct.aa_label = type { i32 }

@apparmor_blob_sizes = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cred*, %struct.aa_label*)* @set_cred_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cred_label(%struct.cred* %0, %struct.aa_label* %1) #0 {
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.aa_label**, align 8
  store %struct.cred* %0, %struct.cred** %3, align 8
  store %struct.aa_label* %1, %struct.aa_label** %4, align 8
  %6 = load %struct.cred*, %struct.cred** %3, align 8
  %7 = getelementptr inbounds %struct.cred, %struct.cred* %6, i32 0, i32 0
  %8 = load %struct.aa_label**, %struct.aa_label*** %7, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @apparmor_blob_sizes, i32 0, i32 0), align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.aa_label*, %struct.aa_label** %8, i64 %10
  store %struct.aa_label** %11, %struct.aa_label*** %5, align 8
  %12 = load %struct.aa_label**, %struct.aa_label*** %5, align 8
  %13 = icmp ne %struct.aa_label** %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @AA_BUG(i32 %15)
  %17 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %18 = load %struct.aa_label**, %struct.aa_label*** %5, align 8
  store %struct.aa_label* %17, %struct.aa_label** %18, align 8
  ret void
}

declare dso_local i32 @AA_BUG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
