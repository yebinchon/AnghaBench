; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_check_own_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_check_own_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i32, %struct.o2hb_disk_slot* }
%struct.o2hb_disk_slot = type { i64, i64, i64, %struct.o2hb_disk_heartbeat_block* }
%struct.o2hb_disk_heartbeat_block = type { i64, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Another node is heartbeating on device\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Heartbeat generation mismatch on device\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Heartbeat sequence mismatch on device\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"%s (%s): expected(%u:0x%llx, 0x%llx), ondisk(%u:0x%llx, 0x%llx)\0A\00", align 1
@ERRSTR1 = common dso_local global i8* null, align 8
@ERRSTR2 = common dso_local global i8* null, align 8
@ERRSTR3 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2hb_region*)* @o2hb_check_own_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2hb_check_own_slot(%struct.o2hb_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.o2hb_region*, align 8
  %4 = alloca %struct.o2hb_disk_slot*, align 8
  %5 = alloca %struct.o2hb_disk_heartbeat_block*, align 8
  %6 = alloca i8*, align 8
  store %struct.o2hb_region* %0, %struct.o2hb_region** %3, align 8
  %7 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %8 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %7, i32 0, i32 1
  %9 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %8, align 8
  %10 = call i64 (...) @o2nm_this_node()
  %11 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %9, i64 %10
  store %struct.o2hb_disk_slot* %11, %struct.o2hb_disk_slot** %4, align 8
  %12 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %4, align 8
  %13 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

17:                                               ; preds = %1
  %18 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %4, align 8
  %19 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %18, i32 0, i32 3
  %20 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %19, align 8
  store %struct.o2hb_disk_heartbeat_block* %20, %struct.o2hb_disk_heartbeat_block** %5, align 8
  %21 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %5, align 8
  %22 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @le64_to_cpu(i32 %23)
  %25 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %4, align 8
  %26 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %17
  %30 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %5, align 8
  %31 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le64_to_cpu(i32 %32)
  %34 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %4, align 8
  %35 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %5, align 8
  %40 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %4, align 8
  %43 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %95

47:                                               ; preds = %38, %29, %17
  %48 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %5, align 8
  %49 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %4, align 8
  %52 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %68

56:                                               ; preds = %47
  %57 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %5, align 8
  %58 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @le64_to_cpu(i32 %59)
  %61 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %4, align 8
  %62 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %67

66:                                               ; preds = %56
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %67

67:                                               ; preds = %66, %65
  br label %68

68:                                               ; preds = %67, %55
  %69 = load i32, i32* @ML_ERROR, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %72 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %4, align 8
  %75 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %4, align 8
  %78 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %4, align 8
  %81 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %5, align 8
  %84 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %5, align 8
  %87 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @le64_to_cpu(i32 %88)
  %90 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %5, align 8
  %91 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @le64_to_cpu(i32 %92)
  %94 = call i32 @mlog(i32 %69, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i8* %70, i32 %73, i64 %76, i64 %79, i64 %82, i64 %85, i64 %89, i64 %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %68, %46, %16
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @o2nm_this_node(...) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, i8*, i32, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
