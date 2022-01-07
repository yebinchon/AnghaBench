; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_selinux_set_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_selinux_set_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i64, i64 }
%struct.security_class_mapping = type { i8*, i32** }
%struct.selinux_map = type { i64, %struct.selinux_mapping* }
%struct.selinux_mapping = type { i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"SELinux:  Class %s not defined in policy.\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"SELinux:  Permission %s in class %s not defined in policy.\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"SELinux: the above unknown classes and permissions will be %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"allowed\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"denied\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.security_class_mapping*, %struct.selinux_map*)* @selinux_set_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_set_mapping(%struct.policydb* %0, %struct.security_class_mapping* %1, %struct.selinux_map* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.security_class_mapping*, align 8
  %7 = alloca %struct.selinux_map*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.security_class_mapping*, align 8
  %13 = alloca %struct.selinux_mapping*, align 8
  store %struct.policydb* %0, %struct.policydb** %5, align 8
  store %struct.security_class_mapping* %1, %struct.security_class_mapping** %6, align 8
  store %struct.selinux_map* %2, %struct.selinux_map** %7, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.security_class_mapping*, %struct.security_class_mapping** %6, align 8
  %15 = icmp ne %struct.security_class_mapping* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %195

19:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %27, %19
  %21 = load %struct.security_class_mapping*, %struct.security_class_mapping** %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.security_class_mapping, %struct.security_class_mapping* %21, i64 %22
  %24 = getelementptr inbounds %struct.security_class_mapping, %struct.security_class_mapping* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %8, align 8
  br label %20

30:                                               ; preds = %20
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.selinux_mapping* @kcalloc(i64 %32, i32 24, i32 %33)
  %35 = load %struct.selinux_map*, %struct.selinux_map** %7, align 8
  %36 = getelementptr inbounds %struct.selinux_map, %struct.selinux_map* %35, i32 0, i32 1
  store %struct.selinux_mapping* %34, %struct.selinux_mapping** %36, align 8
  %37 = load %struct.selinux_map*, %struct.selinux_map** %7, align 8
  %38 = getelementptr inbounds %struct.selinux_map, %struct.selinux_map* %37, i32 0, i32 1
  %39 = load %struct.selinux_mapping*, %struct.selinux_mapping** %38, align 8
  %40 = icmp ne %struct.selinux_mapping* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %195

44:                                               ; preds = %30
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %167, %92, %67, %44
  %46 = load %struct.security_class_mapping*, %struct.security_class_mapping** %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.security_class_mapping, %struct.security_class_mapping* %46, i64 %47
  %49 = getelementptr inbounds %struct.security_class_mapping, %struct.security_class_mapping* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %171

52:                                               ; preds = %45
  %53 = load %struct.security_class_mapping*, %struct.security_class_mapping** %6, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %9, align 8
  %56 = getelementptr inbounds %struct.security_class_mapping, %struct.security_class_mapping* %53, i64 %54
  store %struct.security_class_mapping* %56, %struct.security_class_mapping** %12, align 8
  %57 = load %struct.selinux_map*, %struct.selinux_map** %7, align 8
  %58 = getelementptr inbounds %struct.selinux_map, %struct.selinux_map* %57, i32 0, i32 1
  %59 = load %struct.selinux_mapping*, %struct.selinux_mapping** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.selinux_mapping, %struct.selinux_mapping* %59, i64 %60
  store %struct.selinux_mapping* %61, %struct.selinux_mapping** %13, align 8
  %62 = load %struct.security_class_mapping*, %struct.security_class_mapping** %12, align 8
  %63 = getelementptr inbounds %struct.security_class_mapping, %struct.security_class_mapping* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %52
  %68 = load %struct.selinux_mapping*, %struct.selinux_mapping** %13, align 8
  %69 = getelementptr inbounds %struct.selinux_mapping, %struct.selinux_mapping* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  br label %45

70:                                               ; preds = %52
  %71 = load %struct.policydb*, %struct.policydb** %5, align 8
  %72 = load %struct.security_class_mapping*, %struct.security_class_mapping** %12, align 8
  %73 = getelementptr inbounds %struct.security_class_mapping, %struct.security_class_mapping* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @string_to_security_class(%struct.policydb* %71, i8* %74)
  %76 = load %struct.selinux_mapping*, %struct.selinux_mapping** %13, align 8
  %77 = getelementptr inbounds %struct.selinux_mapping, %struct.selinux_mapping* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.selinux_mapping*, %struct.selinux_mapping** %13, align 8
  %79 = getelementptr inbounds %struct.selinux_mapping, %struct.selinux_mapping* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %70
  %83 = load %struct.security_class_mapping*, %struct.security_class_mapping** %12, align 8
  %84 = getelementptr inbounds %struct.security_class_mapping, %struct.security_class_mapping* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  %87 = load %struct.policydb*, %struct.policydb** %5, align 8
  %88 = getelementptr inbounds %struct.policydb, %struct.policydb* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %186

92:                                               ; preds = %82
  %93 = load %struct.selinux_mapping*, %struct.selinux_mapping** %13, align 8
  %94 = getelementptr inbounds %struct.selinux_mapping, %struct.selinux_mapping* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  store i32 1, i32* %11, align 4
  br label %45

95:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %164, %115, %95
  %97 = load %struct.security_class_mapping*, %struct.security_class_mapping** %12, align 8
  %98 = getelementptr inbounds %struct.security_class_mapping, %struct.security_class_mapping* %97, i32 0, i32 1
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %167

105:                                              ; preds = %96
  %106 = load %struct.security_class_mapping*, %struct.security_class_mapping** %12, align 8
  %107 = getelementptr inbounds %struct.security_class_mapping, %struct.security_class_mapping* %106, i32 0, i32 1
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %105
  %116 = load i32, i32* %10, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %96

118:                                              ; preds = %105
  %119 = load %struct.policydb*, %struct.policydb** %5, align 8
  %120 = load %struct.selinux_mapping*, %struct.selinux_mapping** %13, align 8
  %121 = getelementptr inbounds %struct.selinux_mapping, %struct.selinux_mapping* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.security_class_mapping*, %struct.security_class_mapping** %12, align 8
  %124 = getelementptr inbounds %struct.security_class_mapping, %struct.security_class_mapping* %123, i32 0, i32 1
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @string_to_av_perm(%struct.policydb* %119, i32 %122, i32* %129)
  %131 = load %struct.selinux_mapping*, %struct.selinux_mapping** %13, align 8
  %132 = getelementptr inbounds %struct.selinux_mapping, %struct.selinux_mapping* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %130, i32* %136, align 4
  %137 = load %struct.selinux_mapping*, %struct.selinux_mapping** %13, align 8
  %138 = getelementptr inbounds %struct.selinux_mapping, %struct.selinux_mapping* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %164, label %145

145:                                              ; preds = %118
  %146 = load %struct.security_class_mapping*, %struct.security_class_mapping** %12, align 8
  %147 = getelementptr inbounds %struct.security_class_mapping, %struct.security_class_mapping* %146, i32 0, i32 1
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = bitcast i32* %152 to i8*
  %154 = load %struct.security_class_mapping*, %struct.security_class_mapping** %12, align 8
  %155 = getelementptr inbounds %struct.security_class_mapping, %struct.security_class_mapping* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i8* %153, i8* %156)
  %158 = load %struct.policydb*, %struct.policydb** %5, align 8
  %159 = getelementptr inbounds %struct.policydb, %struct.policydb* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %145
  br label %186

163:                                              ; preds = %145
  store i32 1, i32* %11, align 4
  br label %164

164:                                              ; preds = %163, %118
  %165 = load i32, i32* %10, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %96

167:                                              ; preds = %96
  %168 = load i32, i32* %10, align 4
  %169 = load %struct.selinux_mapping*, %struct.selinux_mapping** %13, align 8
  %170 = getelementptr inbounds %struct.selinux_mapping, %struct.selinux_mapping* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  br label %45

171:                                              ; preds = %45
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %171
  %175 = load %struct.policydb*, %struct.policydb** %5, align 8
  %176 = getelementptr inbounds %struct.policydb, %struct.policydb* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %181 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %180)
  br label %182

182:                                              ; preds = %174, %171
  %183 = load i64, i64* %8, align 8
  %184 = load %struct.selinux_map*, %struct.selinux_map** %7, align 8
  %185 = getelementptr inbounds %struct.selinux_map, %struct.selinux_map* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  store i32 0, i32* %4, align 4
  br label %195

186:                                              ; preds = %162, %91
  %187 = load %struct.selinux_map*, %struct.selinux_map** %7, align 8
  %188 = getelementptr inbounds %struct.selinux_map, %struct.selinux_map* %187, i32 0, i32 1
  %189 = load %struct.selinux_mapping*, %struct.selinux_mapping** %188, align 8
  %190 = call i32 @kfree(%struct.selinux_mapping* %189)
  %191 = load %struct.selinux_map*, %struct.selinux_map** %7, align 8
  %192 = getelementptr inbounds %struct.selinux_map, %struct.selinux_map* %191, i32 0, i32 1
  store %struct.selinux_mapping* null, %struct.selinux_mapping** %192, align 8
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %186, %182, %41, %16
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local %struct.selinux_mapping* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @string_to_security_class(%struct.policydb*, i8*) #1

declare dso_local i32 @pr_info(i8*, i8*, ...) #1

declare dso_local i32 @string_to_av_perm(%struct.policydb*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.selinux_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
