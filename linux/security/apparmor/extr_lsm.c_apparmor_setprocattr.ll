; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_setprocattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_setprocattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 }

@sa = common dso_local global i32 0, align 4
@LSM_AUDIT_DATA_NONE = common dso_local global i32 0, align 4
@OP_SETPROCATTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"changehat\00", align 1
@AA_CHANGE_NOFLAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"permhat\00", align 1
@AA_CHANGE_TEST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"changeprofile\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"permprofile\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@AA_CHANGE_STACK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@AA_CHANGE_ONEXEC = common dso_local global i32 0, align 4
@AUDIT_APPARMOR_DENIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @apparmor_setprocattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apparmor_setprocattr(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i32, i32* @sa, align 4
  %15 = load i32, i32* @LSM_AUDIT_DATA_NONE, align 4
  %16 = load i32, i32* @OP_SETPROCATTR, align 4
  %17 = call i32 @DEFINE_AUDIT_DATA(i32 %14, i32 %15, i32 %16)
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %186

23:                                               ; preds = %3
  %24 = load i8*, i8** %10, align 8
  %25 = load i64, i64* %7, align 8
  %26 = sub i64 %25, 1
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %23
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, 1
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmalloc(i64 %33, i32 %34)
  store i8* %35, i8** %10, align 8
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %186

41:                                               ; preds = %31
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @memcpy(i8* %42, i8* %43, i64 %44)
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %41, %23
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = call i8* @strim(i8* %52)
  store i8* %53, i8** %10, align 8
  %54 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %165

58:                                               ; preds = %49
  %59 = load i8*, i8** %10, align 8
  %60 = call i8* @skip_spaces(i8* %59)
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %165

65:                                               ; preds = %58
  %66 = load i64, i64* %7, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i8*, i8** %9, align 8
  br label %74

72:                                               ; preds = %65
  %73 = load i8*, i8** %6, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i8* [ %71, %70 ], [ %73, %72 ]
  %76 = ptrtoint i8* %67 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sub i64 %66, %78
  store i64 %79, i64* %11, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %131

83:                                               ; preds = %74
  %84 = load i8*, i8** %8, align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i8*, i8** %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i32, i32* @AA_CHANGE_NOFLAGS, align 4
  %91 = call i32 @aa_setprocattr_changehat(i8* %88, i64 %89, i32 %90)
  store i32 %91, i32* %12, align 4
  br label %130

92:                                               ; preds = %83
  %93 = load i8*, i8** %8, align 8
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i8*, i8** %10, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i32, i32* @AA_CHANGE_TEST, align 4
  %100 = call i32 @aa_setprocattr_changehat(i8* %97, i64 %98, i32 %99)
  store i32 %100, i32* %12, align 4
  br label %129

101:                                              ; preds = %92
  %102 = load i8*, i8** %8, align 8
  %103 = call i64 @strcmp(i8* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i8*, i8** %10, align 8
  %107 = load i32, i32* @AA_CHANGE_NOFLAGS, align 4
  %108 = call i32 @aa_change_profile(i8* %106, i32 %107)
  store i32 %108, i32* %12, align 4
  br label %128

109:                                              ; preds = %101
  %110 = load i8*, i8** %8, align 8
  %111 = call i64 @strcmp(i8* %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i8*, i8** %10, align 8
  %115 = load i32, i32* @AA_CHANGE_TEST, align 4
  %116 = call i32 @aa_change_profile(i8* %114, i32 %115)
  store i32 %116, i32* %12, align 4
  br label %127

117:                                              ; preds = %109
  %118 = load i8*, i8** %8, align 8
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i8*, i8** %10, align 8
  %123 = load i32, i32* @AA_CHANGE_STACK, align 4
  %124 = call i32 @aa_change_profile(i8* %122, i32 %123)
  store i32 %124, i32* %12, align 4
  br label %126

125:                                              ; preds = %117
  br label %169

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126, %113
  br label %128

128:                                              ; preds = %127, %105
  br label %129

129:                                              ; preds = %128, %96
  br label %130

130:                                              ; preds = %129, %87
  br label %158

131:                                              ; preds = %74
  %132 = load i8*, i8** %5, align 8
  %133 = call i64 @strcmp(i8* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %131
  %136 = load i8*, i8** %8, align 8
  %137 = call i64 @strcmp(i8* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load i8*, i8** %10, align 8
  %141 = load i32, i32* @AA_CHANGE_ONEXEC, align 4
  %142 = call i32 @aa_change_profile(i8* %140, i32 %141)
  store i32 %142, i32* %12, align 4
  br label %155

143:                                              ; preds = %135
  %144 = load i8*, i8** %8, align 8
  %145 = call i64 @strcmp(i8* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = load i8*, i8** %10, align 8
  %149 = load i32, i32* @AA_CHANGE_ONEXEC, align 4
  %150 = load i32, i32* @AA_CHANGE_STACK, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @aa_change_profile(i8* %148, i32 %151)
  store i32 %152, i32* %12, align 4
  br label %154

153:                                              ; preds = %143
  br label %169

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %154, %139
  br label %157

156:                                              ; preds = %131
  br label %169

157:                                              ; preds = %155
  br label %158

158:                                              ; preds = %157, %130
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i64, i64* %7, align 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %12, align 4
  br label %164

164:                                              ; preds = %161, %158
  br label %165

165:                                              ; preds = %169, %164, %64, %57
  %166 = load i8*, i8** %9, align 8
  %167 = call i32 @kfree(i8* %166)
  %168 = load i32, i32* %12, align 4
  store i32 %168, i32* %4, align 4
  br label %186

169:                                              ; preds = %156, %153, %125
  %170 = call i32 (...) @begin_current_label_crit_section()
  %171 = call %struct.TYPE_2__* @aad(i32* @sa)
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 4
  %173 = load i8*, i8** %5, align 8
  %174 = call %struct.TYPE_2__* @aad(i32* @sa)
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %12, align 4
  %178 = call %struct.TYPE_2__* @aad(i32* @sa)
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* @AUDIT_APPARMOR_DENIED, align 4
  %181 = call i32 @aa_audit_msg(i32 %180, i32* @sa, i32* null)
  %182 = call %struct.TYPE_2__* @aad(i32* @sa)
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @end_current_label_crit_section(i32 %184)
  br label %165

186:                                              ; preds = %165, %38, %20
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i32 @DEFINE_AUDIT_DATA(i32, i32, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @strim(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @aa_setprocattr_changehat(i8*, i64, i32) #1

declare dso_local i32 @aa_change_profile(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @begin_current_label_crit_section(...) #1

declare dso_local %struct.TYPE_2__* @aad(i32*) #1

declare dso_local i32 @aa_audit_msg(i32, i32*, i32*) #1

declare dso_local i32 @end_current_label_crit_section(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
