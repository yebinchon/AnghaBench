; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_file.c_tomoyo_execute_permission.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_file.c_tomoyo_execute_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_request_info = type { i64, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.tomoyo_path_info* }
%struct.TYPE_7__ = type { i32 }
%struct.tomoyo_path_info = type { i32 }

@TOMOYO_MAC_FILE_EXECUTE = common dso_local global i32 0, align 4
@TOMOYO_TYPE_PATH_ACL = common dso_local global i32 0, align 4
@TOMOYO_TYPE_EXECUTE = common dso_local global i32 0, align 4
@tomoyo_check_path_acl = common dso_local global i32 0, align 4
@TOMOYO_CONFIG_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_execute_permission(%struct.tomoyo_request_info* %0, %struct.tomoyo_path_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_request_info*, align 8
  %5 = alloca %struct.tomoyo_path_info*, align 8
  store %struct.tomoyo_request_info* %0, %struct.tomoyo_request_info** %4, align 8
  store %struct.tomoyo_path_info* %1, %struct.tomoyo_path_info** %5, align 8
  %6 = load i32, i32* @TOMOYO_MAC_FILE_EXECUTE, align 4
  %7 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %8 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %7, i32 0, i32 5
  store i32 %6, i32* %8, align 4
  %9 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %10 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %9, i32 0, i32 7
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %15 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %18 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @tomoyo_get_mode(i32 %13, i32 %16, i32 %19)
  %21 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %22 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* @TOMOYO_TYPE_PATH_ACL, align 4
  %24 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %25 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %5, align 8
  %27 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %28 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  store %struct.tomoyo_path_info* %26, %struct.tomoyo_path_info** %30, align 8
  %31 = load i32, i32* @TOMOYO_TYPE_EXECUTE, align 4
  %32 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %33 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  %36 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %37 = load i32, i32* @tomoyo_check_path_acl, align 4
  %38 = call i32 @tomoyo_check_acl(%struct.tomoyo_request_info* %36, i32 %37)
  %39 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %40 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = icmp ne %struct.TYPE_12__* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %2
  %44 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %45 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %52 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %51, i32 0, i32 1
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  br label %59

58:                                               ; preds = %43, %2
  br label %59

59:                                               ; preds = %58, %50
  %60 = phi i32* [ %57, %50 ], [ null, %58 ]
  %61 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %62 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %61, i32 0, i32 2
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i32* %60, i32** %64, align 8
  %65 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %66 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @TOMOYO_CONFIG_DISABLED, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %72 = call i32 @tomoyo_audit_path_log(%struct.tomoyo_request_info* %71)
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, i32* %3, align 4
  ret i32 %75
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
