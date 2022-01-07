; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_inet_entry.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_inet_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_addr_info = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.tomoyo_request_info = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }

@tomoyo_inet2mac = common dso_local global i64** null, align 8
@TOMOYO_CONFIG_DISABLED = common dso_local global i64 0, align 8
@TOMOYO_TYPE_INET_ACL = common dso_local global i32 0, align 4
@tomoyo_check_inet_acl = common dso_local global i32 0, align 4
@TOMOYO_RETRY_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_addr_info*)* @tomoyo_inet_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_inet_entry(%struct.tomoyo_addr_info* %0) #0 {
  %2 = alloca %struct.tomoyo_addr_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_request_info, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.tomoyo_addr_info* %0, %struct.tomoyo_addr_info** %2, align 8
  %7 = call i32 (...) @tomoyo_read_lock()
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %8 = load i64**, i64*** @tomoyo_inet2mac, align 8
  %9 = load %struct.tomoyo_addr_info*, %struct.tomoyo_addr_info** %2, align 8
  %10 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i64*, i64** %8, i64 %11
  %13 = load i64*, i64** %12, align 8
  %14 = load %struct.tomoyo_addr_info*, %struct.tomoyo_addr_info** %2, align 8
  %15 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i64, i64* %13, i64 %16
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %72

21:                                               ; preds = %1
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @tomoyo_init_request_info(%struct.tomoyo_request_info* %4, i32* null, i64 %22)
  %24 = load i64, i64* @TOMOYO_CONFIG_DISABLED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %21
  %27 = load i32, i32* @TOMOYO_TYPE_INET_ACL, align 4
  %28 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %4, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load %struct.tomoyo_addr_info*, %struct.tomoyo_addr_info** %2, align 8
  %30 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %4, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.tomoyo_addr_info*, %struct.tomoyo_addr_info** %2, align 8
  %36 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %4, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i64 %37, i64* %40, align 8
  %41 = load %struct.tomoyo_addr_info*, %struct.tomoyo_addr_info** %2, align 8
  %42 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %4, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 8
  %48 = load %struct.tomoyo_addr_info*, %struct.tomoyo_addr_info** %2, align 8
  %49 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %4, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load %struct.tomoyo_addr_info*, %struct.tomoyo_addr_info** %2, align 8
  %56 = getelementptr inbounds %struct.tomoyo_addr_info, %struct.tomoyo_addr_info* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ntohs(i32 %58)
  %60 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %4, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  br label %63

63:                                               ; preds = %67, %26
  %64 = load i32, i32* @tomoyo_check_inet_acl, align 4
  %65 = call i32 @tomoyo_check_acl(%struct.tomoyo_request_info* %4, i32 %64)
  %66 = call i32 @tomoyo_audit_inet_log(%struct.tomoyo_request_info* %4)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @TOMOYO_RETRY_REQUEST, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %63, label %71

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %21, %1
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @tomoyo_read_unlock(i32 %73)
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @tomoyo_read_lock(...) #1

declare dso_local i64 @tomoyo_init_request_info(%struct.tomoyo_request_info*, i32*, i64) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @tomoyo_check_acl(%struct.tomoyo_request_info*, i32) #1

declare dso_local i32 @tomoyo_audit_inet_log(%struct.tomoyo_request_info*) #1

declare dso_local i32 @tomoyo_read_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
