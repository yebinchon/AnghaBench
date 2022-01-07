; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_join_timer_arm.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_join_timer_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrp_applicant = type { i32 }

@mrp_join_time = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mrp_applicant*)* @mrp_join_timer_arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrp_join_timer_arm(%struct.mrp_applicant* %0) #0 {
  %2 = alloca %struct.mrp_applicant*, align 8
  %3 = alloca i64, align 8
  store %struct.mrp_applicant* %0, %struct.mrp_applicant** %2, align 8
  %4 = load i32, i32* @mrp_join_time, align 4
  %5 = call i64 @msecs_to_jiffies(i32 %4)
  %6 = trunc i64 %5 to i32
  %7 = call i32 (...) @prandom_u32()
  %8 = mul nsw i32 %6, %7
  %9 = ashr i32 %8, 32
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  %11 = load %struct.mrp_applicant*, %struct.mrp_applicant** %2, align 8
  %12 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %11, i32 0, i32 0
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* %3, align 8
  %15 = add i64 %13, %14
  %16 = call i32 @mod_timer(i32* %12, i64 %15)
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
