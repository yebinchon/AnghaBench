; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_handle_auth_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_handle_auth_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mon_client = type { %struct.TYPE_18__*, i32, %struct.TYPE_17__, i32, %struct.TYPE_19__*, %struct.TYPE_13__*, i64 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.ceph_msg = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"authenticated, starting session\0A\00", align 1
@CEPH_ENTITY_TYPE_CLIENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"mon%d %s session established\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mon_client*, %struct.ceph_msg*)* @handle_auth_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_auth_reply(%struct.ceph_mon_client* %0, %struct.ceph_msg* %1) #0 {
  %3 = alloca %struct.ceph_mon_client*, align 8
  %4 = alloca %struct.ceph_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ceph_mon_client* %0, %struct.ceph_mon_client** %3, align 8
  store %struct.ceph_msg* %1, %struct.ceph_msg** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %10, i32 0, i32 4
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %13 = call i32 @ceph_auth_is_authenticated(%struct.TYPE_19__* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %15 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %17 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %16, i32 0, i32 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %19 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %20 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %24 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %28 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %27, i32 0, i32 5
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %34 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %33, i32 0, i32 5
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ceph_handle_auth_reply(%struct.TYPE_19__* %18, i32 %22, i32 %26, i32 %32, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @__send_prepared_auth_request(%struct.ceph_mon_client* %42, i32 %43)
  br label %102

45:                                               ; preds = %2
  %46 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %47 = call i32 @finish_hunting(%struct.ceph_mon_client* %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %53 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %52, i32 0, i32 0
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  br label %101

56:                                               ; preds = %45
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %100, label %59

59:                                               ; preds = %56
  %60 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %61 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %60, i32 0, i32 4
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  %63 = call i32 @ceph_auth_is_authenticated(%struct.TYPE_19__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %100

65:                                               ; preds = %59
  %66 = call i32 @dout(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @CEPH_ENTITY_TYPE_CLIENT, align 4
  %68 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %69 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %68, i32 0, i32 0
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  store i32 %67, i32* %74, align 4
  %75 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %76 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %75, i32 0, i32 4
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cpu_to_le64(i32 %79)
  %81 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %82 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %81, i32 0, i32 0
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  store i32 %80, i32* %87, align 4
  %88 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %89 = call i32 @__send_subscribe(%struct.ceph_mon_client* %88)
  %90 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %91 = call i32 @__resend_generic_request(%struct.ceph_mon_client* %90)
  %92 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %93 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %96 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = call i32 @ceph_pr_addr(i32* %97)
  %99 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %98)
  br label %100

100:                                              ; preds = %65, %59, %56
  br label %101

101:                                              ; preds = %100, %50
  br label %102

102:                                              ; preds = %101, %41
  %103 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %104 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %107 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %106, i32 0, i32 0
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %102
  %113 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %114 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %113, i32 0, i32 0
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = call i32 @wake_up_all(i32* %116)
  br label %118

118:                                              ; preds = %112, %102
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ceph_auth_is_authenticated(%struct.TYPE_19__*) #1

declare dso_local i32 @ceph_handle_auth_reply(%struct.TYPE_19__*, i32, i32, i32, i32) #1

declare dso_local i32 @__send_prepared_auth_request(%struct.ceph_mon_client*, i32) #1

declare dso_local i32 @finish_hunting(%struct.ceph_mon_client*) #1

declare dso_local i32 @dout(i8*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @__send_subscribe(%struct.ceph_mon_client*) #1

declare dso_local i32 @__resend_generic_request(%struct.ceph_mon_client*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @ceph_pr_addr(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
