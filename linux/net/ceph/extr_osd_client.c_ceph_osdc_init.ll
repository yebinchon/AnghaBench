; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_client = type { i32, i32, i32, i32, i8*, %struct.ceph_client*, i32, i32, i8*, i8*, i8*, i8*, i32, %struct.TYPE_4__, i32, i32, i8*, i32 }
%struct.TYPE_4__ = type { i32, %struct.ceph_osd_client* }
%struct.ceph_client = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"init\0A\00", align 1
@RB_ROOT = common dso_local global i8* null, align 8
@CEPH_HOMELESS_OSD = common dso_local global i32 0, align 4
@CEPH_LINGER_ID_START = common dso_local global i32 0, align 4
@handle_timeout = common dso_local global i32 0, align 4
@handle_osds_timeout = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ceph_osd_request_cache = common dso_local global i32 0, align 4
@CEPH_MSG_OSD_OP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@CEPH_OSD_SLAB_OPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"osd_op\00", align 1
@CEPH_MSG_OSD_OPREPLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"osd_op_reply\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"ceph-watch-notify\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"ceph-completion\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_osdc_init(%struct.ceph_osd_client* %0, %struct.ceph_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_osd_client*, align 8
  %5 = alloca %struct.ceph_client*, align 8
  %6 = alloca i32, align 4
  store %struct.ceph_osd_client* %0, %struct.ceph_osd_client** %4, align 8
  store %struct.ceph_client* %1, %struct.ceph_client** %5, align 8
  %7 = call i32 @dout(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ceph_client*, %struct.ceph_client** %5, align 8
  %9 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %10 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %9, i32 0, i32 5
  store %struct.ceph_client* %8, %struct.ceph_client** %10, align 8
  %11 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %12 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %11, i32 0, i32 17
  %13 = call i32 @init_rwsem(i32* %12)
  %14 = load i8*, i8** @RB_ROOT, align 8
  %15 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %16 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %15, i32 0, i32 16
  store i8* %14, i8** %16, align 8
  %17 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %18 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %17, i32 0, i32 15
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %21 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %20, i32 0, i32 14
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %24 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %23, i32 0, i32 13
  %25 = call i32 @osd_init(%struct.TYPE_4__* %24)
  %26 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %27 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %28 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %27, i32 0, i32 13
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store %struct.ceph_osd_client* %26, %struct.ceph_osd_client** %29, align 8
  %30 = load i32, i32* @CEPH_HOMELESS_OSD, align 4
  %31 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %32 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %31, i32 0, i32 13
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @CEPH_LINGER_ID_START, align 4
  %35 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %36 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** @RB_ROOT, align 8
  %38 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %39 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %38, i32 0, i32 11
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @RB_ROOT, align 8
  %41 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %42 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %41, i32 0, i32 10
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @RB_ROOT, align 8
  %44 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %45 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %44, i32 0, i32 9
  store i8* %43, i8** %45, align 8
  %46 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %47 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %46, i32 0, i32 7
  %48 = load i32, i32* @handle_timeout, align 4
  %49 = call i32 @INIT_DELAYED_WORK(i32* %47, i32 %48)
  %50 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %51 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %50, i32 0, i32 6
  %52 = load i32, i32* @handle_osds_timeout, align 4
  %53 = call i32 @INIT_DELAYED_WORK(i32* %51, i32 %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  %56 = call i32 (...) @ceph_osdmap_alloc()
  %57 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %58 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %60 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %2
  br label %159

64:                                               ; preds = %2
  %65 = load i32, i32* @ceph_osd_request_cache, align 4
  %66 = call i32 @mempool_create_slab_pool(i32 10, i32 %65)
  %67 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %68 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %70 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  br label %154

74:                                               ; preds = %64
  %75 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %76 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %75, i32 0, i32 2
  %77 = load i32, i32* @CEPH_MSG_OSD_OP, align 4
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = load i32, i32* @CEPH_OSD_SLAB_OPS, align 4
  %80 = call i32 @ceph_msgpool_init(i32* %76, i32 %77, i32 %78, i32 %79, i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %149

84:                                               ; preds = %74
  %85 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %86 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %85, i32 0, i32 3
  %87 = load i32, i32* @CEPH_MSG_OSD_OPREPLY, align 4
  %88 = load i32, i32* @PAGE_SIZE, align 4
  %89 = load i32, i32* @CEPH_OSD_SLAB_OPS, align 4
  %90 = call i32 @ceph_msgpool_init(i32* %86, i32 %87, i32 %88, i32 %89, i32 10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %145

94:                                               ; preds = %84
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  %97 = call i8* @create_singlethread_workqueue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %98 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %99 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  %100 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %101 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %100, i32 0, i32 4
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %94
  br label %141

105:                                              ; preds = %94
  %106 = call i8* @create_singlethread_workqueue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %107 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %108 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %107, i32 0, i32 8
  store i8* %106, i8** %108, align 8
  %109 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %110 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %109, i32 0, i32 8
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %105
  br label %136

114:                                              ; preds = %105
  %115 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %116 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %115, i32 0, i32 7
  %117 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %118 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %117, i32 0, i32 5
  %119 = load %struct.ceph_client*, %struct.ceph_client** %118, align 8
  %120 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %119, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @schedule_delayed_work(i32* %116, i32 %123)
  %125 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %126 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %125, i32 0, i32 6
  %127 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %128 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %127, i32 0, i32 5
  %129 = load %struct.ceph_client*, %struct.ceph_client** %128, align 8
  %130 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %129, i32 0, i32 0
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @round_jiffies_relative(i32 %133)
  %135 = call i32 @schedule_delayed_work(i32* %126, i32 %134)
  store i32 0, i32* %3, align 4
  br label %161

136:                                              ; preds = %113
  %137 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %138 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %137, i32 0, i32 4
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @destroy_workqueue(i8* %139)
  br label %141

141:                                              ; preds = %136, %104
  %142 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %143 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %142, i32 0, i32 3
  %144 = call i32 @ceph_msgpool_destroy(i32* %143)
  br label %145

145:                                              ; preds = %141, %93
  %146 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %147 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %146, i32 0, i32 2
  %148 = call i32 @ceph_msgpool_destroy(i32* %147)
  br label %149

149:                                              ; preds = %145, %83
  %150 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %151 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @mempool_destroy(i32 %152)
  br label %154

154:                                              ; preds = %149, %73
  %155 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %156 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @ceph_osdmap_destroy(i32 %157)
  br label %159

159:                                              ; preds = %154, %63
  %160 = load i32, i32* %6, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %159, %114
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @dout(i8*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @osd_init(%struct.TYPE_4__*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @ceph_osdmap_alloc(...) #1

declare dso_local i32 @mempool_create_slab_pool(i32, i32) #1

declare dso_local i32 @ceph_msgpool_init(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i8* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

declare dso_local i32 @destroy_workqueue(i8*) #1

declare dso_local i32 @ceph_msgpool_destroy(i32*) #1

declare dso_local i32 @mempool_destroy(i32) #1

declare dso_local i32 @ceph_osdmap_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
