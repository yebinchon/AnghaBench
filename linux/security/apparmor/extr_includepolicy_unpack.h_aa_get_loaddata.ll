; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_includepolicy_unpack.h_aa_get_loaddata.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_includepolicy_unpack.h_aa_get_loaddata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_loaddata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_loaddata* (%struct.aa_loaddata*)* @aa_get_loaddata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_loaddata* @aa_get_loaddata(%struct.aa_loaddata* %0) #0 {
  %2 = alloca %struct.aa_loaddata*, align 8
  %3 = alloca %struct.aa_loaddata*, align 8
  store %struct.aa_loaddata* %0, %struct.aa_loaddata** %2, align 8
  %4 = load %struct.aa_loaddata*, %struct.aa_loaddata** %2, align 8
  %5 = call %struct.aa_loaddata* @__aa_get_loaddata(%struct.aa_loaddata* %4)
  store %struct.aa_loaddata* %5, %struct.aa_loaddata** %3, align 8
  %6 = load %struct.aa_loaddata*, %struct.aa_loaddata** %2, align 8
  %7 = icmp ne %struct.aa_loaddata* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.aa_loaddata*, %struct.aa_loaddata** %3, align 8
  %10 = icmp ne %struct.aa_loaddata* %9, null
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ false, %1 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @AA_BUG(i32 %14)
  %16 = load %struct.aa_loaddata*, %struct.aa_loaddata** %3, align 8
  ret %struct.aa_loaddata* %16
}

declare dso_local %struct.aa_loaddata* @__aa_get_loaddata(%struct.aa_loaddata*) #1

declare dso_local i32 @AA_BUG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
