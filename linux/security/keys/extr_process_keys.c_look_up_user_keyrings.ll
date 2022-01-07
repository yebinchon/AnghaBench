; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_process_keys.c_look_up_user_keyrings.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_process_keys.c_look_up_user_keyrings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.cred = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.user_namespace = type { i32 }

@KEY_POS_ALL = common dso_local global i32 0, align 4
@KEY_POS_SETATTR = common dso_local global i32 0, align 4
@KEY_USR_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_uid.%u\00", align 1
@key_type_keyring = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"_uid %p\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@INVALID_GID = common dso_local global i32 0, align 4
@KEY_ALLOC_UID_KEYRING = common dso_local global i32 0, align 4
@KEY_ALLOC_IN_QUOTA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"_uid_ses.%u\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"_uid_ses %p\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @look_up_user_keyrings(%struct.key** %0, %struct.key** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.key**, align 8
  %5 = alloca %struct.key**, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.user_namespace*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca %struct.key*, align 8
  %10 = alloca %struct.key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.key*, align 8
  %13 = alloca %struct.key*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [20 x i8], align 16
  %16 = alloca i32, align 4
  store %struct.key** %0, %struct.key*** %4, align 8
  store %struct.key** %1, %struct.key*** %5, align 8
  %17 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %17, %struct.cred** %6, align 8
  %18 = call %struct.user_namespace* (...) @current_user_ns()
  store %struct.user_namespace* %18, %struct.user_namespace** %7, align 8
  %19 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %20 = load %struct.cred*, %struct.cred** %6, align 8
  %21 = getelementptr inbounds %struct.cred, %struct.cred* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @from_kuid(%struct.user_namespace* %19, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* @KEY_POS_ALL, align 4
  %27 = load i32, i32* @KEY_POS_SETATTR, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load i32, i32* @KEY_USR_ALL, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @kenter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %35 = call %struct.key* @get_user_register(%struct.user_namespace* %34)
  store %struct.key* %35, %struct.key** %8, align 8
  %36 = load %struct.key*, %struct.key** %8, align 8
  %37 = call i64 @IS_ERR(%struct.key* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load %struct.key*, %struct.key** %8, align 8
  %41 = call i32 @PTR_ERR(%struct.key* %40)
  store i32 %41, i32* %3, align 4
  br label %190

42:                                               ; preds = %2
  %43 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %44 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %43, i32 0, i32 0
  %45 = call i32 @down_write(i32* %44)
  store i32 0, i32* %16, align 4
  %46 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @snprintf(i8* %46, i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.key*, %struct.key** %8, align 8
  %50 = call i32 @make_key_ref(%struct.key* %49, i32 1)
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %52 = call %struct.key* @keyring_search(i32 %50, i32* @key_type_keyring, i8* %51, i32 0)
  store %struct.key* %52, %struct.key** %12, align 8
  %53 = load %struct.key*, %struct.key** %12, align 8
  %54 = call i32 @kdebug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.key* %53)
  %55 = load %struct.key*, %struct.key** %12, align 8
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.key* @ERR_PTR(i32 %57)
  %59 = icmp eq %struct.key* %55, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %42
  %61 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %62 = load %struct.cred*, %struct.cred** %6, align 8
  %63 = getelementptr inbounds %struct.cred, %struct.cred* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @INVALID_GID, align 4
  %68 = load %struct.cred*, %struct.cred** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @KEY_ALLOC_UID_KEYRING, align 4
  %71 = load i32, i32* @KEY_ALLOC_IN_QUOTA, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.key*, %struct.key** %8, align 8
  %74 = call %struct.key* @keyring_alloc(i8* %61, i32 %66, i32 %67, %struct.cred* %68, i32 %69, i32 %72, i32* null, %struct.key* %73)
  store %struct.key* %74, %struct.key** %9, align 8
  %75 = load %struct.key*, %struct.key** %9, align 8
  %76 = call i64 @IS_ERR(%struct.key* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %60
  %79 = load %struct.key*, %struct.key** %9, align 8
  %80 = call i32 @PTR_ERR(%struct.key* %79)
  store i32 %80, i32* %16, align 4
  br label %183

81:                                               ; preds = %60
  br label %93

82:                                               ; preds = %42
  %83 = load %struct.key*, %struct.key** %12, align 8
  %84 = call i64 @IS_ERR(%struct.key* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.key*, %struct.key** %12, align 8
  %88 = call i32 @PTR_ERR(%struct.key* %87)
  store i32 %88, i32* %16, align 4
  br label %183

89:                                               ; preds = %82
  %90 = load %struct.key*, %struct.key** %12, align 8
  %91 = call %struct.key* @key_ref_to_ptr(%struct.key* %90)
  store %struct.key* %91, %struct.key** %9, align 8
  br label %92

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %92, %81
  %94 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @snprintf(i8* %94, i32 20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load %struct.key*, %struct.key** %8, align 8
  %98 = call i32 @make_key_ref(%struct.key* %97, i32 1)
  %99 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %100 = call %struct.key* @keyring_search(i32 %98, i32* @key_type_keyring, i8* %99, i32 0)
  store %struct.key* %100, %struct.key** %13, align 8
  %101 = load %struct.key*, %struct.key** %13, align 8
  %102 = call i32 @kdebug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.key* %101)
  %103 = load %struct.key*, %struct.key** %13, align 8
  %104 = load i32, i32* @EAGAIN, align 4
  %105 = sub nsw i32 0, %104
  %106 = call %struct.key* @ERR_PTR(i32 %105)
  %107 = icmp eq %struct.key* %103, %106
  br i1 %107, label %108, label %143

108:                                              ; preds = %93
  %109 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %110 = load %struct.cred*, %struct.cred** %6, align 8
  %111 = getelementptr inbounds %struct.cred, %struct.cred* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @INVALID_GID, align 4
  %116 = load %struct.cred*, %struct.cred** %6, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @KEY_ALLOC_UID_KEYRING, align 4
  %119 = load i32, i32* @KEY_ALLOC_IN_QUOTA, align 4
  %120 = or i32 %118, %119
  %121 = call %struct.key* @keyring_alloc(i8* %109, i32 %114, i32 %115, %struct.cred* %116, i32 %117, i32 %120, i32* null, %struct.key* null)
  store %struct.key* %121, %struct.key** %10, align 8
  %122 = load %struct.key*, %struct.key** %10, align 8
  %123 = call i64 @IS_ERR(%struct.key* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %108
  %126 = load %struct.key*, %struct.key** %10, align 8
  %127 = call i32 @PTR_ERR(%struct.key* %126)
  store i32 %127, i32* %16, align 4
  br label %180

128:                                              ; preds = %108
  %129 = load %struct.key*, %struct.key** %10, align 8
  %130 = load %struct.key*, %struct.key** %9, align 8
  %131 = call i32 @key_link(%struct.key* %129, %struct.key* %130)
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %16, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %177

135:                                              ; preds = %128
  %136 = load %struct.key*, %struct.key** %8, align 8
  %137 = load %struct.key*, %struct.key** %10, align 8
  %138 = call i32 @key_link(%struct.key* %136, %struct.key* %137)
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %16, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %177

142:                                              ; preds = %135
  br label %154

143:                                              ; preds = %93
  %144 = load %struct.key*, %struct.key** %13, align 8
  %145 = call i64 @IS_ERR(%struct.key* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load %struct.key*, %struct.key** %13, align 8
  %149 = call i32 @PTR_ERR(%struct.key* %148)
  store i32 %149, i32* %16, align 4
  br label %180

150:                                              ; preds = %143
  %151 = load %struct.key*, %struct.key** %13, align 8
  %152 = call %struct.key* @key_ref_to_ptr(%struct.key* %151)
  store %struct.key* %152, %struct.key** %10, align 8
  br label %153

153:                                              ; preds = %150
  br label %154

154:                                              ; preds = %153, %142
  %155 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %156 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %155, i32 0, i32 0
  %157 = call i32 @up_write(i32* %156)
  %158 = load %struct.key**, %struct.key*** %5, align 8
  %159 = icmp ne %struct.key** %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load %struct.key*, %struct.key** %10, align 8
  %162 = load %struct.key**, %struct.key*** %5, align 8
  store %struct.key* %161, %struct.key** %162, align 8
  br label %166

163:                                              ; preds = %154
  %164 = load %struct.key*, %struct.key** %10, align 8
  %165 = call i32 @key_put(%struct.key* %164)
  br label %166

166:                                              ; preds = %163, %160
  %167 = load %struct.key**, %struct.key*** %4, align 8
  %168 = icmp ne %struct.key** %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load %struct.key*, %struct.key** %9, align 8
  %171 = load %struct.key**, %struct.key*** %4, align 8
  store %struct.key* %170, %struct.key** %171, align 8
  br label %175

172:                                              ; preds = %166
  %173 = load %struct.key*, %struct.key** %9, align 8
  %174 = call i32 @key_put(%struct.key* %173)
  br label %175

175:                                              ; preds = %172, %169
  %176 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %190

177:                                              ; preds = %141, %134
  %178 = load %struct.key*, %struct.key** %10, align 8
  %179 = call i32 @key_put(%struct.key* %178)
  br label %180

180:                                              ; preds = %177, %147, %125
  %181 = load %struct.key*, %struct.key** %9, align 8
  %182 = call i32 @key_put(%struct.key* %181)
  br label %183

183:                                              ; preds = %180, %86, %78
  %184 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %185 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %184, i32 0, i32 0
  %186 = call i32 @up_write(i32* %185)
  %187 = load i32, i32* %16, align 4
  %188 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %16, align 4
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %183, %175, %39
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local %struct.user_namespace* @current_user_ns(...) #1

declare dso_local i32 @from_kuid(%struct.user_namespace*, i32) #1

declare dso_local i32 @kenter(i8*, i32) #1

declare dso_local %struct.key* @get_user_register(%struct.user_namespace*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.key* @keyring_search(i32, i32*, i8*, i32) #1

declare dso_local i32 @make_key_ref(%struct.key*, i32) #1

declare dso_local i32 @kdebug(i8*, %struct.key*) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

declare dso_local %struct.key* @keyring_alloc(i8*, i32, i32, %struct.cred*, i32, i32, i32*, %struct.key*) #1

declare dso_local %struct.key* @key_ref_to_ptr(%struct.key*) #1

declare dso_local i32 @key_link(%struct.key*, %struct.key*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @kleave(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
