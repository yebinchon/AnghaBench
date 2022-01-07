; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__findnew_module_dso.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__findnew_module_dso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }
%struct.machine = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kmod_path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dso* (%struct.machine*, %struct.kmod_path*, i8*)* @machine__findnew_module_dso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dso* @machine__findnew_module_dso(%struct.machine* %0, %struct.kmod_path* %1, i8* %2) #0 {
  %4 = alloca %struct.machine*, align 8
  %5 = alloca %struct.kmod_path*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dso*, align 8
  store %struct.machine* %0, %struct.machine** %4, align 8
  store %struct.kmod_path* %1, %struct.kmod_path** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.machine*, %struct.machine** %4, align 8
  %9 = getelementptr inbounds %struct.machine, %struct.machine* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @down_write(i32* %10)
  %12 = load %struct.machine*, %struct.machine** %4, align 8
  %13 = getelementptr inbounds %struct.machine, %struct.machine* %12, i32 0, i32 0
  %14 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %15 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.dso* @__dsos__find(%struct.TYPE_3__* %13, i32 %16, i32 1)
  store %struct.dso* %17, %struct.dso** %7, align 8
  %18 = load %struct.dso*, %struct.dso** %7, align 8
  %19 = icmp ne %struct.dso* %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %3
  %21 = load %struct.machine*, %struct.machine** %4, align 8
  %22 = getelementptr inbounds %struct.machine, %struct.machine* %21, i32 0, i32 0
  %23 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %24 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.dso* @__dsos__addnew(%struct.TYPE_3__* %22, i32 %25)
  store %struct.dso* %26, %struct.dso** %7, align 8
  %27 = load %struct.dso*, %struct.dso** %7, align 8
  %28 = icmp eq %struct.dso* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %42

30:                                               ; preds = %20
  %31 = load %struct.dso*, %struct.dso** %7, align 8
  %32 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %33 = load %struct.machine*, %struct.machine** %4, align 8
  %34 = call i32 @dso__set_module_info(%struct.dso* %31, %struct.kmod_path* %32, %struct.machine* %33)
  %35 = load %struct.dso*, %struct.dso** %7, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strdup(i8* %36)
  %38 = call i32 @dso__set_long_name(%struct.dso* %35, i32 %37, i32 1)
  br label %39

39:                                               ; preds = %30, %3
  %40 = load %struct.dso*, %struct.dso** %7, align 8
  %41 = call i32 @dso__get(%struct.dso* %40)
  br label %42

42:                                               ; preds = %39, %29
  %43 = load %struct.machine*, %struct.machine** %4, align 8
  %44 = getelementptr inbounds %struct.machine, %struct.machine* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @up_write(i32* %45)
  %47 = load %struct.dso*, %struct.dso** %7, align 8
  ret %struct.dso* %47
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.dso* @__dsos__find(%struct.TYPE_3__*, i32, i32) #1

declare dso_local %struct.dso* @__dsos__addnew(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dso__set_module_info(%struct.dso*, %struct.kmod_path*, %struct.machine*) #1

declare dso_local i32 @dso__set_long_name(%struct.dso*, i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @dso__get(%struct.dso*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
