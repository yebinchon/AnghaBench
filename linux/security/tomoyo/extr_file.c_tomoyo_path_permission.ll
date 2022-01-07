; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_file.c_tomoyo_path_permission.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_file.c_tomoyo_path_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_request_info = type { i64, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.tomoyo_path_info* }
%struct.TYPE_4__ = type { i32 }
%struct.tomoyo_path_info = type { i32 }

@tomoyo_p2mac = common dso_local global i32* null, align 8
@TOMOYO_CONFIG_DISABLED = common dso_local global i64 0, align 8
@TOMOYO_TYPE_PATH_ACL = common dso_local global i32 0, align 4
@tomoyo_check_path_acl = common dso_local global i32 0, align 4
@TOMOYO_RETRY_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_request_info*, i64, %struct.tomoyo_path_info*)* @tomoyo_path_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_path_permission(%struct.tomoyo_request_info* %0, i64 %1, %struct.tomoyo_path_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tomoyo_request_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tomoyo_path_info*, align 8
  %8 = alloca i32, align 4
  store %struct.tomoyo_request_info* %0, %struct.tomoyo_request_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.tomoyo_path_info* %2, %struct.tomoyo_path_info** %7, align 8
  %9 = load i32*, i32** @tomoyo_p2mac, align 8
  %10 = load i64, i64* %6, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %5, align 8
  %14 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %5, align 8
  %16 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %15, i32 0, i32 5
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %5, align 8
  %21 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %5, align 8
  %24 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @tomoyo_get_mode(i32 %19, i32 %22, i32 %25)
  %27 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %5, align 8
  %28 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %5, align 8
  %30 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TOMOYO_CONFIG_DISABLED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

35:                                               ; preds = %3
  %36 = load i32, i32* @TOMOYO_TYPE_PATH_ACL, align 4
  %37 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %5, align 8
  %38 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %7, align 8
  %40 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %5, align 8
  %41 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store %struct.tomoyo_path_info* %39, %struct.tomoyo_path_info** %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %5, align 8
  %46 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i64 %44, i64* %48, align 8
  br label %49

49:                                               ; preds = %55, %35
  %50 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %5, align 8
  %51 = load i32, i32* @tomoyo_check_path_acl, align 4
  %52 = call i32 @tomoyo_check_acl(%struct.tomoyo_request_info* %50, i32 %51)
  %53 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %5, align 8
  %54 = call i32 @tomoyo_audit_path_log(%struct.tomoyo_request_info* %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @TOMOYO_RETRY_REQUEST, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %49, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %34
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @tomoyo_get_mode(i32, i32, i32) #1

declare dso_local i32 @tomoyo_check_acl(%struct.tomoyo_request_info*, i32) #1

declare dso_local i32 @tomoyo_audit_path_log(%struct.tomoyo_request_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
