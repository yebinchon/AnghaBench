; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_encode_v1_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_encode_v1_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_upcall_msg = type { i8*, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { %struct.gss_api_mech* }
%struct.gss_api_mech = type { i32, i32 }
%struct.cred = type { %struct.user_namespace* }
%struct.user_namespace = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"mech=%s uid=%d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" target=%s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" service=%s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c" service=%.*s srchost=%s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" enctypes=%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gss_upcall_msg*, i8*, i8*, %struct.cred*)* @gss_encode_v1_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_encode_v1_msg(%struct.gss_upcall_msg* %0, i8* %1, i8* %2, %struct.cred* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gss_upcall_msg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cred*, align 8
  %10 = alloca %struct.user_namespace*, align 8
  %11 = alloca %struct.gss_api_mech*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.gss_upcall_msg* %0, %struct.gss_upcall_msg** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.cred* %3, %struct.cred** %9, align 8
  %16 = load %struct.cred*, %struct.cred** %9, align 8
  %17 = getelementptr inbounds %struct.cred, %struct.cred* %16, i32 0, i32 0
  %18 = load %struct.user_namespace*, %struct.user_namespace** %17, align 8
  store %struct.user_namespace* %18, %struct.user_namespace** %10, align 8
  %19 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %6, align 8
  %20 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.gss_api_mech*, %struct.gss_api_mech** %22, align 8
  store %struct.gss_api_mech* %23, %struct.gss_api_mech** %11, align 8
  %24 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %6, align 8
  %25 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %12, align 8
  store i64 8, i64* %13, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load %struct.gss_api_mech*, %struct.gss_api_mech** %11, align 8
  %30 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.user_namespace*, %struct.user_namespace** %10, align 8
  %33 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %6, align 8
  %34 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @from_kuid_munged(%struct.user_namespace* %32, i32 %35)
  %37 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %27, i64 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %13, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %13, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %12, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %6, align 8
  %48 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %71

52:                                               ; preds = %4
  %53 = load i8*, i8** %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %53, i64 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %13, align 8
  %60 = sub i64 %59, %58
  store i64 %60, i64* %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i8*, i8** %12, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %12, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %6, align 8
  %67 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, %65
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %52, %4
  %72 = load i8*, i8** %7, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %112

74:                                               ; preds = %71
  %75 = load i8*, i8** %7, align 8
  %76 = call i8* @strchr(i8* %75, i8 signext 64)
  store i8* %76, i8** %15, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %12, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %80, i64 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  store i32 %83, i32* %14, align 4
  br label %97

84:                                               ; preds = %74
  %85 = load i8*, i8** %12, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  %93 = load i8*, i8** %7, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %85, i64 %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %92, i8* %93, i8* %95)
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %84, %79
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %13, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %13, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load i8*, i8** %12, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %12, align 8
  %106 = load i32, i32* %14, align 4
  %107 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %6, align 8
  %108 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, %106
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %97, %71
  %113 = load %struct.gss_api_mech*, %struct.gss_api_mech** %11, align 8
  %114 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %112
  %118 = load i8*, i8** %12, align 8
  %119 = load i64, i64* %13, align 8
  %120 = load %struct.gss_api_mech*, %struct.gss_api_mech** %11, align 8
  %121 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %118, i64 %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %13, align 8
  %127 = sub i64 %126, %125
  store i64 %127, i64* %13, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load i8*, i8** %12, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %12, align 8
  %132 = load i32, i32* %14, align 4
  %133 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %6, align 8
  %134 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, %132
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %117, %112
  %139 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %6, align 8
  %140 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @trace_rpcgss_upcall_msg(i8* %141)
  %143 = load i8*, i8** %12, align 8
  %144 = load i64, i64* %13, align 8
  %145 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %143, i64 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  br label %162

149:                                              ; preds = %138
  %150 = load i32, i32* %14, align 4
  %151 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %6, align 8
  %152 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, %150
  store i32 %155, i32* %153, align 8
  %156 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %6, align 8
  %157 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %6, align 8
  %160 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  store i8* %158, i8** %161, align 8
  store i32 0, i32* %5, align 4
  br label %166

162:                                              ; preds = %148
  %163 = call i32 @WARN_ON_ONCE(i32 1)
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %162, %149
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @from_kuid_munged(%struct.user_namespace*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @trace_rpcgss_upcall_msg(i8*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
