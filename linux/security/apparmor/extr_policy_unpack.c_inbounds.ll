; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_inbounds.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_inbounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ext = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_ext*, i64)* @inbounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inbounds(%struct.aa_ext* %0, i64 %1) #0 {
  %3 = alloca %struct.aa_ext*, align 8
  %4 = alloca i64, align 8
  store %struct.aa_ext* %0, %struct.aa_ext** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.aa_ext*, %struct.aa_ext** %3, align 8
  %7 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.aa_ext*, %struct.aa_ext** %3, align 8
  %10 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = sub i64 %8, %11
  %13 = icmp ule i64 %5, %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
