; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_ib_endport_sid.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_ib_endport_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.sidtab*, %struct.policydb }
%struct.sidtab = type { i32 }
%struct.policydb = type { %struct.ocontext** }
%struct.ocontext = type { i64*, i32*, %struct.ocontext*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@OCON_IBENDPORT = common dso_local global i64 0, align 8
@IB_DEVICE_NAME_MAX = common dso_local global i32 0, align 4
@SECINITSID_UNLABELED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_ib_endport_sid(%struct.selinux_state* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.selinux_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.policydb*, align 8
  %10 = alloca %struct.sidtab*, align 8
  %11 = alloca %struct.ocontext*, align 8
  %12 = alloca i32, align 4
  store %struct.selinux_state* %0, %struct.selinux_state** %5, align 8
  store i8* %1, i8** %6, align 8
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
  %30 = load i64, i64* @OCON_IBENDPORT, align 8
  %31 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %29, i64 %30
  %32 = load %struct.ocontext*, %struct.ocontext** %31, align 8
  store %struct.ocontext* %32, %struct.ocontext** %11, align 8
  br label %33

33:                                               ; preds = %55, %4
  %34 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %35 = icmp ne %struct.ocontext* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %33
  %37 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %38 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %46 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* @IB_DEVICE_NAME_MAX, align 4
  %52 = call i32 @strncmp(i32 %49, i8* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  br label %59

55:                                               ; preds = %44, %36
  %56 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %57 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %56, i32 0, i32 2
  %58 = load %struct.ocontext*, %struct.ocontext** %57, align 8
  store %struct.ocontext* %58, %struct.ocontext** %11, align 8
  br label %33

59:                                               ; preds = %54, %33
  %60 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %61 = icmp ne %struct.ocontext* %60, null
  br i1 %61, label %62, label %91

62:                                               ; preds = %59
  %63 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %64 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %62
  %70 = load %struct.sidtab*, %struct.sidtab** %10, align 8
  %71 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %72 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %76 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = call i32 @sidtab_context_to_sid(%struct.sidtab* %70, i32* %74, i64* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %95

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %83, %62
  %85 = load %struct.ocontext*, %struct.ocontext** %11, align 8
  %86 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %8, align 8
  store i64 %89, i64* %90, align 8
  br label %94

91:                                               ; preds = %59
  %92 = load i64, i64* @SECINITSID_UNLABELED, align 8
  %93 = load i64*, i64** %8, align 8
  store i64 %92, i64* %93, align 8
  br label %94

94:                                               ; preds = %91, %84
  br label %95

95:                                               ; preds = %94, %82
  %96 = load %struct.selinux_state*, %struct.selinux_state** %5, align 8
  %97 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = call i32 @read_unlock(i32* %99)
  %101 = load i32, i32* %12, align 4
  ret i32 %101
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @sidtab_context_to_sid(%struct.sidtab*, i32*, i64*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
