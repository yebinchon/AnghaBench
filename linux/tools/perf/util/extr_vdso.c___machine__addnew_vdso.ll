; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_vdso.c___machine__addnew_vdso.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_vdso.c___machine__addnew_vdso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }
%struct.machine = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dso* (%struct.machine*, i8*, i8*)* @__machine__addnew_vdso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dso* @__machine__addnew_vdso(%struct.machine* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.machine*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dso*, align 8
  store %struct.machine* %0, %struct.machine** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.dso* @dso__new(i8* %8)
  store %struct.dso* %9, %struct.dso** %7, align 8
  %10 = load %struct.dso*, %struct.dso** %7, align 8
  %11 = icmp ne %struct.dso* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.machine*, %struct.machine** %4, align 8
  %14 = getelementptr inbounds %struct.machine, %struct.machine* %13, i32 0, i32 0
  %15 = load %struct.dso*, %struct.dso** %7, align 8
  %16 = call i32 @__dsos__add(i32* %14, %struct.dso* %15)
  %17 = load %struct.dso*, %struct.dso** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @dso__set_long_name(%struct.dso* %17, i8* %18, i32 0)
  br label %20

20:                                               ; preds = %12, %3
  %21 = load %struct.dso*, %struct.dso** %7, align 8
  ret %struct.dso* %21
}

declare dso_local %struct.dso* @dso__new(i8*) #1

declare dso_local i32 @__dsos__add(i32*, %struct.dso*) #1

declare dso_local i32 @dso__set_long_name(%struct.dso*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
