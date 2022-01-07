; ModuleID = '/home/carl/AnghaBench/linux/tools/firewire/extr_nosy-dump.c_subaction_create.c'
source_filename = "/home/carl/AnghaBench/linux/tools/firewire/extr_nosy-dump.c_subaction_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subaction = type { i64, i32, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.subaction* (i32*, i64)* @subaction_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.subaction* @subaction_create(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.subaction*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = add i64 12, %6
  %8 = trunc i64 %7 to i32
  %9 = call %struct.subaction* @malloc(i32 %8)
  store %struct.subaction* %9, %struct.subaction** %5, align 8
  %10 = load %struct.subaction*, %struct.subaction** %5, align 8
  %11 = icmp ne %struct.subaction* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EXIT_FAILURE, align 4
  %14 = call i32 @exit(i32 %13) #3
  unreachable

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = udiv i64 %17, 4
  %19 = sub i64 %18, 1
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.subaction*, %struct.subaction** %5, align 8
  %23 = getelementptr inbounds %struct.subaction, %struct.subaction* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.subaction*, %struct.subaction** %5, align 8
  %26 = getelementptr inbounds %struct.subaction, %struct.subaction* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.subaction*, %struct.subaction** %5, align 8
  %28 = getelementptr inbounds %struct.subaction, %struct.subaction* %27, i32 0, i32 1
  %29 = load i32*, i32** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @memcpy(i32* %28, i32* %29, i64 %30)
  %32 = load %struct.subaction*, %struct.subaction** %5, align 8
  ret %struct.subaction* %32
}

declare dso_local %struct.subaction* @malloc(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
