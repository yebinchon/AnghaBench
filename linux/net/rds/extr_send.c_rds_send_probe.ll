; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_send.c_rds_send_probe.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_send.c_rds_send_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_conn_path = type { i32, %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.rds_message = type { %struct.TYPE_9__, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.rds_conn_path*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDS_MSG_ON_CONN = common dso_local global i32 0, align 4
@RDS_MPATH_WORKERS = common dso_local global i32 0, align 4
@RDS_EXTHDR_NPATHS = common dso_local global i32 0, align 4
@RDS_EXTHDR_GEN_NUM = common dso_local global i32 0, align 4
@s_send_queued = common dso_local global i32 0, align 4
@s_send_pong = common dso_local global i32 0, align 4
@rds_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_conn_path*, i32, i32, i32)* @rds_send_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_send_probe(%struct.rds_conn_path* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rds_conn_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rds_message*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rds_conn_path* %0, %struct.rds_conn_path** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.rds_message* @rds_message_alloc(i32 0, i32 %15)
  store %struct.rds_message* %16, %struct.rds_message** %10, align 8
  %17 = load %struct.rds_message*, %struct.rds_message** %10, align 8
  %18 = icmp ne %struct.rds_message* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %12, align 4
  br label %149

22:                                               ; preds = %4
  %23 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %24 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rds_message*, %struct.rds_message** %10, align 8
  %29 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.rds_message*, %struct.rds_message** %10, align 8
  %31 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %34 = call i32 @rds_conn_path_connect_if_down(%struct.rds_conn_path* %33)
  %35 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %36 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %35, i32 0, i32 1
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @rds_cong_wait(i32 %39, i32 %40, i32 1, i32* null)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %22
  br label %149

45:                                               ; preds = %22
  %46 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %47 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %46, i32 0, i32 2
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.rds_message*, %struct.rds_message** %10, align 8
  %51 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %50, i32 0, i32 2
  %52 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %53 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %52, i32 0, i32 4
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  %55 = load i32, i32* @RDS_MSG_ON_CONN, align 4
  %56 = load %struct.rds_message*, %struct.rds_message** %10, align 8
  %57 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %56, i32 0, i32 1
  %58 = call i32 @set_bit(i32 %55, i32* %57)
  %59 = load %struct.rds_message*, %struct.rds_message** %10, align 8
  %60 = call i32 @rds_message_addref(%struct.rds_message* %59)
  %61 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %62 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %61, i32 0, i32 1
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = load %struct.rds_message*, %struct.rds_message** %10, align 8
  %65 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %66, align 8
  %67 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %68 = load %struct.rds_message*, %struct.rds_message** %10, align 8
  %69 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  store %struct.rds_conn_path* %67, %struct.rds_conn_path** %70, align 8
  %71 = load %struct.rds_message*, %struct.rds_message** %10, align 8
  %72 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %77 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @rds_message_populate_header(%struct.TYPE_10__* %73, i32 %74, i32 %75, i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.rds_message*, %struct.rds_message** %10, align 8
  %82 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %80
  store i32 %86, i32* %84, align 8
  %87 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %88 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @be16_to_cpu(i32 %91)
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @be16_to_cpu(i32 %93)
  %95 = call i64 @RDS_HS_PROBE(i32 %92, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %125

97:                                               ; preds = %45
  %98 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %99 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %98, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %97
  %107 = load i32, i32* @RDS_MPATH_WORKERS, align 4
  %108 = call i32 @cpu_to_be16(i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %110 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %109, i32 0, i32 1
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @cpu_to_be32(i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load %struct.rds_message*, %struct.rds_message** %10, align 8
  %116 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* @RDS_EXTHDR_NPATHS, align 4
  %119 = call i32 @rds_message_add_extension(%struct.TYPE_10__* %117, i32 %118, i32* %13, i32 4)
  %120 = load %struct.rds_message*, %struct.rds_message** %10, align 8
  %121 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* @RDS_EXTHDR_GEN_NUM, align 4
  %124 = call i32 @rds_message_add_extension(%struct.TYPE_10__* %122, i32 %123, i32* %14, i32 4)
  br label %125

125:                                              ; preds = %106, %97, %45
  %126 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %127 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %126, i32 0, i32 2
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = load i32, i32* @s_send_queued, align 4
  %131 = call i32 @rds_stats_inc(i32 %130)
  %132 = load i32, i32* @s_send_pong, align 4
  %133 = call i32 @rds_stats_inc(i32 %132)
  %134 = call i32 (...) @rcu_read_lock()
  %135 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %136 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %135, i32 0, i32 1
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = call i32 @rds_destroy_pending(%struct.TYPE_11__* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %125
  %141 = load i32, i32* @rds_wq, align 4
  %142 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %143 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %142, i32 0, i32 0
  %144 = call i32 @queue_delayed_work(i32 %141, i32* %143, i32 1)
  br label %145

145:                                              ; preds = %140, %125
  %146 = call i32 (...) @rcu_read_unlock()
  %147 = load %struct.rds_message*, %struct.rds_message** %10, align 8
  %148 = call i32 @rds_message_put(%struct.rds_message* %147)
  store i32 0, i32* %5, align 4
  br label %157

149:                                              ; preds = %44, %19
  %150 = load %struct.rds_message*, %struct.rds_message** %10, align 8
  %151 = icmp ne %struct.rds_message* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.rds_message*, %struct.rds_message** %10, align 8
  %154 = call i32 @rds_message_put(%struct.rds_message* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %155, %145
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local %struct.rds_message* @rds_message_alloc(i32, i32) #1

declare dso_local i32 @rds_conn_path_connect_if_down(%struct.rds_conn_path*) #1

declare dso_local i32 @rds_cong_wait(i32, i32, i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rds_message_addref(%struct.rds_message*) #1

declare dso_local i32 @rds_message_populate_header(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i64 @RDS_HS_PROBE(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @rds_message_add_extension(%struct.TYPE_10__*, i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rds_stats_inc(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @rds_destroy_pending(%struct.TYPE_11__*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rds_message_put(%struct.rds_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
