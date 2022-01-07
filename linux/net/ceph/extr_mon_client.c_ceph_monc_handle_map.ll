; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monc_handle_map.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monc_handle_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mon_client = type { i32, %struct.ceph_monmap*, %struct.ceph_client* }
%struct.ceph_monmap = type { i32, i32 }
%struct.ceph_client = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ceph_monmap* }
%struct.ceph_msg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8* }

@.str = private unnamed_addr constant [15 x i8] c"handle_monmap\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"problem decoding monmap, %d\0A\00", align 1
@CEPH_SUB_MONMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mon_client*, %struct.ceph_msg*)* @ceph_monc_handle_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_monc_handle_map(%struct.ceph_mon_client* %0, %struct.ceph_msg* %1) #0 {
  %3 = alloca %struct.ceph_mon_client*, align 8
  %4 = alloca %struct.ceph_msg*, align 8
  %5 = alloca %struct.ceph_client*, align 8
  %6 = alloca %struct.ceph_monmap*, align 8
  %7 = alloca %struct.ceph_monmap*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.ceph_mon_client* %0, %struct.ceph_mon_client** %3, align 8
  store %struct.ceph_msg* %1, %struct.ceph_msg** %4, align 8
  %10 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %10, i32 0, i32 2
  %12 = load %struct.ceph_client*, %struct.ceph_client** %11, align 8
  store %struct.ceph_client* %12, %struct.ceph_client** %5, align 8
  store %struct.ceph_monmap* null, %struct.ceph_monmap** %6, align 8
  %13 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %13, i32 0, i32 1
  %15 = load %struct.ceph_monmap*, %struct.ceph_monmap** %14, align 8
  store %struct.ceph_monmap* %15, %struct.ceph_monmap** %7, align 8
  %16 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %17 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = call i32 @dout(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %21 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %26 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %24, i64 %29
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call %struct.ceph_monmap* @ceph_monmap_decode(i8* %31, i8* %32)
  store %struct.ceph_monmap* %33, %struct.ceph_monmap** %6, align 8
  %34 = load %struct.ceph_monmap*, %struct.ceph_monmap** %6, align 8
  %35 = call i64 @IS_ERR(%struct.ceph_monmap* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load %struct.ceph_monmap*, %struct.ceph_monmap** %6, align 8
  %39 = call i64 @PTR_ERR(%struct.ceph_monmap* %38)
  %40 = trunc i64 %39 to i32
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %43 = call i32 @ceph_msg_dump(%struct.ceph_msg* %42)
  br label %72

44:                                               ; preds = %2
  %45 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %46 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %45, i32 0, i32 2
  %47 = load %struct.ceph_client*, %struct.ceph_client** %46, align 8
  %48 = load %struct.ceph_monmap*, %struct.ceph_monmap** %6, align 8
  %49 = getelementptr inbounds %struct.ceph_monmap, %struct.ceph_monmap* %48, i32 0, i32 1
  %50 = call i64 @ceph_check_fsid(%struct.ceph_client* %47, i32* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.ceph_monmap*, %struct.ceph_monmap** %6, align 8
  %54 = call i32 @kfree(%struct.ceph_monmap* %53)
  br label %72

55:                                               ; preds = %44
  %56 = load %struct.ceph_monmap*, %struct.ceph_monmap** %6, align 8
  %57 = load %struct.ceph_client*, %struct.ceph_client** %5, align 8
  %58 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store %struct.ceph_monmap* %56, %struct.ceph_monmap** %59, align 8
  %60 = load %struct.ceph_monmap*, %struct.ceph_monmap** %7, align 8
  %61 = call i32 @kfree(%struct.ceph_monmap* %60)
  %62 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %63 = load i32, i32* @CEPH_SUB_MONMAP, align 4
  %64 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %65 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %64, i32 0, i32 1
  %66 = load %struct.ceph_monmap*, %struct.ceph_monmap** %65, align 8
  %67 = getelementptr inbounds %struct.ceph_monmap, %struct.ceph_monmap* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @__ceph_monc_got_map(%struct.ceph_mon_client* %62, i32 %63, i32 %68)
  %70 = load %struct.ceph_client*, %struct.ceph_client** %5, align 8
  %71 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %55, %52, %37
  %73 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %74 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load %struct.ceph_client*, %struct.ceph_client** %5, align 8
  %77 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %76, i32 0, i32 1
  %78 = call i32 @wake_up_all(i32* %77)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dout(i8*) #1

declare dso_local %struct.ceph_monmap* @ceph_monmap_decode(i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.ceph_monmap*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @PTR_ERR(%struct.ceph_monmap*) #1

declare dso_local i32 @ceph_msg_dump(%struct.ceph_msg*) #1

declare dso_local i64 @ceph_check_fsid(%struct.ceph_client*, i32*) #1

declare dso_local i32 @kfree(%struct.ceph_monmap*) #1

declare dso_local i32 @__ceph_monc_got_map(%struct.ceph_mon_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
