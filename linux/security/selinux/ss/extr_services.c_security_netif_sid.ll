; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_netif_sid.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_netif_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.sidtab*, %struct.policydb }
%struct.sidtab = type { i32 }
%struct.policydb = type { %struct.ocontext** }
%struct.ocontext = type { i64*, i32*, %struct.ocontext*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@OCON_NETIF = common dso_local global i64 0, align 8
@SECINITSID_NETIF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_netif_sid(%struct.selinux_state* %0, i8* %1, i64* %2) #0 {
  %4 = alloca %struct.selinux_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.policydb*, align 8
  %8 = alloca %struct.sidtab*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocontext*, align 8
  store %struct.selinux_state* %0, %struct.selinux_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %12 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @read_lock(i32* %14)
  %16 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %17 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store %struct.policydb* %19, %struct.policydb** %7, align 8
  %20 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %21 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.sidtab*, %struct.sidtab** %23, align 8
  store %struct.sidtab* %24, %struct.sidtab** %8, align 8
  %25 = load %struct.policydb*, %struct.policydb** %7, align 8
  %26 = getelementptr inbounds %struct.policydb, %struct.policydb* %25, i32 0, i32 0
  %27 = load %struct.ocontext**, %struct.ocontext*** %26, align 8
  %28 = load i64, i64* @OCON_NETIF, align 8
  %29 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %27, i64 %28
  %30 = load %struct.ocontext*, %struct.ocontext** %29, align 8
  store %struct.ocontext* %30, %struct.ocontext** %10, align 8
  br label %31

31:                                               ; preds = %43, %3
  %32 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %33 = icmp ne %struct.ocontext* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %37 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @strcmp(i8* %35, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %47

43:                                               ; preds = %34
  %44 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %45 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %44, i32 0, i32 2
  %46 = load %struct.ocontext*, %struct.ocontext** %45, align 8
  store %struct.ocontext* %46, %struct.ocontext** %10, align 8
  br label %31

47:                                               ; preds = %42, %31
  %48 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %49 = icmp ne %struct.ocontext* %48, null
  br i1 %49, label %50, label %100

50:                                               ; preds = %47
  %51 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %52 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %59 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %93, label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.sidtab*, %struct.sidtab** %8, align 8
  %66 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %67 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %71 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = call i32 @sidtab_context_to_sid(%struct.sidtab* %65, i32* %69, i64* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %104

78:                                               ; preds = %64
  %79 = load %struct.sidtab*, %struct.sidtab** %8, align 8
  %80 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %81 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %85 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  %88 = call i32 @sidtab_context_to_sid(%struct.sidtab* %79, i32* %83, i64* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %104

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92, %57
  %94 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %95 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %6, align 8
  store i64 %98, i64* %99, align 8
  br label %103

100:                                              ; preds = %47
  %101 = load i64, i64* @SECINITSID_NETIF, align 8
  %102 = load i64*, i64** %6, align 8
  store i64 %101, i64* %102, align 8
  br label %103

103:                                              ; preds = %100, %93
  br label %104

104:                                              ; preds = %103, %91, %77
  %105 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %106 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = call i32 @read_unlock(i32* %108)
  %110 = load i32, i32* %9, align 4
  ret i32 %110
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @sidtab_context_to_sid(%struct.sidtab*, i32*, i64*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
