; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_jiffies.c_register_refined_jiffies.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_jiffies.c_register_refined_jiffies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32 }

@refined_jiffies = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@clocksource_jiffies = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"refined-jiffies\00", align 1
@HZ = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@JIFFIES_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_refined_jiffies(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_4__* @refined_jiffies to i8*), i8* align 8 bitcast (%struct.TYPE_4__* @clocksource_jiffies to i8*), i64 16, i1 false)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @refined_jiffies, i32 0, i32 0), align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @refined_jiffies, i32 0, i32 2), align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @refined_jiffies, i32 0, i32 2), align 4
  %8 = load i64, i64* %2, align 8
  %9 = load i32, i32* @HZ, align 4
  %10 = sdiv i32 %9, 2
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %8, %11
  %13 = load i32, i32* @HZ, align 4
  %14 = sext i32 %13 to i64
  %15 = sdiv i64 %12, %14
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %2, align 8
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, 8
  store i32 %18, i32* %4, align 4
  %19 = load i64, i64* %5, align 8
  %20 = sdiv i64 %19, 2
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i64, i64* %5, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @do_div(i32 %25, i32 %27)
  %29 = load i64, i64* @NSEC_PER_SEC, align 8
  %30 = trunc i64 %29 to i32
  %31 = shl i32 %30, 8
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sdiv i32 %32, 2
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @do_div(i32 %36, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @JIFFIES_SHIFT, align 4
  %41 = shl i32 %39, %40
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @refined_jiffies, i32 0, i32 1), align 8
  %42 = call i32 @__clocksource_register(%struct.TYPE_4__* @refined_jiffies)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @do_div(i32, i32) #2

declare dso_local i32 @__clocksource_register(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
