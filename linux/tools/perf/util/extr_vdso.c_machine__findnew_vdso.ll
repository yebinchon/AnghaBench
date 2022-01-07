; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_vdso.c_machine__findnew_vdso.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_vdso.c_machine__findnew_vdso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }
%struct.machine = type { %struct.TYPE_2__, %struct.vdso_info* }
%struct.TYPE_2__ = type { i32 }
%struct.vdso_info = type { i32 }
%struct.thread = type { i32 }

@DSO__NAME_VDSO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dso* @machine__findnew_vdso(%struct.machine* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.machine*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.vdso_info*, align 8
  %6 = alloca %struct.dso*, align 8
  %7 = alloca i8*, align 8
  store %struct.machine* %0, %struct.machine** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  store %struct.dso* null, %struct.dso** %6, align 8
  %8 = load %struct.machine*, %struct.machine** %3, align 8
  %9 = getelementptr inbounds %struct.machine, %struct.machine* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @down_write(i32* %10)
  %12 = load %struct.machine*, %struct.machine** %3, align 8
  %13 = getelementptr inbounds %struct.machine, %struct.machine* %12, i32 0, i32 1
  %14 = load %struct.vdso_info*, %struct.vdso_info** %13, align 8
  %15 = icmp ne %struct.vdso_info* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = call %struct.vdso_info* (...) @vdso_info__new()
  %18 = load %struct.machine*, %struct.machine** %3, align 8
  %19 = getelementptr inbounds %struct.machine, %struct.machine* %18, i32 0, i32 1
  store %struct.vdso_info* %17, %struct.vdso_info** %19, align 8
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.machine*, %struct.machine** %3, align 8
  %22 = getelementptr inbounds %struct.machine, %struct.machine* %21, i32 0, i32 1
  %23 = load %struct.vdso_info*, %struct.vdso_info** %22, align 8
  store %struct.vdso_info* %23, %struct.vdso_info** %5, align 8
  %24 = load %struct.vdso_info*, %struct.vdso_info** %5, align 8
  %25 = icmp ne %struct.vdso_info* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %54

27:                                               ; preds = %20
  %28 = load %struct.machine*, %struct.machine** %3, align 8
  %29 = load %struct.thread*, %struct.thread** %4, align 8
  %30 = call %struct.dso* @machine__find_vdso(%struct.machine* %28, %struct.thread* %29)
  store %struct.dso* %30, %struct.dso** %6, align 8
  %31 = load %struct.dso*, %struct.dso** %6, align 8
  %32 = icmp ne %struct.dso* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %54

34:                                               ; preds = %27
  %35 = load %struct.machine*, %struct.machine** %3, align 8
  %36 = getelementptr inbounds %struct.machine, %struct.machine* %35, i32 0, i32 0
  %37 = load i32, i32* @DSO__NAME_VDSO, align 4
  %38 = call %struct.dso* @__dsos__find(%struct.TYPE_2__* %36, i32 %37, i32 1)
  store %struct.dso* %38, %struct.dso** %6, align 8
  %39 = load %struct.dso*, %struct.dso** %6, align 8
  %40 = icmp ne %struct.dso* %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %34
  %42 = load %struct.vdso_info*, %struct.vdso_info** %5, align 8
  %43 = getelementptr inbounds %struct.vdso_info, %struct.vdso_info* %42, i32 0, i32 0
  %44 = call i8* @get_file(i32* %43)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.machine*, %struct.machine** %3, align 8
  %49 = load i32, i32* @DSO__NAME_VDSO, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = call %struct.dso* @__machine__addnew_vdso(%struct.machine* %48, i32 %49, i8* %50)
  store %struct.dso* %51, %struct.dso** %6, align 8
  br label %52

52:                                               ; preds = %47, %41
  br label %53

53:                                               ; preds = %52, %34
  br label %54

54:                                               ; preds = %53, %33, %26
  %55 = load %struct.dso*, %struct.dso** %6, align 8
  %56 = call i32 @dso__get(%struct.dso* %55)
  %57 = load %struct.machine*, %struct.machine** %3, align 8
  %58 = getelementptr inbounds %struct.machine, %struct.machine* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @up_write(i32* %59)
  %61 = load %struct.dso*, %struct.dso** %6, align 8
  ret %struct.dso* %61
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.vdso_info* @vdso_info__new(...) #1

declare dso_local %struct.dso* @machine__find_vdso(%struct.machine*, %struct.thread*) #1

declare dso_local %struct.dso* @__dsos__find(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i8* @get_file(i32*) #1

declare dso_local %struct.dso* @__machine__addnew_vdso(%struct.machine*, i32, i8*) #1

declare dso_local i32 @dso__get(%struct.dso*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
