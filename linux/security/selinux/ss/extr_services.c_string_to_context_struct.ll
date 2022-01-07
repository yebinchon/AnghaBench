; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_string_to_context_struct.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_string_to_context_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sidtab = type { i32 }
%struct.context = type { i32, i32, i32 }
%struct.role_datum = type { i32 }
%struct.type_datum = type { i32, i64 }
%struct.user_datum = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.sidtab*, i8*, %struct.context*, i32)* @string_to_context_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_to_context_struct(%struct.policydb* %0, %struct.sidtab* %1, i8* %2, %struct.context* %3, i32 %4) #0 {
  %6 = alloca %struct.policydb*, align 8
  %7 = alloca %struct.sidtab*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.role_datum*, align 8
  %12 = alloca %struct.type_datum*, align 8
  %13 = alloca %struct.user_datum*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %6, align 8
  store %struct.sidtab* %1, %struct.sidtab** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.context* %3, %struct.context** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.context*, %struct.context** %9, align 8
  %19 = call i32 @context_init(%struct.context* %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %17, align 4
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** %14, align 8
  %23 = load i8*, i8** %14, align 8
  store i8* %23, i8** %15, align 8
  br label %24

24:                                               ; preds = %36, %5
  %25 = load i8*, i8** %15, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i8*, i8** %15, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 58
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i1 [ false, %24 ], [ %33, %29 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i8*, i8** %15, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %15, align 8
  br label %24

39:                                               ; preds = %34
  %40 = load i8*, i8** %15, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %166

45:                                               ; preds = %39
  %46 = load i8*, i8** %15, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %15, align 8
  store i8 0, i8* %46, align 1
  %48 = load %struct.policydb*, %struct.policydb** %6, align 8
  %49 = getelementptr inbounds %struct.policydb, %struct.policydb* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %14, align 8
  %53 = call i8* @hashtab_search(i32 %51, i8* %52)
  %54 = bitcast i8* %53 to %struct.user_datum*
  store %struct.user_datum* %54, %struct.user_datum** %13, align 8
  %55 = load %struct.user_datum*, %struct.user_datum** %13, align 8
  %56 = icmp ne %struct.user_datum* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %45
  br label %166

58:                                               ; preds = %45
  %59 = load %struct.user_datum*, %struct.user_datum** %13, align 8
  %60 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.context*, %struct.context** %9, align 8
  %63 = getelementptr inbounds %struct.context, %struct.context* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i8*, i8** %15, align 8
  store i8* %64, i8** %14, align 8
  br label %65

65:                                               ; preds = %77, %58
  %66 = load i8*, i8** %15, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i8*, i8** %15, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 58
  br label %75

75:                                               ; preds = %70, %65
  %76 = phi i1 [ false, %65 ], [ %74, %70 ]
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = load i8*, i8** %15, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %15, align 8
  br label %65

80:                                               ; preds = %75
  %81 = load i8*, i8** %15, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %166

86:                                               ; preds = %80
  %87 = load i8*, i8** %15, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %15, align 8
  store i8 0, i8* %87, align 1
  %89 = load %struct.policydb*, %struct.policydb** %6, align 8
  %90 = getelementptr inbounds %struct.policydb, %struct.policydb* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %14, align 8
  %94 = call i8* @hashtab_search(i32 %92, i8* %93)
  %95 = bitcast i8* %94 to %struct.role_datum*
  store %struct.role_datum* %95, %struct.role_datum** %11, align 8
  %96 = load %struct.role_datum*, %struct.role_datum** %11, align 8
  %97 = icmp ne %struct.role_datum* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %86
  br label %166

99:                                               ; preds = %86
  %100 = load %struct.role_datum*, %struct.role_datum** %11, align 8
  %101 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.context*, %struct.context** %9, align 8
  %104 = getelementptr inbounds %struct.context, %struct.context* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i8*, i8** %15, align 8
  store i8* %105, i8** %14, align 8
  br label %106

106:                                              ; preds = %118, %99
  %107 = load i8*, i8** %15, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i8*, i8** %15, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 58
  br label %116

116:                                              ; preds = %111, %106
  %117 = phi i1 [ false, %106 ], [ %115, %111 ]
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = load i8*, i8** %15, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %15, align 8
  br label %106

121:                                              ; preds = %116
  %122 = load i8*, i8** %15, align 8
  %123 = load i8, i8* %122, align 1
  store i8 %123, i8* %16, align 1
  %124 = load i8*, i8** %15, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %15, align 8
  store i8 0, i8* %124, align 1
  %126 = load %struct.policydb*, %struct.policydb** %6, align 8
  %127 = getelementptr inbounds %struct.policydb, %struct.policydb* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i8*, i8** %14, align 8
  %131 = call i8* @hashtab_search(i32 %129, i8* %130)
  %132 = bitcast i8* %131 to %struct.type_datum*
  store %struct.type_datum* %132, %struct.type_datum** %12, align 8
  %133 = load %struct.type_datum*, %struct.type_datum** %12, align 8
  %134 = icmp ne %struct.type_datum* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %121
  %136 = load %struct.type_datum*, %struct.type_datum** %12, align 8
  %137 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135, %121
  br label %166

141:                                              ; preds = %135
  %142 = load %struct.type_datum*, %struct.type_datum** %12, align 8
  %143 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.context*, %struct.context** %9, align 8
  %146 = getelementptr inbounds %struct.context, %struct.context* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load %struct.policydb*, %struct.policydb** %6, align 8
  %148 = load i8, i8* %16, align 1
  %149 = load i8*, i8** %15, align 8
  %150 = load %struct.context*, %struct.context** %9, align 8
  %151 = load %struct.sidtab*, %struct.sidtab** %7, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @mls_context_to_sid(%struct.policydb* %147, i8 signext %148, i8* %149, %struct.context* %150, %struct.sidtab* %151, i32 %152)
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* %17, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %141
  br label %166

157:                                              ; preds = %141
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %17, align 4
  %160 = load %struct.policydb*, %struct.policydb** %6, align 8
  %161 = load %struct.context*, %struct.context** %9, align 8
  %162 = call i32 @policydb_context_isvalid(%struct.policydb* %160, %struct.context* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %157
  br label %166

165:                                              ; preds = %157
  store i32 0, i32* %17, align 4
  br label %166

166:                                              ; preds = %165, %164, %156, %140, %98, %85, %57, %44
  %167 = load i32, i32* %17, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load %struct.context*, %struct.context** %9, align 8
  %171 = call i32 @context_destroy(%struct.context* %170)
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i32, i32* %17, align 4
  ret i32 %173
}

declare dso_local i32 @context_init(%struct.context*) #1

declare dso_local i8* @hashtab_search(i32, i8*) #1

declare dso_local i32 @mls_context_to_sid(%struct.policydb*, i8 signext, i8*, %struct.context*, %struct.sidtab*, i32) #1

declare dso_local i32 @policydb_context_isvalid(%struct.policydb*, %struct.context*) #1

declare dso_local i32 @context_destroy(%struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
