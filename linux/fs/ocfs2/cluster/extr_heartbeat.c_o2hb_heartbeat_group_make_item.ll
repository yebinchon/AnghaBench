; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_heartbeat_group_make_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_heartbeat_group_make_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.config_group = type { i32 }
%struct.o2hb_region = type { i64, i32, %struct.config_item, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@O2HB_MAX_REGION_NAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@o2hb_live_lock = common dso_local global i32 0, align 4
@o2hb_region_bitmap = common dso_local global i32 0, align 4
@O2NM_MAX_REGIONS = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@o2hb_all_regions = common dso_local global i32 0, align 4
@o2hb_region_type = common dso_local global i32 0, align 4
@O2HB_NEGO_TIMEOUT_MSG = common dso_local global i32 0, align 4
@o2hb_nego_timeout_handler = common dso_local global i32 0, align 4
@O2HB_NEGO_APPROVE_MSG = common dso_local global i32 0, align 4
@o2hb_nego_approve_handler = common dso_local global i32 0, align 4
@o2hb_debug_dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_item* (%struct.config_group*, i8*)* @o2hb_heartbeat_group_make_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_item* @o2hb_heartbeat_group_make_item(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.o2hb_region*, align 8
  %7 = alloca i32, align 4
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.o2hb_region* null, %struct.o2hb_region** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.o2hb_region* @kzalloc(i32 24, i32 %8)
  store %struct.o2hb_region* %9, %struct.o2hb_region** %6, align 8
  %10 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %11 = icmp eq %struct.o2hb_region* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.config_item* @ERR_PTR(i32 %14)
  store %struct.config_item* %15, %struct.config_item** %3, align 8
  br label %114

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = load i64, i64* @O2HB_MAX_REGION_NAME_LEN, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @ENAMETOOLONG, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %109

24:                                               ; preds = %16
  %25 = call i32 @spin_lock(i32* @o2hb_live_lock)
  %26 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %27 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = call i64 (...) @o2hb_global_heartbeat_active()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = load i32, i32* @o2hb_region_bitmap, align 4
  %32 = load i64, i64* @O2NM_MAX_REGIONS, align 8
  %33 = call i64 @find_first_zero_bit(i32 %31, i64 %32)
  %34 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %35 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %37 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @O2NM_MAX_REGIONS, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = call i32 @spin_unlock(i32* @o2hb_live_lock)
  %43 = load i32, i32* @EFBIG, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %109

45:                                               ; preds = %30
  %46 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %47 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @o2hb_region_bitmap, align 4
  %50 = call i32 @set_bit(i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %24
  %52 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %53 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %52, i32 0, i32 4
  %54 = call i32 @list_add_tail(i32* %53, i32* @o2hb_all_regions)
  %55 = call i32 @spin_unlock(i32* @o2hb_live_lock)
  %56 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %57 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %56, i32 0, i32 2
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @config_item_init_type_name(%struct.config_item* %57, i8* %58, i32* @o2hb_region_type)
  %60 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %61 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @O2NM_MAX_REGIONS, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @strlen(i8* %66)
  %68 = call i32 @crc32_le(i64 %64, i8* %65, i64 %67)
  %69 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %70 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %72 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %71, i32 0, i32 1
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load i32, i32* @O2HB_NEGO_TIMEOUT_MSG, align 4
  %75 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %76 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @o2hb_nego_timeout_handler, align 4
  %79 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %80 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %81 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %80, i32 0, i32 1
  %82 = call i32 @o2net_register_handler(i32 %74, i32 %77, i32 4, i32 %78, %struct.o2hb_region* %79, i32* null, i32* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %51
  br label %109

86:                                               ; preds = %51
  %87 = load i32, i32* @O2HB_NEGO_APPROVE_MSG, align 4
  %88 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %89 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @o2hb_nego_approve_handler, align 4
  %92 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %93 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %94 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %93, i32 0, i32 1
  %95 = call i32 @o2net_register_handler(i32 %87, i32 %90, i32 4, i32 %91, %struct.o2hb_region* %92, i32* null, i32* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %86
  br label %105

99:                                               ; preds = %86
  %100 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %101 = load i32, i32* @o2hb_debug_dir, align 4
  %102 = call i32 @o2hb_debug_region_init(%struct.o2hb_region* %100, i32 %101)
  %103 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %104 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %103, i32 0, i32 2
  store %struct.config_item* %104, %struct.config_item** %3, align 8
  br label %114

105:                                              ; preds = %98
  %106 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %107 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %106, i32 0, i32 1
  %108 = call i32 @o2net_unregister_handler_list(i32* %107)
  br label %109

109:                                              ; preds = %105, %85, %41, %21
  %110 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %111 = call i32 @kfree(%struct.o2hb_region* %110)
  %112 = load i32, i32* %7, align 4
  %113 = call %struct.config_item* @ERR_PTR(i32 %112)
  store %struct.config_item* %113, %struct.config_item** %3, align 8
  br label %114

114:                                              ; preds = %109, %99, %12
  %115 = load %struct.config_item*, %struct.config_item** %3, align 8
  ret %struct.config_item* %115
}

declare dso_local %struct.o2hb_region* @kzalloc(i32, i32) #1

declare dso_local %struct.config_item* @ERR_PTR(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @o2hb_global_heartbeat_active(...) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @config_item_init_type_name(%struct.config_item*, i8*, i32*) #1

declare dso_local i32 @crc32_le(i64, i8*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @o2net_register_handler(i32, i32, i32, i32, %struct.o2hb_region*, i32*, i32*) #1

declare dso_local i32 @o2hb_debug_region_init(%struct.o2hb_region*, i32) #1

declare dso_local i32 @o2net_unregister_handler_list(i32*) #1

declare dso_local i32 @kfree(%struct.o2hb_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
