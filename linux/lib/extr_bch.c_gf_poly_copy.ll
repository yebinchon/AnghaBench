; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_gf_poly_copy.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_gf_poly_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf_poly = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf_poly*, %struct.gf_poly*)* @gf_poly_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf_poly_copy(%struct.gf_poly* %0, %struct.gf_poly* %1) #0 {
  %3 = alloca %struct.gf_poly*, align 8
  %4 = alloca %struct.gf_poly*, align 8
  store %struct.gf_poly* %0, %struct.gf_poly** %3, align 8
  store %struct.gf_poly* %1, %struct.gf_poly** %4, align 8
  %5 = load %struct.gf_poly*, %struct.gf_poly** %3, align 8
  %6 = load %struct.gf_poly*, %struct.gf_poly** %4, align 8
  %7 = load %struct.gf_poly*, %struct.gf_poly** %4, align 8
  %8 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @GF_POLY_SZ(i32 %9)
  %11 = call i32 @memcpy(%struct.gf_poly* %5, %struct.gf_poly* %6, i32 %10)
  ret void
}

declare dso_local i32 @memcpy(%struct.gf_poly*, %struct.gf_poly*, i32) #1

declare dso_local i32 @GF_POLY_SZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
