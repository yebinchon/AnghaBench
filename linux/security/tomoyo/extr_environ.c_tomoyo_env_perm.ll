; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_environ.c_tomoyo_env_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_environ.c_tomoyo_env_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_request_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tomoyo_path_info* }
%struct.tomoyo_path_info = type { i8* }

@TOMOYO_TYPE_ENV_ACL = common dso_local global i32 0, align 4
@tomoyo_check_env_acl = common dso_local global i32 0, align 4
@TOMOYO_RETRY_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_env_perm(%struct.tomoyo_request_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_request_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tomoyo_path_info, align 8
  %7 = alloca i32, align 4
  store %struct.tomoyo_request_info* %0, %struct.tomoyo_request_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %38

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %6, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = call i32 @tomoyo_fill_path_info(%struct.tomoyo_path_info* %6)
  %19 = load i32, i32* @TOMOYO_TYPE_ENV_ACL, align 4
  %20 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %21 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %23 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.tomoyo_path_info* %6, %struct.tomoyo_path_info** %25, align 8
  br label %26

26:                                               ; preds = %32, %15
  %27 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %28 = load i32, i32* @tomoyo_check_env_acl, align 4
  %29 = call i32 @tomoyo_check_acl(%struct.tomoyo_request_info* %27, i32 %28)
  %30 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %31 = call i32 @tomoyo_audit_env_log(%struct.tomoyo_request_info* %30)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @TOMOYO_RETRY_REQUEST, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %26, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @tomoyo_fill_path_info(%struct.tomoyo_path_info*) #1

declare dso_local i32 @tomoyo_check_acl(%struct.tomoyo_request_info*, i32) #1

declare dso_local i32 @tomoyo_audit_env_log(%struct.tomoyo_request_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
