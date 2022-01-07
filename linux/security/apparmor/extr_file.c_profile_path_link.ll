; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_profile_path_link.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_profile_path_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.path = type { i32 }
%struct.path_cond = type { i32 }
%struct.aa_perms = type { i32, i32, i32, i32, i32 }

@AA_MAY_LINK = common dso_local global i32 0, align 4
@OP_LINK = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"target restricted\00", align 1
@AA_LINK_SUBSET = common dso_local global i32 0, align 4
@AA_AUDIT_FILE_MASK = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"link not subset of target\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, %struct.path*, i8*, %struct.path*, i8*, %struct.path_cond*)* @profile_path_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @profile_path_link(%struct.aa_profile* %0, %struct.path* %1, i8* %2, %struct.path* %3, i8* %4, %struct.path_cond* %5) #0 {
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca %struct.path*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.path*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.path_cond*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.aa_perms, align 4
  %16 = alloca %struct.aa_perms, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %7, align 8
  store %struct.path* %1, %struct.path** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.path* %3, %struct.path** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.path_cond* %5, %struct.path_cond** %12, align 8
  store i8* null, i8** %14, align 8
  %21 = bitcast %struct.aa_perms* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 20, i1 false)
  store i8* null, i8** %17, align 8
  %22 = load i32, i32* @AA_MAY_LINK, align 4
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* @OP_LINK, align 4
  %24 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %25 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %24, i32 0, i32 2
  %26 = load %struct.path*, %struct.path** %8, align 8
  %27 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %28 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.path_cond*, %struct.path_cond** %12, align 8
  %32 = load i32, i32* @AA_MAY_LINK, align 4
  %33 = call i32 @path_name(i32 %23, i32* %25, %struct.path* %26, i32 %29, i8* %30, i8** %13, %struct.path_cond* %31, i32 %32)
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %20, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %6
  br label %177

37:                                               ; preds = %6
  %38 = load i32, i32* @OP_LINK, align 4
  %39 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %40 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %39, i32 0, i32 2
  %41 = load %struct.path*, %struct.path** %10, align 8
  %42 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %43 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.path_cond*, %struct.path_cond** %12, align 8
  %47 = load i32, i32* @AA_MAY_LINK, align 4
  %48 = call i32 @path_name(i32 %38, i32* %40, %struct.path* %41, i32 %44, i8* %45, i8** %14, %struct.path_cond* %46, i32 %47)
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %20, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %177

52:                                               ; preds = %37
  %53 = load i32, i32* @EACCES, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %20, align 4
  %55 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %56 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %60 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = load %struct.path_cond*, %struct.path_cond** %12, align 8
  %65 = call i32 @aa_str_perms(i32 %58, i32 %62, i8* %63, %struct.path_cond* %64, %struct.aa_perms* %15)
  store i32 %65, i32* %19, align 4
  %66 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %15, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AA_MAY_LINK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %52
  br label %177

72:                                               ; preds = %52
  %73 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %74 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %19, align 4
  %78 = call i32 @aa_dfa_null_transition(i32 %76, i32 %77)
  store i32 %78, i32* %19, align 4
  %79 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %80 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i8*, i8** %14, align 8
  %85 = load %struct.path_cond*, %struct.path_cond** %12, align 8
  %86 = call i32 @aa_str_perms(i32 %82, i32 %83, i8* %84, %struct.path_cond* %85, %struct.aa_perms* %16)
  %87 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %16, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %15, i32 0, i32 4
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %16, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %15, i32 0, i32 3
  store i32 %91, i32* %92, align 4
  %93 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %16, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %15, i32 0, i32 2
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %16, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @AA_MAY_LINK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %72
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %102 = bitcast %struct.aa_perms* %15 to i8*
  %103 = bitcast %struct.aa_perms* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 4 %103, i64 20, i1 false)
  br label %177

104:                                              ; preds = %72
  %105 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %16, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @AA_LINK_SUBSET, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  br label %176

111:                                              ; preds = %104
  %112 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %113 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %117 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %14, align 8
  %121 = load %struct.path_cond*, %struct.path_cond** %12, align 8
  %122 = call i32 @aa_str_perms(i32 %115, i32 %119, i8* %120, %struct.path_cond* %121, %struct.aa_perms* %16)
  %123 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %15, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @AA_MAY_LINK, align 4
  %126 = xor i32 %125, -1
  %127 = and i32 %124, %126
  store i32 %127, i32* %18, align 4
  %128 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %16, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @AA_MAY_LINK, align 4
  %131 = or i32 %129, %130
  %132 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %15, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, %131
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* @AA_AUDIT_FILE_MASK, align 4
  %136 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %15, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %16, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = xor i32 %139, -1
  %141 = and i32 %137, %140
  %142 = and i32 %135, %141
  %143 = load i32, i32* %18, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %18, align 4
  %145 = load i32, i32* %18, align 4
  %146 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %15, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = xor i32 %147, -1
  %149 = and i32 %145, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %111
  br label %177

152:                                              ; preds = %111
  %153 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %15, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @MAY_EXEC, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %15, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %16, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @xindex_is_subset(i32 %160, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %158
  %166 = load i32, i32* @MAY_EXEC, align 4
  %167 = xor i32 %166, -1
  %168 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %15, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, %167
  store i32 %170, i32* %168, align 4
  %171 = load i32, i32* @MAY_EXEC, align 4
  %172 = load i32, i32* %18, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %18, align 4
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %177

174:                                              ; preds = %158, %152
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175, %110
  store i32 0, i32* %20, align 4
  br label %177

177:                                              ; preds = %176, %165, %151, %101, %71, %51, %36
  %178 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %179 = load i32, i32* @OP_LINK, align 4
  %180 = load i32, i32* %18, align 4
  %181 = load i8*, i8** %13, align 8
  %182 = load i8*, i8** %14, align 8
  %183 = load %struct.path_cond*, %struct.path_cond** %12, align 8
  %184 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i8*, i8** %17, align 8
  %187 = load i32, i32* %20, align 4
  %188 = call i32 @aa_audit_file(%struct.aa_profile* %178, %struct.aa_perms* %15, i32 %179, i32 %180, i8* %181, i8* %182, i32* null, i32 %185, i8* %186, i32 %187)
  ret i32 %188
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @path_name(i32, i32*, %struct.path*, i32, i8*, i8**, %struct.path_cond*, i32) #2

declare dso_local i32 @aa_str_perms(i32, i32, i8*, %struct.path_cond*, %struct.aa_perms*) #2

declare dso_local i32 @aa_dfa_null_transition(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @xindex_is_subset(i32, i32) #2

declare dso_local i32 @aa_audit_file(%struct.aa_profile*, %struct.aa_perms*, i32, i32, i8*, i8*, i32*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
