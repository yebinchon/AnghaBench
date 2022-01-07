; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_check_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_check_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i32, i32, i32, %struct.o2hb_disk_heartbeat_block* }
%struct.o2hb_disk_heartbeat_block = type { i32, i32, i32, i32 }
%struct.o2hb_disk_slot = type { i64, i32, i64, i64, i32, i32, i32 }
%struct.o2hb_node_event = type { i32 }
%struct.o2nm_node = type { i32 }

@o2hb_dead_threshold = common dso_local global i32 0, align 4
@O2HB_REGION_TIMEOUT_MS = common dso_local global i32 0, align 4
@o2hb_live_lock = common dso_local global i32 0, align 4
@o2hb_live_node_bitmap = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Node %d has written a bad crc to %s\0A\00", align 1
@ML_HEARTBEAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Node %d changed generation (0x%llx to 0x%llx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"Slot %d gen 0x%llx cksum 0x%x seq %llu last %llu changed %u equal %u\0A\00", align 1
@O2HB_LIVE_THRESHOLD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Node %d (id 0x%llx) joined my region\0A\00", align 1
@o2hb_live_slots = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"o2hb: Add node %d to live nodes bitmap\0A\00", align 1
@O2HB_NODE_UP_CB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [150 x i8] c"Node %d on device %s has a dead count of %u ms, but our count is %u ms.\0APlease double check your configuration values for 'O2CB_HEARTBEAT_THRESHOLD'\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Node %d left my region\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"o2hb: Remove node %d from live nodes bitmap\0A\00", align 1
@O2HB_NODE_DOWN_CB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2hb_region*, %struct.o2hb_disk_slot*)* @o2hb_check_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2hb_check_slot(%struct.o2hb_region* %0, %struct.o2hb_disk_slot* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.o2hb_region*, align 8
  %5 = alloca %struct.o2hb_disk_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.o2hb_node_event, align 4
  %9 = alloca %struct.o2nm_node*, align 8
  %10 = alloca %struct.o2hb_disk_heartbeat_block*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.o2hb_region* %0, %struct.o2hb_region** %4, align 8
  store %struct.o2hb_disk_slot* %1, %struct.o2hb_disk_slot** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = getelementptr inbounds %struct.o2hb_node_event, %struct.o2hb_node_event* %8, i32 0, i32 0
  %17 = getelementptr inbounds %struct.o2hb_node_event, %struct.o2hb_node_event* %8, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @LIST_HEAD_INIT(i32 %18)
  store i32 %19, i32* %16, align 4
  %20 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %21 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %20, i32 0, i32 3
  %22 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %21, align 8
  store %struct.o2hb_disk_heartbeat_block* %22, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %23 = load i32, i32* @o2hb_dead_threshold, align 4
  %24 = load i32, i32* @O2HB_REGION_TIMEOUT_MS, align 4
  %25 = mul i32 %23, %24
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %26 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %27 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %28 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %31 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @memcpy(%struct.o2hb_disk_heartbeat_block* %26, i32 %29, i32 %32)
  %34 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %35 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call %struct.o2nm_node* @o2nm_get_node_by_num(i64 %36)
  store %struct.o2nm_node* %37, %struct.o2nm_node** %9, align 8
  %38 = load %struct.o2nm_node*, %struct.o2nm_node** %9, align 8
  %39 = icmp ne %struct.o2nm_node* %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %2
  %41 = call i32 @spin_lock(i32* @o2hb_live_lock)
  %42 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %43 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @o2hb_live_node_bitmap, align 4
  %46 = call i32 @test_bit(i64 %44, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = call i32 @spin_unlock(i32* @o2hb_live_lock)
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %330

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %54 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %55 = call i32 @o2hb_verify_crc(%struct.o2hb_region* %53, %struct.o2hb_disk_heartbeat_block* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %52
  %58 = call i32 @spin_lock(i32* @o2hb_live_lock)
  %59 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %60 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %59, i32 0, i32 5
  %61 = call i64 @list_empty(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %316

64:                                               ; preds = %57
  %65 = load i32, i32* @ML_ERROR, align 4
  %66 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %67 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %70 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, i64, ...) @mlog(i32 %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %68, i32 %71)
  %73 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %74 = call i32 @o2hb_dump_slot(%struct.o2hb_disk_heartbeat_block* %73)
  %75 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %76 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = add i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %159

79:                                               ; preds = %52
  %80 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %81 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @le64_to_cpu(i32 %82)
  store i64 %83, i64* %11, align 8
  %84 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %85 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %79
  %90 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %91 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %99

94:                                               ; preds = %79
  %95 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %96 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = add i32 %97, 1
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %94, %89
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %102 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  %103 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %104 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %107 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @le64_to_cpu(i32 %108)
  %110 = icmp ne i64 %105, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %99
  store i32 1, i32* %7, align 4
  %112 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %113 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %112, i32 0, i32 1
  store i32 0, i32* %113, align 8
  %114 = load i32, i32* @ML_HEARTBEAT, align 4
  %115 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %116 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %119 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %122 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @le64_to_cpu(i32 %123)
  %125 = call i32 (i32, i8*, i64, ...) @mlog(i32 %114, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %117, i64 %120, i64 %124)
  br label %126

126:                                              ; preds = %111, %99
  %127 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %128 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @le64_to_cpu(i32 %129)
  %131 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %132 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %131, i32 0, i32 3
  store i64 %130, i64* %132, align 8
  %133 = load i32, i32* @ML_HEARTBEAT, align 4
  %134 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %135 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %138 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %141 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @le32_to_cpu(i32 %142)
  %144 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %145 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @le64_to_cpu(i32 %146)
  %148 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %149 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %152 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %155 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i32, i8*, i64, ...) @mlog(i32 %133, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i64 %136, i64 %139, i32 %143, i64 %147, i64 %150, i32 %153, i32 %156)
  %158 = call i32 @spin_lock(i32* @o2hb_live_lock)
  br label %159

159:                                              ; preds = %126, %64
  %160 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %161 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %160, i32 0, i32 5
  %162 = call i64 @list_empty(i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %243

164:                                              ; preds = %159
  %165 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %166 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @O2HB_LIVE_THRESHOLD, align 4
  %169 = icmp sge i32 %167, %168
  br i1 %169, label %170, label %243

170:                                              ; preds = %164
  %171 = load i32, i32* @ML_HEARTBEAT, align 4
  %172 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %173 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %176 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = call i32 (i32, i8*, i64, ...) @mlog(i32 %171, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %174, i64 %177)
  %179 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %180 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %183 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @set_bit(i64 %181, i32 %184)
  %186 = load i32*, i32** @o2hb_live_slots, align 8
  %187 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %188 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  %191 = call i64 @list_empty(i32* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %210

193:                                              ; preds = %170
  %194 = load i32, i32* @ML_HEARTBEAT, align 4
  %195 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %196 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 (i32, i8*, i64, ...) @mlog(i32 %194, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %197)
  %199 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %200 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* @o2hb_live_node_bitmap, align 4
  %203 = call i32 @set_bit(i64 %201, i32 %202)
  %204 = load i32, i32* @O2HB_NODE_UP_CB, align 4
  %205 = load %struct.o2nm_node*, %struct.o2nm_node** %9, align 8
  %206 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %207 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @o2hb_queue_node_event(%struct.o2hb_node_event* %8, i32 %204, %struct.o2nm_node* %205, i64 %208)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %210

210:                                              ; preds = %193, %170
  %211 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %212 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %211, i32 0, i32 5
  %213 = load i32*, i32** @o2hb_live_slots, align 8
  %214 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %215 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = call i32 @list_add_tail(i32* %212, i32* %217)
  %219 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %220 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %219, i32 0, i32 1
  store i32 0, i32* %220, align 8
  %221 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %222 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @le32_to_cpu(i32 %223)
  store i32 %224, i32* %13, align 4
  %225 = load i32, i32* %13, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %210
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %12, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %242

231:                                              ; preds = %227
  %232 = load i32, i32* @ML_ERROR, align 4
  %233 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %234 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %237 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* %12, align 4
  %241 = call i32 (i32, i8*, i64, ...) @mlog(i32 %232, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.5, i64 0, i64 0), i64 %235, i32 %238, i32 %239, i32 %240)
  br label %242

242:                                              ; preds = %231, %227, %210
  br label %316

243:                                              ; preds = %164, %159
  %244 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %245 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %244, i32 0, i32 5
  %246 = call i64 @list_empty(i32* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %243
  br label %316

249:                                              ; preds = %243
  %250 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %251 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @o2hb_dead_threshold, align 4
  %254 = icmp uge i32 %252, %253
  br i1 %254, label %258, label %255

255:                                              ; preds = %249
  %256 = load i32, i32* %7, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %305

258:                                              ; preds = %255, %249
  %259 = load i32, i32* @ML_HEARTBEAT, align 4
  %260 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %261 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = call i32 (i32, i8*, i64, ...) @mlog(i32 %259, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i64 %262)
  %264 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %265 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %268 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @clear_bit(i64 %266, i32 %269)
  %271 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %272 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %271, i32 0, i32 5
  %273 = call i32 @list_del_init(i32* %272)
  %274 = load i32*, i32** @o2hb_live_slots, align 8
  %275 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %276 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds i32, i32* %274, i64 %277
  %279 = call i64 @list_empty(i32* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %298

281:                                              ; preds = %258
  %282 = load i32, i32* @ML_HEARTBEAT, align 4
  %283 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %284 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = call i32 (i32, i8*, i64, ...) @mlog(i32 %282, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i64 %285)
  %287 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %288 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i32, i32* @o2hb_live_node_bitmap, align 4
  %291 = call i32 @clear_bit(i64 %289, i32 %290)
  %292 = load i32, i32* @O2HB_NODE_DOWN_CB, align 4
  %293 = load %struct.o2nm_node*, %struct.o2nm_node** %9, align 8
  %294 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %295 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = call i32 @o2hb_queue_node_event(%struct.o2hb_node_event* %8, i32 %292, %struct.o2nm_node* %293, i64 %296)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %298

298:                                              ; preds = %281, %258
  %299 = load i32, i32* %7, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %298
  %302 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %303 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %302, i32 0, i32 4
  store i32 0, i32* %303, align 8
  br label %304

304:                                              ; preds = %301, %298
  br label %316

305:                                              ; preds = %255
  %306 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %307 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %305
  %311 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %312 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %311, i32 0, i32 4
  store i32 0, i32* %312, align 8
  %313 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %314 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %313, i32 0, i32 1
  store i32 0, i32* %314, align 8
  br label %315

315:                                              ; preds = %310, %305
  br label %316

316:                                              ; preds = %315, %304, %248, %242, %63
  %317 = call i32 @spin_unlock(i32* @o2hb_live_lock)
  %318 = load i32, i32* %15, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %316
  %321 = call i32 @o2hb_run_event_list(%struct.o2hb_node_event* %8)
  br label %322

322:                                              ; preds = %320, %316
  %323 = load %struct.o2nm_node*, %struct.o2nm_node** %9, align 8
  %324 = icmp ne %struct.o2nm_node* %323, null
  br i1 %324, label %325, label %328

325:                                              ; preds = %322
  %326 = load %struct.o2nm_node*, %struct.o2nm_node** %9, align 8
  %327 = call i32 @o2nm_node_put(%struct.o2nm_node* %326)
  br label %328

328:                                              ; preds = %325, %322
  %329 = load i32, i32* %6, align 4
  store i32 %329, i32* %3, align 4
  br label %330

330:                                              ; preds = %328, %50
  %331 = load i32, i32* %3, align 4
  ret i32 %331
}

declare dso_local i32 @LIST_HEAD_INIT(i32) #1

declare dso_local i32 @memcpy(%struct.o2hb_disk_heartbeat_block*, i32, i32) #1

declare dso_local %struct.o2nm_node* @o2nm_get_node_by_num(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @o2hb_verify_crc(%struct.o2hb_region*, %struct.o2hb_disk_heartbeat_block*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64, ...) #1

declare dso_local i32 @o2hb_dump_slot(%struct.o2hb_disk_heartbeat_block*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @o2hb_queue_node_event(%struct.o2hb_node_event*, i32, %struct.o2nm_node*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @o2hb_run_event_list(%struct.o2hb_node_event*) #1

declare dso_local i32 @o2nm_node_put(%struct.o2nm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
