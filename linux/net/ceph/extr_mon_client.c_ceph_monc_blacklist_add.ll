; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monc_blacklist_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monc_blacklist_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mon_client = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ceph_entity_addr = type { i32, i32 }
%struct.ceph_mon_generic_request = type { %struct.TYPE_6__*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ceph_mon_command* }
%struct.ceph_mon_command = type { i8*, i32, i8*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@CEPH_MSG_MON_COMMAND = common dso_local global i32 0, align 4
@CEPH_MSG_MON_COMMAND_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"{ \22prefix\22: \22osd blacklist\22, \09\09                 \22blacklistop\22: \22add\22, \09\09\09\09 \22addr\22: \22%pISpc/%u\22 }\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_monc_blacklist_add(%struct.ceph_mon_client* %0, %struct.ceph_entity_addr* %1) #0 {
  %3 = alloca %struct.ceph_mon_client*, align 8
  %4 = alloca %struct.ceph_entity_addr*, align 8
  %5 = alloca %struct.ceph_mon_generic_request*, align 8
  %6 = alloca %struct.ceph_mon_command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ceph_mon_client* %0, %struct.ceph_mon_client** %3, align 8
  store %struct.ceph_entity_addr* %1, %struct.ceph_entity_addr** %4, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %12 = load i32, i32* @GFP_NOIO, align 4
  %13 = call %struct.ceph_mon_generic_request* @alloc_generic_request(%struct.ceph_mon_client* %11, i32 %12)
  store %struct.ceph_mon_generic_request* %13, %struct.ceph_mon_generic_request** %5, align 8
  %14 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %5, align 8
  %15 = icmp ne %struct.ceph_mon_generic_request* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %102

17:                                               ; preds = %2
  %18 = load i32, i32* @CEPH_MSG_MON_COMMAND, align 4
  %19 = load i32, i32* @GFP_NOIO, align 4
  %20 = call i8* @ceph_msg_new(i32 %18, i32 256, i32 %19, i32 1)
  %21 = bitcast i8* %20 to %struct.TYPE_6__*
  %22 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %5, align 8
  %23 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %22, i32 0, i32 0
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %23, align 8
  %24 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %5, align 8
  %25 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %102

29:                                               ; preds = %17
  %30 = load i32, i32* @CEPH_MSG_MON_COMMAND_ACK, align 4
  %31 = load i32, i32* @GFP_NOIO, align 4
  %32 = call i8* @ceph_msg_new(i32 %30, i32 512, i32 %31, i32 1)
  %33 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %5, align 8
  %34 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %5, align 8
  %36 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %102

40:                                               ; preds = %29
  %41 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %42 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %5, align 8
  %45 = call i32 @register_generic_request(%struct.ceph_mon_generic_request* %44)
  %46 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %5, align 8
  %47 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.ceph_mon_command*, %struct.ceph_mon_command** %50, align 8
  store %struct.ceph_mon_command* %51, %struct.ceph_mon_command** %6, align 8
  %52 = load %struct.ceph_mon_command*, %struct.ceph_mon_command** %6, align 8
  %53 = getelementptr inbounds %struct.ceph_mon_command, %struct.ceph_mon_command* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = call i32 @cpu_to_le16(i32 -1)
  %56 = load %struct.ceph_mon_command*, %struct.ceph_mon_command** %6, align 8
  %57 = getelementptr inbounds %struct.ceph_mon_command, %struct.ceph_mon_command* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 8
  %59 = load %struct.ceph_mon_command*, %struct.ceph_mon_command** %6, align 8
  %60 = getelementptr inbounds %struct.ceph_mon_command, %struct.ceph_mon_command* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %63 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %62, i32 0, i32 2
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ceph_mon_command*, %struct.ceph_mon_command** %6, align 8
  %68 = getelementptr inbounds %struct.ceph_mon_command, %struct.ceph_mon_command* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = call i8* @cpu_to_le32(i32 1)
  %70 = load %struct.ceph_mon_command*, %struct.ceph_mon_command** %6, align 8
  %71 = getelementptr inbounds %struct.ceph_mon_command, %struct.ceph_mon_command* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.ceph_mon_command*, %struct.ceph_mon_command** %6, align 8
  %73 = getelementptr inbounds %struct.ceph_mon_command, %struct.ceph_mon_command* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %4, align 8
  %76 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %75, i32 0, i32 1
  %77 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %4, align 8
  %78 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  %81 = call i32 @sprintf(i32 %74, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i32* %76, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = load %struct.ceph_mon_command*, %struct.ceph_mon_command** %6, align 8
  %85 = getelementptr inbounds %struct.ceph_mon_command, %struct.ceph_mon_command* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %87 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %5, align 8
  %88 = call i32 @send_generic_request(%struct.ceph_mon_client* %86, %struct.ceph_mon_generic_request* %87)
  %89 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %90 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %5, align 8
  %93 = call i32 @wait_generic_request(%struct.ceph_mon_generic_request* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %40
  %97 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %98 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ceph_wait_for_latest_osdmap(i32 %99, i32 0)
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %96, %40
  br label %102

102:                                              ; preds = %101, %39, %28, %16
  %103 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %5, align 8
  %104 = call i32 @put_generic_request(%struct.ceph_mon_generic_request* %103)
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local %struct.ceph_mon_generic_request* @alloc_generic_request(%struct.ceph_mon_client*, i32) #1

declare dso_local i8* @ceph_msg_new(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @register_generic_request(%struct.ceph_mon_generic_request*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @send_generic_request(%struct.ceph_mon_client*, %struct.ceph_mon_generic_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_generic_request(%struct.ceph_mon_generic_request*) #1

declare dso_local i32 @ceph_wait_for_latest_osdmap(i32, i32) #1

declare dso_local i32 @put_generic_request(%struct.ceph_mon_generic_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
