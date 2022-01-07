; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_trans.c_gfs2_trans_add_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_trans.c_gfs2_trans_add_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.gfs2_trans* }
%struct.gfs2_trans = type { i32, i32, i32 }
%struct.gfs2_glock = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { %struct.gfs2_bufdata* }
%struct.gfs2_bufdata = type { i32, i32, %struct.gfs2_glock* }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@TR_TOUCHED = common dso_local global i32 0, align 4
@GLF_LFLUSH = common dso_local global i32 0, align 4
@GLF_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_trans_add_data(%struct.gfs2_glock* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.gfs2_trans*, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.gfs2_bufdata*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.gfs2_trans*, %struct.gfs2_trans** %9, align 8
  store %struct.gfs2_trans* %10, %struct.gfs2_trans** %5, align 8
  %11 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %6, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %16 = call i32 @lock_buffer(%struct.buffer_head* %15)
  %17 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %18 = call i64 @buffer_pinned(%struct.buffer_head* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @TR_TOUCHED, align 4
  %22 = load %struct.gfs2_trans*, %struct.gfs2_trans** %5, align 8
  %23 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %22, i32 0, i32 2
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  br label %102

25:                                               ; preds = %2
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %27 = call i32 @gfs2_log_lock(%struct.gfs2_sbd* %26)
  %28 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %29, align 8
  store %struct.gfs2_bufdata* %30, %struct.gfs2_bufdata** %7, align 8
  %31 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %32 = icmp eq %struct.gfs2_bufdata* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %25
  %34 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %35 = call i32 @gfs2_log_unlock(%struct.gfs2_sbd* %34)
  %36 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %37 = call i32 @unlock_buffer(%struct.buffer_head* %36)
  %38 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %39, align 8
  %41 = icmp eq %struct.gfs2_bufdata* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %45 = call %struct.gfs2_bufdata* @gfs2_alloc_bufdata(%struct.gfs2_glock* %43, %struct.buffer_head* %44)
  store %struct.gfs2_bufdata* %45, %struct.gfs2_bufdata** %7, align 8
  br label %50

46:                                               ; preds = %33
  %47 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 0
  %49 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %48, align 8
  store %struct.gfs2_bufdata* %49, %struct.gfs2_bufdata** %7, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %52 = call i32 @lock_buffer(%struct.buffer_head* %51)
  %53 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %54 = call i32 @gfs2_log_lock(%struct.gfs2_sbd* %53)
  br label %55

55:                                               ; preds = %50, %25
  %56 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %57 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %58 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %57, i32 0, i32 2
  %59 = load %struct.gfs2_glock*, %struct.gfs2_glock** %58, align 8
  %60 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %61 = icmp eq %struct.gfs2_glock* %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @gfs2_assert(%struct.gfs2_sbd* %56, i32 %62)
  %64 = load i32, i32* @TR_TOUCHED, align 4
  %65 = load %struct.gfs2_trans*, %struct.gfs2_trans** %5, align 8
  %66 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %65, i32 0, i32 2
  %67 = call i32 @set_bit(i32 %64, i32* %66)
  %68 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %69 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %68, i32 0, i32 0
  %70 = call i64 @list_empty(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %99

72:                                               ; preds = %55
  %73 = load i32, i32* @GLF_LFLUSH, align 4
  %74 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %75 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %74, i32 0, i32 2
  %76 = load %struct.gfs2_glock*, %struct.gfs2_glock** %75, align 8
  %77 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %76, i32 0, i32 0
  %78 = call i32 @set_bit(i32 %73, i32* %77)
  %79 = load i32, i32* @GLF_DIRTY, align 4
  %80 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %81 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %80, i32 0, i32 2
  %82 = load %struct.gfs2_glock*, %struct.gfs2_glock** %81, align 8
  %83 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %82, i32 0, i32 0
  %84 = call i32 @set_bit(i32 %79, i32* %83)
  %85 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %86 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %87 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @gfs2_pin(%struct.gfs2_sbd* %85, i32 %88)
  %90 = load %struct.gfs2_trans*, %struct.gfs2_trans** %5, align 8
  %91 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %95 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %94, i32 0, i32 0
  %96 = load %struct.gfs2_trans*, %struct.gfs2_trans** %5, align 8
  %97 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %96, i32 0, i32 0
  %98 = call i32 @list_add_tail(i32* %95, i32* %97)
  br label %99

99:                                               ; preds = %72, %55
  %100 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %101 = call i32 @gfs2_log_unlock(%struct.gfs2_sbd* %100)
  br label %102

102:                                              ; preds = %99, %20
  %103 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %104 = call i32 @unlock_buffer(%struct.buffer_head* %103)
  ret void
}

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_pinned(%struct.buffer_head*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_log_lock(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_log_unlock(%struct.gfs2_sbd*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local %struct.gfs2_bufdata* @gfs2_alloc_bufdata(%struct.gfs2_glock*, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_assert(%struct.gfs2_sbd*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @gfs2_pin(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
