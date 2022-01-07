; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_audit_mount.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_audit_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }
%struct.aa_perms = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i64, i8* }

@AUDIT_APPARMOR_AUTO = common dso_local global i32 0, align 4
@sa = common dso_local global i32 0, align 4
@LSM_AUDIT_DATA_NONE = common dso_local global i32 0, align 4
@AUDIT_ALL = common dso_local global i64 0, align 8
@AUDIT_APPARMOR_AUDIT = common dso_local global i32 0, align 4
@AUDIT_APPARMOR_KILL = common dso_local global i32 0, align 4
@AUDIT_NOQUIET = common dso_local global i64 0, align 8
@AA_AUDIT_DATA = common dso_local global i32 0, align 4
@audit_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i32, %struct.aa_perms*, i8*, i32)* @audit_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_mount(%struct.aa_profile* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i64 %6, i8* %7, i32 %8, %struct.aa_perms* %9, i8* %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.aa_profile*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.aa_perms*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %14, align 8
  store i8* %1, i8** %15, align 8
  store i8* %2, i8** %16, align 8
  store i8* %3, i8** %17, align 8
  store i8* %4, i8** %18, align 8
  store i8* %5, i8** %19, align 8
  store i64 %6, i64* %20, align 8
  store i8* %7, i8** %21, align 8
  store i32 %8, i32* %22, align 4
  store %struct.aa_perms* %9, %struct.aa_perms** %23, align 8
  store i8* %10, i8** %24, align 8
  store i32 %11, i32* %25, align 4
  %28 = load i32, i32* @AUDIT_APPARMOR_AUTO, align 4
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @sa, align 4
  %30 = load i32, i32* @LSM_AUDIT_DATA_NONE, align 4
  %31 = load i8*, i8** %15, align 8
  %32 = call i32 @DEFINE_AUDIT_DATA(i32 %29, i32 %30, i8* %31)
  %33 = load i32, i32* %25, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %12
  %40 = load %struct.aa_perms*, %struct.aa_perms** %23, align 8
  %41 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %27, align 4
  %43 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %44 = call i64 @AUDIT_MODE(%struct.aa_profile* %43)
  %45 = load i64, i64* @AUDIT_ALL, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 65535, i32* %27, align 4
  br label %51

51:                                               ; preds = %50, %39
  %52 = load i32, i32* %27, align 4
  %53 = load i32, i32* %22, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %22, align 4
  %55 = load i32, i32* %22, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 0, i32* %13, align 4
  br label %154

62:                                               ; preds = %51
  %63 = load i32, i32* @AUDIT_APPARMOR_AUDIT, align 4
  store i32 %63, i32* %26, align 4
  br label %109

64:                                               ; preds = %12
  %65 = load i32, i32* %22, align 4
  %66 = load %struct.aa_perms*, %struct.aa_perms** %23, align 8
  %67 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %65, %69
  store i32 %70, i32* %22, align 4
  %71 = load i32, i32* %22, align 4
  %72 = load %struct.aa_perms*, %struct.aa_perms** %23, align 8
  %73 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = load i32, i32* @AUDIT_APPARMOR_KILL, align 4
  store i32 %78, i32* %26, align 4
  br label %79

79:                                               ; preds = %77, %64
  %80 = load i32, i32* %22, align 4
  %81 = load %struct.aa_perms*, %struct.aa_perms** %23, align 8
  %82 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %79
  %87 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %88 = call i64 @AUDIT_MODE(%struct.aa_profile* %87)
  %89 = load i64, i64* @AUDIT_NOQUIET, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %93 = call i64 @AUDIT_MODE(%struct.aa_profile* %92)
  %94 = load i64, i64* @AUDIT_ALL, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.aa_perms*, %struct.aa_perms** %23, align 8
  %98 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %22, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %22, align 4
  br label %103

103:                                              ; preds = %96, %91, %86, %79
  %104 = load i32, i32* %22, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %25, align 4
  store i32 %107, i32* %13, align 4
  br label %154

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108, %62
  %110 = load i8*, i8** %16, align 8
  %111 = call %struct.TYPE_4__* @aad(i32* @sa)
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  %113 = load i8*, i8** %17, align 8
  %114 = call %struct.TYPE_4__* @aad(i32* @sa)
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i8* %113, i8** %116, align 8
  %117 = load i8*, i8** %18, align 8
  %118 = call %struct.TYPE_4__* @aad(i32* @sa)
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  store i8* %117, i8** %120, align 8
  %121 = load i8*, i8** %19, align 8
  %122 = call %struct.TYPE_4__* @aad(i32* @sa)
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  store i8* %121, i8** %124, align 8
  %125 = load i64, i64* %20, align 8
  %126 = call %struct.TYPE_4__* @aad(i32* @sa)
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 3
  store i64 %125, i64* %128, align 8
  %129 = load i8*, i8** %21, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %143

131:                                              ; preds = %109
  %132 = load %struct.aa_perms*, %struct.aa_perms** %23, align 8
  %133 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @AA_AUDIT_DATA, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load i8*, i8** %21, align 8
  %140 = call %struct.TYPE_4__* @aad(i32* @sa)
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 4
  store i8* %139, i8** %142, align 8
  br label %143

143:                                              ; preds = %138, %131, %109
  %144 = load i8*, i8** %24, align 8
  %145 = call %struct.TYPE_4__* @aad(i32* @sa)
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* %25, align 4
  %148 = call %struct.TYPE_4__* @aad(i32* @sa)
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* %26, align 4
  %151 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %152 = load i32, i32* @audit_cb, align 4
  %153 = call i32 @aa_audit(i32 %150, %struct.aa_profile* %151, i32* @sa, i32 %152)
  store i32 %153, i32* %13, align 4
  br label %154

154:                                              ; preds = %143, %106, %61
  %155 = load i32, i32* %13, align 4
  ret i32 %155
}

declare dso_local i32 @DEFINE_AUDIT_DATA(i32, i32, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @AUDIT_MODE(%struct.aa_profile*) #1

declare dso_local %struct.TYPE_4__* @aad(i32*) #1

declare dso_local i32 @aa_audit(i32, %struct.aa_profile*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
