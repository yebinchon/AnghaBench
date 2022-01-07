; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kobject.c_kset_get_ownership.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kobject.c_kset_get_ownership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kobject*, i32*, i32*)* @kset_get_ownership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kset_get_ownership(%struct.kobject* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.kobject*, %struct.kobject** %4, align 8
  %8 = getelementptr inbounds %struct.kobject, %struct.kobject* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.kobject*, %struct.kobject** %4, align 8
  %13 = getelementptr inbounds %struct.kobject, %struct.kobject* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @kobject_get_ownership(i64 %14, i32* %15, i32* %16)
  br label %18

18:                                               ; preds = %11, %3
  ret void
}

declare dso_local i32 @kobject_get_ownership(i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
