; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_gfs2_pin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_gfs2_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.gfs2_sbd = type { i32, i32 }
%struct.buffer_head = type { %struct.gfs2_bufdata* }
%struct.gfs2_bufdata = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_pin(%struct.gfs2_sbd* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.gfs2_bufdata*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %14 = call i32 @clear_buffer_dirty(%struct.buffer_head* %13)
  %15 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %16 = call i64 @test_set_buffer_pinned(%struct.buffer_head* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %20 = call i32 @gfs2_assert_withdraw(%struct.gfs2_sbd* %19, i32 0)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %23 = call i32 @buffer_uptodate(%struct.buffer_head* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %28 = call i32 @gfs2_io_error_bh_wd(%struct.gfs2_sbd* %26, %struct.buffer_head* %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 0
  %32 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %31, align 8
  store %struct.gfs2_bufdata* %32, %struct.gfs2_bufdata** %5, align 8
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %34 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %33, i32 0, i32 1
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %5, align 8
  %37 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %29
  %41 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %5, align 8
  %42 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %41, i32 0, i32 1
  %43 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %5, align 8
  %44 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @list_move(i32* %42, i32* %46)
  br label %48

48:                                               ; preds = %40, %29
  %49 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %50 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %53 = call i32 @get_bh(%struct.buffer_head* %52)
  %54 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %55 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %54, i32 0, i32 0
  %56 = call i32 @atomic_inc(i32* %55)
  %57 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %5, align 8
  %58 = call i32 @trace_gfs2_pin(%struct.gfs2_bufdata* %57, i32 1)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @test_set_buffer_pinned(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_assert_withdraw(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_io_error_bh_wd(%struct.gfs2_sbd*, %struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @trace_gfs2_pin(%struct.gfs2_bufdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
