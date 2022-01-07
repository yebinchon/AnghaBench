; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_setup_hid.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_setup_hid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { %struct.hid_device*, %struct.hid_device*, %struct.TYPE_11__*, %struct.TYPE_8__*, i32 }
%struct.hid_device = type { i32*, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hidp_session* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.hidp_connadd_req = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@BUS_BLUETOOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%pMR\00", align 1
@hidp_hid_driver = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidp_session*, %struct.hidp_connadd_req*)* @hidp_setup_hid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_setup_hid(%struct.hidp_session* %0, %struct.hidp_connadd_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hidp_session*, align 8
  %5 = alloca %struct.hidp_connadd_req*, align 8
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i32, align 4
  store %struct.hidp_session* %0, %struct.hidp_session** %4, align 8
  store %struct.hidp_connadd_req* %1, %struct.hidp_connadd_req** %5, align 8
  %8 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %9 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %12 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.hid_device* @memdup_user(i32 %10, i32 %13)
  %15 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %16 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %15, i32 0, i32 0
  store %struct.hid_device* %14, %struct.hid_device** %16, align 8
  %17 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %18 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %17, i32 0, i32 0
  %19 = load %struct.hid_device*, %struct.hid_device** %18, align 8
  %20 = call i64 @IS_ERR(%struct.hid_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %24 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %23, i32 0, i32 0
  %25 = load %struct.hid_device*, %struct.hid_device** %24, align 8
  %26 = call i32 @PTR_ERR(%struct.hid_device* %25)
  store i32 %26, i32* %3, align 4
  br label %135

27:                                               ; preds = %2
  %28 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %29 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %32 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = call %struct.hid_device* (...) @hid_allocate_device()
  store %struct.hid_device* %33, %struct.hid_device** %6, align 8
  %34 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %35 = call i64 @IS_ERR(%struct.hid_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %39 = call i32 @PTR_ERR(%struct.hid_device* %38)
  store i32 %39, i32* %7, align 4
  br label %127

40:                                               ; preds = %27
  %41 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %42 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %43 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %42, i32 0, i32 1
  store %struct.hid_device* %41, %struct.hid_device** %43, align 8
  %44 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %45 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %46 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %45, i32 0, i32 10
  store %struct.hidp_session* %44, %struct.hidp_session** %46, align 8
  %47 = load i32, i32* @BUS_BLUETOOTH, align 4
  %48 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %49 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 4
  %50 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %51 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %54 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 8
  %55 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %56 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %59 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %61 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %64 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %66 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %69 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %71 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %74 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @strscpy(i32 %72, i32 %75, i32 4)
  %77 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %78 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %81 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %80, i32 0, i32 3
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.TYPE_12__* @l2cap_pi(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = call i32 @snprintf(i32 %79, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %88)
  %90 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %91 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %94 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %93, i32 0, i32 3
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.TYPE_12__* @l2cap_pi(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = call i32 @snprintf(i32 %92, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %101)
  %103 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %104 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %103, i32 0, i32 2
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %110 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i32* %108, i32** %111, align 8
  %112 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %113 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %112, i32 0, i32 0
  store i32* @hidp_hid_driver, i32** %113, align 8
  %114 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %115 = call i64 @hid_ignore(%struct.hid_device* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %40
  %118 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %119 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %118, i32 0, i32 1
  %120 = load %struct.hid_device*, %struct.hid_device** %119, align 8
  %121 = call i32 @hid_destroy_device(%struct.hid_device* %120)
  %122 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %123 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %122, i32 0, i32 1
  store %struct.hid_device* null, %struct.hid_device** %123, align 8
  %124 = load i32, i32* @ENODEV, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %135

126:                                              ; preds = %40
  store i32 0, i32* %3, align 4
  br label %135

127:                                              ; preds = %37
  %128 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %129 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %128, i32 0, i32 0
  %130 = load %struct.hid_device*, %struct.hid_device** %129, align 8
  %131 = call i32 @kfree(%struct.hid_device* %130)
  %132 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %133 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %132, i32 0, i32 0
  store %struct.hid_device* null, %struct.hid_device** %133, align 8
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %127, %126, %117, %22
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.hid_device* @memdup_user(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.hid_device*) #1

declare dso_local i32 @PTR_ERR(%struct.hid_device*) #1

declare dso_local %struct.hid_device* @hid_allocate_device(...) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_12__* @l2cap_pi(i32) #1

declare dso_local i64 @hid_ignore(%struct.hid_device*) #1

declare dso_local i32 @hid_destroy_device(%struct.hid_device*) #1

declare dso_local i32 @kfree(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
