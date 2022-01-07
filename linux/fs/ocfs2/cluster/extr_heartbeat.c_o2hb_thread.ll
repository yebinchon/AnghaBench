; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_thread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.o2hb_bio_wait_ctxt = type { i32 }

@ML_HEARTBEAT = common dso_local global i32 0, align 4
@ML_KTHREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"hb thread running\0A\00", align 1
@current = common dso_local global i32 0, align 4
@MIN_NICE = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Node has been deleted, ret = %d\0A\00", align 1
@o2hb_steady_queue = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"start = %lld, end = %lld, msec = %u, ret = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"o2hb thread exiting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @o2hb_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2hb_thread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.o2hb_region*, align 8
  %7 = alloca %struct.o2hb_bio_wait_ctxt, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.o2hb_region*
  store %struct.o2hb_region* %12, %struct.o2hb_region** %6, align 8
  %13 = load i32, i32* @ML_HEARTBEAT, align 4
  %14 = load i32, i32* @ML_KTHREAD, align 4
  %15 = or i32 %13, %14
  %16 = call i32 (i32, i8*, ...) @mlog(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @current, align 4
  %18 = load i32, i32* @MIN_NICE, align 4
  %19 = call i32 @set_user_nice(i32 %17, i32 %18)
  %20 = call i32 (...) @o2nm_depend_this_node()
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load i32, i32* @ML_ERROR, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i32, i8*, ...) @mlog(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %28 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = call i32 @wake_up(i32* @o2hb_steady_queue)
  store i32 0, i32* %2, align 4
  br label %137

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %80, %30
  %32 = call i32 (...) @kthread_should_stop()
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %36 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %41 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %39, %34, %31
  %46 = phi i1 [ false, %34 ], [ false, %31 ], [ %44, %39 ]
  br i1 %46, label %47, label %81

47:                                               ; preds = %45
  %48 = call i32 (...) @ktime_get_real()
  store i32 %48, i32* %8, align 4
  %49 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %50 = call i32 @o2hb_do_disk_heartbeat(%struct.o2hb_region* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %53 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = call i32 (...) @ktime_get_real()
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @ktime_ms_delta(i32 %55, i32 %56)
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* @ML_HEARTBEAT, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 (i32, i8*, ...) @mlog(i32 %59, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = call i32 (...) @kthread_should_stop()
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %47
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %70 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %75 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sub i32 %76, %77
  %79 = call i32 @msleep_interruptible(i32 %78)
  br label %80

80:                                               ; preds = %73, %67, %47
  br label %31

81:                                               ; preds = %45
  %82 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %83 = call i32 @o2hb_disarm_timeout(%struct.o2hb_region* %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %105, %81
  %85 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %86 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %92 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br label %95

95:                                               ; preds = %89, %84
  %96 = phi i1 [ false, %84 ], [ %94, %89 ]
  br i1 %96, label %97, label %108

97:                                               ; preds = %95
  %98 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %99 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %98, i32 0, i32 6
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = call i32 @o2hb_shutdown_slot(i32* %103)
  br label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %84

108:                                              ; preds = %95
  %109 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %110 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %131, label %113

113:                                              ; preds = %108
  %114 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %115 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %113
  %119 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %120 = call i32 @o2hb_prepare_block(%struct.o2hb_region* %119, i32 0)
  %121 = load %struct.o2hb_region*, %struct.o2hb_region** %6, align 8
  %122 = call i32 @o2hb_issue_node_write(%struct.o2hb_region* %121, %struct.o2hb_bio_wait_ctxt* %7)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = call i32 @o2hb_wait_on_io(%struct.o2hb_bio_wait_ctxt* %7)
  br label %130

127:                                              ; preds = %118
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @mlog_errno(i32 %128)
  br label %130

130:                                              ; preds = %127, %125
  br label %131

131:                                              ; preds = %130, %113, %108
  %132 = call i32 (...) @o2nm_undepend_this_node()
  %133 = load i32, i32* @ML_HEARTBEAT, align 4
  %134 = load i32, i32* @ML_KTHREAD, align 4
  %135 = or i32 %133, %134
  %136 = call i32 (i32, i8*, ...) @mlog(i32 %135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %131, %23
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @o2nm_depend_this_node(...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @o2hb_do_disk_heartbeat(%struct.o2hb_region*) #1

declare dso_local i64 @ktime_ms_delta(i32, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @o2hb_disarm_timeout(%struct.o2hb_region*) #1

declare dso_local i32 @o2hb_shutdown_slot(i32*) #1

declare dso_local i32 @o2hb_prepare_block(%struct.o2hb_region*, i32) #1

declare dso_local i32 @o2hb_issue_node_write(%struct.o2hb_region*, %struct.o2hb_bio_wait_ctxt*) #1

declare dso_local i32 @o2hb_wait_on_io(%struct.o2hb_bio_wait_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @o2nm_undepend_this_node(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
