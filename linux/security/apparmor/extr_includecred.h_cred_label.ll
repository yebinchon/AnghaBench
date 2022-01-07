; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_includecred.h_cred_label.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_includecred.h_cred_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.aa_label = type { i32 }
%struct.cred = type { %struct.aa_label** }

@apparmor_blob_sizes = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_label* (%struct.cred*)* @cred_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_label* @cred_label(%struct.cred* %0) #0 {
  %2 = alloca %struct.cred*, align 8
  %3 = alloca %struct.aa_label**, align 8
  store %struct.cred* %0, %struct.cred** %2, align 8
  %4 = load %struct.cred*, %struct.cred** %2, align 8
  %5 = getelementptr inbounds %struct.cred, %struct.cred* %4, i32 0, i32 0
  %6 = load %struct.aa_label**, %struct.aa_label*** %5, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @apparmor_blob_sizes, i32 0, i32 0), align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.aa_label*, %struct.aa_label** %6, i64 %8
  store %struct.aa_label** %9, %struct.aa_label*** %3, align 8
  %10 = load %struct.aa_label**, %struct.aa_label*** %3, align 8
  %11 = icmp ne %struct.aa_label** %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @AA_BUG(i32 %13)
  %15 = load %struct.aa_label**, %struct.aa_label*** %3, align 8
  %16 = load %struct.aa_label*, %struct.aa_label** %15, align 8
  ret %struct.aa_label* %16
}

declare dso_local i32 @AA_BUG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
