; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_node_sid.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_node_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.sidtab*, %struct.policydb }
%struct.sidtab = type { i32 }
%struct.policydb = type { %struct.ocontext** }
%struct.ocontext = type { i32*, i32*, %struct.ocontext*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OCON_NODE = common dso_local global i64 0, align 8
@OCON_NODE6 = common dso_local global i64 0, align 8
@SECINITSID_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_node_sid(%struct.selinux_state* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.selinux_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.policydb*, align 8
  %12 = alloca %struct.sidtab*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocontext*, align 8
  %15 = alloca i32, align 4
  store %struct.selinux_state* %0, %struct.selinux_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load %struct.selinux_state*, %struct.selinux_state** %6, align 8
  %17 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = call i32 @read_lock(i32* %19)
  %21 = load %struct.selinux_state*, %struct.selinux_state** %6, align 8
  %22 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  store %struct.policydb* %24, %struct.policydb** %11, align 8
  %25 = load %struct.selinux_state*, %struct.selinux_state** %6, align 8
  %26 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.sidtab*, %struct.sidtab** %28, align 8
  store %struct.sidtab* %29, %struct.sidtab** %12, align 8
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %108 [
    i32 129, label %31
    i32 128, label %71
  ]

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 4
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %147

38:                                               ; preds = %31
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load %struct.policydb*, %struct.policydb** %11, align 8
  %43 = getelementptr inbounds %struct.policydb, %struct.policydb* %42, i32 0, i32 0
  %44 = load %struct.ocontext**, %struct.ocontext*** %43, align 8
  %45 = load i64, i64* @OCON_NODE, align 8
  %46 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %44, i64 %45
  %47 = load %struct.ocontext*, %struct.ocontext** %46, align 8
  store %struct.ocontext* %47, %struct.ocontext** %14, align 8
  br label %48

48:                                               ; preds = %66, %38
  %49 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %50 = icmp ne %struct.ocontext* %49, null
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %53 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %59 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %57, %62
  %64 = icmp eq i32 %56, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  br label %70

66:                                               ; preds = %51
  %67 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %68 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %67, i32 0, i32 2
  %69 = load %struct.ocontext*, %struct.ocontext** %68, align 8
  store %struct.ocontext* %69, %struct.ocontext** %14, align 8
  br label %48

70:                                               ; preds = %65, %48
  br label %111

71:                                               ; preds = %5
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ne i64 %75, 8
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %147

78:                                               ; preds = %71
  %79 = load %struct.policydb*, %struct.policydb** %11, align 8
  %80 = getelementptr inbounds %struct.policydb, %struct.policydb* %79, i32 0, i32 0
  %81 = load %struct.ocontext**, %struct.ocontext*** %80, align 8
  %82 = load i64, i64* @OCON_NODE6, align 8
  %83 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %81, i64 %82
  %84 = load %struct.ocontext*, %struct.ocontext** %83, align 8
  store %struct.ocontext* %84, %struct.ocontext** %14, align 8
  br label %85

85:                                               ; preds = %103, %78
  %86 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %87 = icmp ne %struct.ocontext* %86, null
  br i1 %87, label %88, label %107

88:                                               ; preds = %85
  %89 = load i8*, i8** %8, align 8
  %90 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %91 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %96 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @match_ipv6_addrmask(i8* %89, i32 %94, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  br label %107

103:                                              ; preds = %88
  %104 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %105 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %104, i32 0, i32 2
  %106 = load %struct.ocontext*, %struct.ocontext** %105, align 8
  store %struct.ocontext* %106, %struct.ocontext** %14, align 8
  br label %85

107:                                              ; preds = %102, %85
  br label %111

108:                                              ; preds = %5
  store i32 0, i32* %13, align 4
  %109 = load i32, i32* @SECINITSID_NODE, align 4
  %110 = load i32*, i32** %10, align 8
  store i32 %109, i32* %110, align 4
  br label %147

111:                                              ; preds = %107, %70
  %112 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %113 = icmp ne %struct.ocontext* %112, null
  br i1 %113, label %114, label %143

114:                                              ; preds = %111
  %115 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %116 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %136, label %121

121:                                              ; preds = %114
  %122 = load %struct.sidtab*, %struct.sidtab** %12, align 8
  %123 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %124 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %128 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = call i32 @sidtab_context_to_sid(%struct.sidtab* %122, i32* %126, i32* %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %121
  br label %147

135:                                              ; preds = %121
  br label %136

136:                                              ; preds = %135, %114
  %137 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %138 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %10, align 8
  store i32 %141, i32* %142, align 4
  br label %146

143:                                              ; preds = %111
  %144 = load i32, i32* @SECINITSID_NODE, align 4
  %145 = load i32*, i32** %10, align 8
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %136
  store i32 0, i32* %13, align 4
  br label %147

147:                                              ; preds = %146, %134, %108, %77, %37
  %148 = load %struct.selinux_state*, %struct.selinux_state** %6, align 8
  %149 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %148, i32 0, i32 0
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = call i32 @read_unlock(i32* %151)
  %153 = load i32, i32* %13, align 4
  ret i32 %153
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @match_ipv6_addrmask(i8*, i32, i32) #1

declare dso_local i32 @sidtab_context_to_sid(%struct.sidtab*, i32*, i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
