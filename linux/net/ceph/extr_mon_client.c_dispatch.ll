; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { %struct.ceph_mon_client* }
%struct.ceph_mon_client = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.ceph_msg*)*, i32 }
%struct.ceph_msg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"received unknown message type %d %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_connection*, %struct.ceph_msg*)* @dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch(%struct.ceph_connection* %0, %struct.ceph_msg* %1) #0 {
  %3 = alloca %struct.ceph_connection*, align 8
  %4 = alloca %struct.ceph_msg*, align 8
  %5 = alloca %struct.ceph_mon_client*, align 8
  %6 = alloca i32, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %3, align 8
  store %struct.ceph_msg* %1, %struct.ceph_msg** %4, align 8
  %7 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %7, i32 0, i32 0
  %9 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %8, align 8
  store %struct.ceph_mon_client* %9, %struct.ceph_mon_client** %5, align 8
  %10 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %11 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %16 = icmp ne %struct.ceph_mon_client* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %79

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %51 [
    i32 134, label %20
    i32 130, label %24
    i32 128, label %28
    i32 132, label %32
    i32 133, label %36
    i32 131, label %40
    i32 129, label %44
  ]

20:                                               ; preds = %18
  %21 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %22 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %23 = call i32 @handle_auth_reply(%struct.ceph_mon_client* %21, %struct.ceph_msg* %22)
  br label %76

24:                                               ; preds = %18
  %25 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %26 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %27 = call i32 @handle_subscribe_ack(%struct.ceph_mon_client* %25, %struct.ceph_msg* %26)
  br label %76

28:                                               ; preds = %18
  %29 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %30 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %31 = call i32 @handle_statfs_reply(%struct.ceph_mon_client* %29, %struct.ceph_msg* %30)
  br label %76

32:                                               ; preds = %18
  %33 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %34 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %35 = call i32 @handle_get_version_reply(%struct.ceph_mon_client* %33, %struct.ceph_msg* %34)
  br label %76

36:                                               ; preds = %18
  %37 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %38 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %39 = call i32 @handle_command_ack(%struct.ceph_mon_client* %37, %struct.ceph_msg* %38)
  br label %76

40:                                               ; preds = %18
  %41 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %42 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %43 = call i32 @ceph_monc_handle_map(%struct.ceph_mon_client* %41, %struct.ceph_msg* %42)
  br label %76

44:                                               ; preds = %18
  %45 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %46 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %50 = call i32 @ceph_osdc_handle_map(i32* %48, %struct.ceph_msg* %49)
  br label %76

51:                                               ; preds = %18
  %52 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %53 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_4__*, %struct.ceph_msg*)*, i32 (%struct.TYPE_4__*, %struct.ceph_msg*)** %55, align 8
  %57 = icmp ne i32 (%struct.TYPE_4__*, %struct.ceph_msg*)* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %60 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_4__*, %struct.ceph_msg*)*, i32 (%struct.TYPE_4__*, %struct.ceph_msg*)** %62, align 8
  %64 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %65 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %68 = call i32 %63(%struct.TYPE_4__* %66, %struct.ceph_msg* %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %76

71:                                               ; preds = %58, %51
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @ceph_msg_type_name(i32 %73)
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %71, %70, %44, %40, %36, %32, %28, %24, %20
  %77 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %78 = call i32 @ceph_msg_put(%struct.ceph_msg* %77)
  br label %79

79:                                               ; preds = %76, %17
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @handle_auth_reply(%struct.ceph_mon_client*, %struct.ceph_msg*) #1

declare dso_local i32 @handle_subscribe_ack(%struct.ceph_mon_client*, %struct.ceph_msg*) #1

declare dso_local i32 @handle_statfs_reply(%struct.ceph_mon_client*, %struct.ceph_msg*) #1

declare dso_local i32 @handle_get_version_reply(%struct.ceph_mon_client*, %struct.ceph_msg*) #1

declare dso_local i32 @handle_command_ack(%struct.ceph_mon_client*, %struct.ceph_msg*) #1

declare dso_local i32 @ceph_monc_handle_map(%struct.ceph_mon_client*, %struct.ceph_msg*) #1

declare dso_local i32 @ceph_osdc_handle_map(i32*, %struct.ceph_msg*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @ceph_msg_type_name(i32) #1

declare dso_local i32 @ceph_msg_put(%struct.ceph_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
