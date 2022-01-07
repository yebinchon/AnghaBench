; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_port_sid.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_port_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.sidtab*, %struct.policydb }
%struct.sidtab = type { i32 }
%struct.policydb = type { %struct.ocontext** }
%struct.ocontext = type { i64*, i32*, %struct.ocontext*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }

@OCON_PORT = common dso_local global i64 0, align 8
@SECINITSID_PORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_port_sid(%struct.selinux_state* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.selinux_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.policydb*, align 8
  %10 = alloca %struct.sidtab*, align 8
  %11 = alloca %struct.ocontext*, align 8
  %12 = alloca i32, align 4
  store %struct.selinux_state* %0, %struct.selinux_state** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.selinux_state*, %struct.selinux_state** %5, align 8
  %14 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = call i32 @read_lock(i32* %16)
  %18 = load %struct.selinux_state*, %struct.selinux_state** %5, align 8
  %19 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store %struct.policydb* %21, %struct.policydb** %9, align 8
  %22 = load %struct.selinux_state*, %struct.selinux_state** %5, align 8
  %23 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.sidtab*, %struct.sidtab** %25, align 8
  store %struct.sidtab* %26, %struct.sidtab** %10, align 8
  %27 = load %struct.policydb*, %struct.policydb** %9, align 8
  %28 = getelementptr inbounds %struct.policydb, %struct.policydb* %27, i32 0, i32 0
  %29 = load %struct.ocontext**, %struct.ocontext*** %28, align 8
  %30 = load i64, i64* @OCON_PORT, align 8
  %31 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %29, i64 %30
  %32 = load %struct.ocontext*, %struct.ocontext** %31, align 8
  store %struct.ocontext* %32, %struct.ocontext** %11, align 8
  br label %33

33:                                               ; preds = %61, %4
  %34 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %35 = icmp ne %struct.ocontext* %34, null
  br i1 %35, label %36, label %65

36:                                               ; preds = %33
  %37 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %38 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %36
  %45 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %46 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %44
  %53 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %54 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %65

61:                                               ; preds = %52, %44, %36
  %62 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %63 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %62, i32 0, i32 2
  %64 = load %struct.ocontext*, %struct.ocontext** %63, align 8
  store %struct.ocontext* %64, %struct.ocontext** %11, align 8
  br label %33

65:                                               ; preds = %60, %33
  %66 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %67 = icmp ne %struct.ocontext* %66, null
  br i1 %67, label %68, label %97

68:                                               ; preds = %65
  %69 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %70 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %68
  %76 = load %struct.sidtab*, %struct.sidtab** %10, align 8
  %77 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %78 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %82 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = call i32 @sidtab_context_to_sid(%struct.sidtab* %76, i32* %80, i64* %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %101

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %68
  %91 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %92 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %8, align 8
  store i64 %95, i64* %96, align 8
  br label %100

97:                                               ; preds = %65
  %98 = load i64, i64* @SECINITSID_PORT, align 8
  %99 = load i64*, i64** %8, align 8
  store i64 %98, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %90
  br label %101

101:                                              ; preds = %100, %88
  %102 = load %struct.selinux_state*, %struct.selinux_state** %5, align 8
  %103 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = call i32 @read_unlock(i32* %105)
  %107 = load i32, i32* %12, align 4
  ret i32 %107
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @sidtab_context_to_sid(%struct.sidtab*, i32*, i64*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
