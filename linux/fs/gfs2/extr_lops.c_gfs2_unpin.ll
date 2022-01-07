; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_gfs2_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_gfs2_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, i32 }
%struct.buffer_head = type { %struct.gfs2_bufdata* }
%struct.gfs2_bufdata = type { %struct.gfs2_glock*, i32, %struct.gfs2_trans*, i32 }
%struct.gfs2_glock = type { i32, i32, i32 }
%struct.gfs2_trans = type { i32 }

@GLF_LFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_sbd*, %struct.buffer_head*, %struct.gfs2_trans*)* @gfs2_unpin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_unpin(%struct.gfs2_sbd* %0, %struct.buffer_head* %1, %struct.gfs2_trans* %2) #0 {
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.gfs2_trans*, align 8
  %7 = alloca %struct.gfs2_bufdata*, align 8
  %8 = alloca %struct.gfs2_glock*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store %struct.gfs2_trans* %2, %struct.gfs2_trans** %6, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %10 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  %11 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  store %struct.gfs2_bufdata* %11, %struct.gfs2_bufdata** %7, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %13 = call i32 @buffer_uptodate(%struct.buffer_head* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %19 = call i32 @buffer_pinned(%struct.buffer_head* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %25 = call i32 @lock_buffer(%struct.buffer_head* %24)
  %26 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %27 = call i32 @mark_buffer_dirty(%struct.buffer_head* %26)
  %28 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %29 = call i32 @clear_buffer_pinned(%struct.buffer_head* %28)
  %30 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %31 = call i64 @buffer_is_rgrp(%struct.gfs2_bufdata* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %35 = call i32 @maybe_release_space(%struct.gfs2_bufdata* %34)
  br label %36

36:                                               ; preds = %33, %3
  %37 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %38 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %37, i32 0, i32 1
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %41 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %40, i32 0, i32 2
  %42 = load %struct.gfs2_trans*, %struct.gfs2_trans** %41, align 8
  %43 = icmp ne %struct.gfs2_trans* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %46 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %45, i32 0, i32 1
  %47 = call i32 @list_del(i32* %46)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %49 = call i32 @brelse(%struct.buffer_head* %48)
  br label %62

50:                                               ; preds = %36
  %51 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %52 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %51, i32 0, i32 0
  %53 = load %struct.gfs2_glock*, %struct.gfs2_glock** %52, align 8
  store %struct.gfs2_glock* %53, %struct.gfs2_glock** %8, align 8
  %54 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %55 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %54, i32 0, i32 3
  %56 = load %struct.gfs2_glock*, %struct.gfs2_glock** %8, align 8
  %57 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %56, i32 0, i32 2
  %58 = call i32 @list_add(i32* %55, i32* %57)
  %59 = load %struct.gfs2_glock*, %struct.gfs2_glock** %8, align 8
  %60 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %59, i32 0, i32 1
  %61 = call i32 @atomic_inc(i32* %60)
  br label %62

62:                                               ; preds = %50, %44
  %63 = load %struct.gfs2_trans*, %struct.gfs2_trans** %6, align 8
  %64 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %65 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %64, i32 0, i32 2
  store %struct.gfs2_trans* %63, %struct.gfs2_trans** %65, align 8
  %66 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %67 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %66, i32 0, i32 1
  %68 = load %struct.gfs2_trans*, %struct.gfs2_trans** %6, align 8
  %69 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %68, i32 0, i32 0
  %70 = call i32 @list_add(i32* %67, i32* %69)
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %72 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %71, i32 0, i32 1
  %73 = call i32 @spin_unlock(i32* %72)
  %74 = load i32, i32* @GLF_LFLUSH, align 4
  %75 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %76 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %75, i32 0, i32 0
  %77 = load %struct.gfs2_glock*, %struct.gfs2_glock** %76, align 8
  %78 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %77, i32 0, i32 0
  %79 = call i32 @clear_bit(i32 %74, i32* %78)
  %80 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %81 = call i32 @trace_gfs2_pin(%struct.gfs2_bufdata* %80, i32 0)
  %82 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %83 = call i32 @unlock_buffer(%struct.buffer_head* %82)
  %84 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %85 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %84, i32 0, i32 0
  %86 = call i32 @atomic_dec(i32* %85)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_pinned(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_pinned(%struct.buffer_head*) #1

declare dso_local i64 @buffer_is_rgrp(%struct.gfs2_bufdata*) #1

declare dso_local i32 @maybe_release_space(%struct.gfs2_bufdata*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @trace_gfs2_pin(%struct.gfs2_bufdata*, i32) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
