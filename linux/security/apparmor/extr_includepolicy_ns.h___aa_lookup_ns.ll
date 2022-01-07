; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_includepolicy_ns.h___aa_lookup_ns.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_includepolicy_ns.h___aa_lookup_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ns = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_ns* (%struct.aa_ns*, i8*)* @__aa_lookup_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_ns* @__aa_lookup_ns(%struct.aa_ns* %0, i8* %1) #0 {
  %3 = alloca %struct.aa_ns*, align 8
  %4 = alloca i8*, align 8
  store %struct.aa_ns* %0, %struct.aa_ns** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.aa_ns*, %struct.aa_ns** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = call %struct.aa_ns* @__aa_lookupn_ns(%struct.aa_ns* %5, i8* %6, i32 %8)
  ret %struct.aa_ns* %9
}

declare dso_local %struct.aa_ns* @__aa_lookupn_ns(%struct.aa_ns*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
