; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c___security_genfs_sid.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c___security_genfs_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.sidtab*, %struct.policydb }
%struct.sidtab = type { i32 }
%struct.policydb = type { %struct.genfs* }
%struct.genfs = type { %struct.ocontext*, i32, %struct.genfs* }
%struct.ocontext = type { i64*, i32*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.ocontext* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@SECINITSID_UNLABELED = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.selinux_state*, i8*, i8*, i64, i64*)* @__security_genfs_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__security_genfs_sid(%struct.selinux_state* %0, i8* %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.selinux_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.policydb*, align 8
  %12 = alloca %struct.sidtab*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.genfs*, align 8
  %16 = alloca %struct.ocontext*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.selinux_state* %0, %struct.selinux_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %19 = load %struct.selinux_state*, %struct.selinux_state** %6, align 8
  %20 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store %struct.policydb* %22, %struct.policydb** %11, align 8
  %23 = load %struct.selinux_state*, %struct.selinux_state** %6, align 8
  %24 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.sidtab*, %struct.sidtab** %26, align 8
  store %struct.sidtab* %27, %struct.sidtab** %12, align 8
  store i32 0, i32* %18, align 4
  br label %28

28:                                               ; preds = %42, %5
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 47
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br label %40

40:                                               ; preds = %34, %28
  %41 = phi i1 [ false, %28 ], [ %39, %34 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %8, align 8
  br label %28

45:                                               ; preds = %40
  %46 = load %struct.selinux_state*, %struct.selinux_state** %6, align 8
  %47 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %9, align 8
  %51 = call i64 @unmap_class(i32* %49, i64 %50)
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* @SECINITSID_UNLABELED, align 8
  %53 = load i64*, i64** %10, align 8
  store i64 %52, i64* %53, align 8
  %54 = load %struct.policydb*, %struct.policydb** %11, align 8
  %55 = getelementptr inbounds %struct.policydb, %struct.policydb* %54, i32 0, i32 0
  %56 = load %struct.genfs*, %struct.genfs** %55, align 8
  store %struct.genfs* %56, %struct.genfs** %15, align 8
  br label %57

57:                                               ; preds = %70, %45
  %58 = load %struct.genfs*, %struct.genfs** %15, align 8
  %59 = icmp ne %struct.genfs* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.genfs*, %struct.genfs** %15, align 8
  %63 = getelementptr inbounds %struct.genfs, %struct.genfs* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @strcmp(i8* %61, i32 %64)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %74

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.genfs*, %struct.genfs** %15, align 8
  %72 = getelementptr inbounds %struct.genfs, %struct.genfs* %71, i32 0, i32 2
  %73 = load %struct.genfs*, %struct.genfs** %72, align 8
  store %struct.genfs* %73, %struct.genfs** %15, align 8
  br label %57

74:                                               ; preds = %68, %57
  %75 = load i32, i32* @ENOENT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %17, align 4
  %77 = load %struct.genfs*, %struct.genfs** %15, align 8
  %78 = icmp ne %struct.genfs* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* %18, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79, %74
  br label %158

83:                                               ; preds = %79
  %84 = load %struct.genfs*, %struct.genfs** %15, align 8
  %85 = getelementptr inbounds %struct.genfs, %struct.genfs* %84, i32 0, i32 0
  %86 = load %struct.ocontext*, %struct.ocontext** %85, align 8
  store %struct.ocontext* %86, %struct.ocontext** %16, align 8
  br label %87

87:                                               ; preds = %119, %83
  %88 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %89 = icmp ne %struct.ocontext* %88, null
  br i1 %89, label %90, label %123

90:                                               ; preds = %87
  %91 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %92 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @strlen(i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %97 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %90
  %102 = load i64, i64* %14, align 8
  %103 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %104 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %102, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %101, %90
  %109 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %110 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i64 @strncmp(i32 %112, i8* %113, i32 %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  br label %123

118:                                              ; preds = %108, %101
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %121 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %120, i32 0, i32 4
  %122 = load %struct.ocontext*, %struct.ocontext** %121, align 8
  store %struct.ocontext* %122, %struct.ocontext** %16, align 8
  br label %87

123:                                              ; preds = %117, %87
  %124 = load i32, i32* @ENOENT, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %17, align 4
  %126 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %127 = icmp ne %struct.ocontext* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %123
  br label %158

129:                                              ; preds = %123
  %130 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %131 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %151, label %136

136:                                              ; preds = %129
  %137 = load %struct.sidtab*, %struct.sidtab** %12, align 8
  %138 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %139 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %143 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  %146 = call i32 @sidtab_context_to_sid(%struct.sidtab* %137, i32* %141, i64* %145)
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %17, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %136
  br label %158

150:                                              ; preds = %136
  br label %151

151:                                              ; preds = %150, %129
  %152 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %153 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %152, i32 0, i32 0
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64*, i64** %10, align 8
  store i64 %156, i64* %157, align 8
  store i32 0, i32* %17, align 4
  br label %158

158:                                              ; preds = %151, %149, %128, %82
  %159 = load i32, i32* %17, align 4
  ret i32 %159
}

declare dso_local i64 @unmap_class(i32*, i64) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @sidtab_context_to_sid(%struct.sidtab*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
