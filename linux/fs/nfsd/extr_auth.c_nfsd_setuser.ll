; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_auth.c_nfsd_setuser.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_auth.c_nfsd_setuser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.group_info*, i32, i32 }
%struct.group_info = type { i32, i32* }
%struct.svc_export = type { i32, i32 }
%struct.cred = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NFSEXP_ALLSQUASH = common dso_local global i32 0, align 4
@NFSEXP_ROOTSQUASH = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@INVALID_UID = common dso_local global i32 0, align 4
@INVALID_GID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_setuser(%struct.svc_rqst* %0, %struct.svc_export* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.svc_export*, align 8
  %6 = alloca %struct.group_info*, align 8
  %7 = alloca %struct.group_info*, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.svc_export* %1, %struct.svc_export** %5, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %12 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %13 = call i32 @nfsexp_flags(%struct.svc_rqst* %11, %struct.svc_export* %12)
  store i32 %13, i32* %10, align 4
  %14 = call i32 (...) @validate_process_creds()
  %15 = call i32 (...) @current_real_cred()
  %16 = call i32 @get_cred(i32 %15)
  %17 = call i32 @revert_creds(i32 %16)
  %18 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %18, %struct.cred** %8, align 8
  %19 = load %struct.cred*, %struct.cred** %8, align 8
  %20 = icmp ne %struct.cred* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %221

24:                                               ; preds = %2
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %26 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cred*, %struct.cred** %8, align 8
  %30 = getelementptr inbounds %struct.cred, %struct.cred* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %32 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.cred*, %struct.cred** %8, align 8
  %36 = getelementptr inbounds %struct.cred, %struct.cred* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %38 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.group_info*, %struct.group_info** %39, align 8
  store %struct.group_info* %40, %struct.group_info** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @NFSEXP_ALLSQUASH, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %24
  %46 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %47 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cred*, %struct.cred** %8, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %52 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cred*, %struct.cred** %8, align 8
  %55 = getelementptr inbounds %struct.cred, %struct.cred* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = call %struct.group_info* @groups_alloc(i32 0)
  store %struct.group_info* %56, %struct.group_info** %7, align 8
  %57 = load %struct.group_info*, %struct.group_info** %7, align 8
  %58 = icmp ne %struct.group_info* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %45
  br label %216

60:                                               ; preds = %45
  br label %153

61:                                               ; preds = %24
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @NFSEXP_ROOTSQUASH, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %149

66:                                               ; preds = %61
  %67 = load %struct.cred*, %struct.cred** %8, align 8
  %68 = getelementptr inbounds %struct.cred, %struct.cred* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %71 = call i64 @uid_eq(i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %75 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.cred*, %struct.cred** %8, align 8
  %78 = getelementptr inbounds %struct.cred, %struct.cred* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %73, %66
  %80 = load %struct.cred*, %struct.cred** %8, align 8
  %81 = getelementptr inbounds %struct.cred, %struct.cred* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %84 = call i64 @gid_eq(i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %88 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.cred*, %struct.cred** %8, align 8
  %91 = getelementptr inbounds %struct.cred, %struct.cred* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %86, %79
  %93 = load %struct.group_info*, %struct.group_info** %6, align 8
  %94 = getelementptr inbounds %struct.group_info, %struct.group_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call %struct.group_info* @groups_alloc(i32 %95)
  store %struct.group_info* %96, %struct.group_info** %7, align 8
  %97 = load %struct.group_info*, %struct.group_info** %7, align 8
  %98 = icmp ne %struct.group_info* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  br label %216

100:                                              ; preds = %92
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %143, %100
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.group_info*, %struct.group_info** %6, align 8
  %104 = getelementptr inbounds %struct.group_info, %struct.group_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %146

107:                                              ; preds = %101
  %108 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %109 = load %struct.group_info*, %struct.group_info** %6, align 8
  %110 = getelementptr inbounds %struct.group_info, %struct.group_info* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @gid_eq(i32 %108, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %107
  %119 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %120 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.group_info*, %struct.group_info** %7, align 8
  %123 = getelementptr inbounds %struct.group_info, %struct.group_info* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  br label %142

128:                                              ; preds = %107
  %129 = load %struct.group_info*, %struct.group_info** %6, align 8
  %130 = getelementptr inbounds %struct.group_info, %struct.group_info* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.group_info*, %struct.group_info** %7, align 8
  %137 = getelementptr inbounds %struct.group_info, %struct.group_info* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %135, i32* %141, align 4
  br label %142

142:                                              ; preds = %128, %118
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %101

146:                                              ; preds = %101
  %147 = load %struct.group_info*, %struct.group_info** %7, align 8
  %148 = call i32 @groups_sort(%struct.group_info* %147)
  br label %152

149:                                              ; preds = %61
  %150 = load %struct.group_info*, %struct.group_info** %6, align 8
  %151 = call %struct.group_info* @get_group_info(%struct.group_info* %150)
  store %struct.group_info* %151, %struct.group_info** %7, align 8
  br label %152

152:                                              ; preds = %149, %146
  br label %153

153:                                              ; preds = %152, %60
  %154 = load %struct.cred*, %struct.cred** %8, align 8
  %155 = getelementptr inbounds %struct.cred, %struct.cred* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @INVALID_UID, align 4
  %158 = call i64 @uid_eq(i32 %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %162 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.cred*, %struct.cred** %8, align 8
  %165 = getelementptr inbounds %struct.cred, %struct.cred* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %160, %153
  %167 = load %struct.cred*, %struct.cred** %8, align 8
  %168 = getelementptr inbounds %struct.cred, %struct.cred* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @INVALID_GID, align 4
  %171 = call i64 @gid_eq(i32 %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %166
  %174 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %175 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.cred*, %struct.cred** %8, align 8
  %178 = getelementptr inbounds %struct.cred, %struct.cred* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %173, %166
  %180 = load %struct.cred*, %struct.cred** %8, align 8
  %181 = load %struct.group_info*, %struct.group_info** %7, align 8
  %182 = call i32 @set_groups(%struct.cred* %180, %struct.group_info* %181)
  %183 = load %struct.group_info*, %struct.group_info** %7, align 8
  %184 = call i32 @put_group_info(%struct.group_info* %183)
  %185 = load %struct.cred*, %struct.cred** %8, align 8
  %186 = getelementptr inbounds %struct.cred, %struct.cred* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %189 = call i64 @uid_eq(i32 %187, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %179
  %192 = load %struct.cred*, %struct.cred** %8, align 8
  %193 = getelementptr inbounds %struct.cred, %struct.cred* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @cap_drop_nfsd_set(i32 %194)
  %196 = load %struct.cred*, %struct.cred** %8, align 8
  %197 = getelementptr inbounds %struct.cred, %struct.cred* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  br label %208

198:                                              ; preds = %179
  %199 = load %struct.cred*, %struct.cred** %8, align 8
  %200 = getelementptr inbounds %struct.cred, %struct.cred* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.cred*, %struct.cred** %8, align 8
  %203 = getelementptr inbounds %struct.cred, %struct.cred* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @cap_raise_nfsd_set(i32 %201, i32 %204)
  %206 = load %struct.cred*, %struct.cred** %8, align 8
  %207 = getelementptr inbounds %struct.cred, %struct.cred* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  br label %208

208:                                              ; preds = %198, %191
  %209 = call i32 (...) @validate_process_creds()
  %210 = load %struct.cred*, %struct.cred** %8, align 8
  %211 = call %struct.cred* @override_creds(%struct.cred* %210)
  %212 = call i32 @put_cred(%struct.cred* %211)
  %213 = load %struct.cred*, %struct.cred** %8, align 8
  %214 = call i32 @put_cred(%struct.cred* %213)
  %215 = call i32 (...) @validate_process_creds()
  store i32 0, i32* %3, align 4
  br label %221

216:                                              ; preds = %99, %59
  %217 = load %struct.cred*, %struct.cred** %8, align 8
  %218 = call i32 @abort_creds(%struct.cred* %217)
  %219 = load i32, i32* @ENOMEM, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %216, %208, %21
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @nfsexp_flags(%struct.svc_rqst*, %struct.svc_export*) #1

declare dso_local i32 @validate_process_creds(...) #1

declare dso_local i32 @revert_creds(i32) #1

declare dso_local i32 @get_cred(i32) #1

declare dso_local i32 @current_real_cred(...) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local %struct.group_info* @groups_alloc(i32) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i64 @gid_eq(i32, i32) #1

declare dso_local i32 @groups_sort(%struct.group_info*) #1

declare dso_local %struct.group_info* @get_group_info(%struct.group_info*) #1

declare dso_local i32 @set_groups(%struct.cred*, %struct.group_info*) #1

declare dso_local i32 @put_group_info(%struct.group_info*) #1

declare dso_local i32 @cap_drop_nfsd_set(i32) #1

declare dso_local i32 @cap_raise_nfsd_set(i32, i32) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

declare dso_local %struct.cred* @override_creds(%struct.cred*) #1

declare dso_local i32 @abort_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
