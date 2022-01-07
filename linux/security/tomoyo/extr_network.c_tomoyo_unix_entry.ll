; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_unix_entry.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_unix_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_addr_info = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.tomoyo_request_info = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, %struct.tomoyo_path_info* }
%struct.tomoyo_path_info = type { i8* }

@tomoyo_unix2mac = common dso_local global i64** null, align 8
@TOMOYO_CONFIG_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@TOMOYO_TYPE_UNIX_ACL = common dso_local global i32 0, align 4
@tomoyo_check_unix_acl = common dso_local global i32 0, align 4
@TOMOYO_RETRY_REQUEST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_addr_info*)* @tomoyo_unix_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_unix_entry(%struct.tomoyo_addr_info* %0) #0 {
  %2 = alloca %struct.tomoyo_addr_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_request_info, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tomoyo_path_info, align 8
  store %struct.tomoyo_addr_info* %0, %struct.tomoyo_addr_info** %2, align 8
  %10 = call i32 (...) @tomoyo_read_lock()
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %11 = load i64**, i64*** @tomoyo_unix2mac, align 8
  %12 = load %struct.tomoyo_addr_info*, %struct.tomoyo_addr_info** %2, align 8
  %13 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i64*, i64** %11, i64 %14
  %16 = load i64*, i64** %15, align 8
  %17 = load %struct.tomoyo_addr_info*, %struct.tomoyo_addr_info** %2, align 8
  %18 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %96

24:                                               ; preds = %1
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @tomoyo_init_request_info(%struct.tomoyo_request_info* %4, i32* null, i64 %25)
  %27 = load i64, i64* @TOMOYO_CONFIG_DISABLED, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %96

29:                                               ; preds = %24
  %30 = load %struct.tomoyo_addr_info*, %struct.tomoyo_addr_info** %2, align 8
  %31 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %7, align 8
  %34 = load %struct.tomoyo_addr_info*, %struct.tomoyo_addr_info** %2, align 8
  %35 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i32 9, i32* %8, align 4
  br label %54

44:                                               ; preds = %29
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @strnlen(i8* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %44
  br label %54

54:                                               ; preds = %53, %43
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i8* @tomoyo_encode2(i8* %55, i32 %56)
  store i8* %57, i8** %7, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %92

60:                                               ; preds = %54
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %9, i32 0, i32 0
  store i8* %61, i8** %62, align 8
  %63 = call i32 @tomoyo_fill_path_info(%struct.tomoyo_path_info* %9)
  %64 = load i32, i32* @TOMOYO_TYPE_UNIX_ACL, align 4
  %65 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %4, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  %66 = load %struct.tomoyo_addr_info*, %struct.tomoyo_addr_info** %2, align 8
  %67 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %4, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load %struct.tomoyo_addr_info*, %struct.tomoyo_addr_info** %2, align 8
  %73 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %4, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i64 %74, i64* %77, align 8
  %78 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %4, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store %struct.tomoyo_path_info* %9, %struct.tomoyo_path_info** %80, align 8
  br label %81

81:                                               ; preds = %85, %60
  %82 = load i32, i32* @tomoyo_check_unix_acl, align 4
  %83 = call i32 @tomoyo_check_acl(%struct.tomoyo_request_info* %4, i32 %82)
  %84 = call i32 @tomoyo_audit_unix_log(%struct.tomoyo_request_info* %4)
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @TOMOYO_RETRY_REQUEST, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %81, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @kfree(i8* %90)
  br label %95

92:                                               ; preds = %54
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %24, %1
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @tomoyo_read_unlock(i32 %97)
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @tomoyo_read_lock(...) #1

declare dso_local i64 @tomoyo_init_request_info(%struct.tomoyo_request_info*, i32*, i64) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i8* @tomoyo_encode2(i8*, i32) #1

declare dso_local i32 @tomoyo_fill_path_info(%struct.tomoyo_path_info*) #1

declare dso_local i32 @tomoyo_check_acl(%struct.tomoyo_request_info*, i32) #1

declare dso_local i32 @tomoyo_audit_unix_log(%struct.tomoyo_request_info*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @tomoyo_read_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
