; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_aa_audit_file.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_aa_audit_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.aa_profile = type { i32 }
%struct.aa_perms = type { i32, i32, i32, i32 }
%struct.aa_label = type { i32 }
%struct.TYPE_11__ = type { i32, i8*, i8*, i32, i32, %struct.TYPE_8__, %struct.aa_label* }
%struct.TYPE_8__ = type { i8*, i32 }

@AUDIT_APPARMOR_AUTO = common dso_local global i32 0, align 4
@sa = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@LSM_AUDIT_DATA_TASK = common dso_local global i32 0, align 4
@AUDIT_ALL = common dso_local global i64 0, align 8
@AUDIT_APPARMOR_AUDIT = common dso_local global i32 0, align 4
@AUDIT_APPARMOR_KILL = common dso_local global i32 0, align 4
@AUDIT_NOQUIET = common dso_local global i64 0, align 8
@file_audit_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_audit_file(%struct.aa_profile* %0, %struct.aa_perms* %1, i8* %2, i32 %3, i8* %4, i8* %5, %struct.aa_label* %6, i32 %7, i8* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.aa_profile*, align 8
  %13 = alloca %struct.aa_perms*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.aa_label*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %12, align 8
  store %struct.aa_perms* %1, %struct.aa_perms** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store %struct.aa_label* %6, %struct.aa_label** %18, align 8
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i32 %9, i32* %21, align 4
  %24 = load i32, i32* @AUDIT_APPARMOR_AUTO, align 4
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @LSM_AUDIT_DATA_TASK, align 4
  %26 = load i8*, i8** %14, align 8
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sa, i32 0, i32 0, i32 0), align 8
  %28 = call i32 @DEFINE_AUDIT_DATA(i32* %27, i32 %25, i8* %26)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sa, i32 0, i32 0, i32 0), align 8
  %29 = load i32, i32* %15, align 4
  %30 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %17, align 8
  %36 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load %struct.aa_label*, %struct.aa_label** %18, align 8
  %40 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 6
  store %struct.aa_label* %39, %struct.aa_label** %41, align 8
  %42 = load i32, i32* %19, align 4
  %43 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load i8*, i8** %20, align 8
  %47 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %21, align 4
  %50 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sa, i32 0, i32 0, i32 0), align 8
  %52 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %10
  %61 = load %struct.aa_perms*, %struct.aa_perms** %13, align 8
  %62 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %23, align 4
  %64 = load %struct.aa_profile*, %struct.aa_profile** %12, align 8
  %65 = call i64 @AUDIT_MODE(%struct.aa_profile* %64)
  %66 = load i64, i64* @AUDIT_ALL, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  store i32 65535, i32* %23, align 4
  br label %72

72:                                               ; preds = %71, %60
  %73 = load i32, i32* %23, align 4
  %74 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @likely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %72
  store i32 0, i32* %11, align 4
  br label %170

87:                                               ; preds = %72
  %88 = load i32, i32* @AUDIT_APPARMOR_AUDIT, align 4
  store i32 %88, i32* %22, align 4
  br label %155

89:                                               ; preds = %10
  %90 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.aa_perms*, %struct.aa_perms** %13, align 8
  %94 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %92, %96
  %98 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @AA_BUG(i32 %105)
  %107 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.aa_perms*, %struct.aa_perms** %13, align 8
  %111 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %89
  %116 = load i32, i32* @AUDIT_APPARMOR_KILL, align 4
  store i32 %116, i32* %22, align 4
  br label %117

117:                                              ; preds = %115, %89
  %118 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.aa_perms*, %struct.aa_perms** %13, align 8
  %122 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %120, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %117
  %127 = load %struct.aa_profile*, %struct.aa_profile** %12, align 8
  %128 = call i64 @AUDIT_MODE(%struct.aa_profile* %127)
  %129 = load i64, i64* @AUDIT_NOQUIET, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %145

131:                                              ; preds = %126
  %132 = load %struct.aa_profile*, %struct.aa_profile** %12, align 8
  %133 = call i64 @AUDIT_MODE(%struct.aa_profile* %132)
  %134 = load i64, i64* @AUDIT_ALL, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %131
  %137 = load %struct.aa_perms*, %struct.aa_perms** %13, align 8
  %138 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = xor i32 %139, -1
  %141 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = and i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %136, %131, %126, %117
  %146 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %145
  %151 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %11, align 4
  br label %170

154:                                              ; preds = %145
  br label %155

155:                                              ; preds = %154, %87
  %156 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.aa_perms*, %struct.aa_perms** %13, align 8
  %160 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = xor i32 %161, -1
  %163 = and i32 %158, %162
  %164 = call %struct.TYPE_11__* @aad(%struct.TYPE_10__* @sa)
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %22, align 4
  %167 = load %struct.aa_profile*, %struct.aa_profile** %12, align 8
  %168 = load i32, i32* @file_audit_cb, align 4
  %169 = call i32 @aa_audit(i32 %166, %struct.aa_profile* %167, %struct.TYPE_10__* @sa, i32 %168)
  store i32 %169, i32* %11, align 4
  br label %170

170:                                              ; preds = %155, %150, %86
  %171 = load i32, i32* %11, align 4
  ret i32 %171
}

declare dso_local i32 @DEFINE_AUDIT_DATA(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_11__* @aad(%struct.TYPE_10__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @AUDIT_MODE(%struct.aa_profile*) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @aa_audit(i32, %struct.aa_profile*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
