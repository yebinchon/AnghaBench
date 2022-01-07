; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_remove_from_journal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_remove_from_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.gfs2_trans* }
%struct.gfs2_trans = type { i32, i32, i32 }
%struct.buffer_head = type { %struct.gfs2_bufdata*, %struct.TYPE_3__* }
%struct.gfs2_bufdata = type { i64, i32 }
%struct.TYPE_3__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.gfs2_sbd = type { i32, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@REMOVE_META = common dso_local global i32 0, align 4
@TR_TOUCHED = common dso_local global i32 0, align 4
@gfs2_bufdata_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_remove_from_journal(%struct.buffer_head* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.gfs2_bufdata*, align 8
  %8 = alloca %struct.gfs2_trans*, align 8
  %9 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %11 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.address_space*, %struct.address_space** %13, align 8
  store %struct.address_space* %14, %struct.address_space** %5, align 8
  %15 = load %struct.address_space*, %struct.address_space** %5, align 8
  %16 = call %struct.gfs2_sbd* @gfs2_mapping2sbd(%struct.address_space* %15)
  store %struct.gfs2_sbd* %16, %struct.gfs2_sbd** %6, align 8
  %17 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %18, align 8
  store %struct.gfs2_bufdata* %19, %struct.gfs2_bufdata** %7, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.gfs2_trans*, %struct.gfs2_trans** %21, align 8
  store %struct.gfs2_trans* %22, %struct.gfs2_trans** %8, align 8
  store i32 0, i32* %9, align 4
  %23 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %24 = call i64 @test_clear_buffer_pinned(%struct.buffer_head* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %2
  %27 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %28 = call i32 @trace_gfs2_pin(%struct.gfs2_bufdata* %27, i32 0)
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %30 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %29, i32 0, i32 1
  %31 = call i32 @atomic_dec(i32* %30)
  %32 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %33 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %32, i32 0, i32 1
  %34 = call i32 @list_del_init(i32* %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @REMOVE_META, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load %struct.gfs2_trans*, %struct.gfs2_trans** %8, align 8
  %40 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %48

43:                                               ; preds = %26
  %44 = load %struct.gfs2_trans*, %struct.gfs2_trans** %8, align 8
  %45 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* @TR_TOUCHED, align 4
  %50 = load %struct.gfs2_trans*, %struct.gfs2_trans** %8, align 8
  %51 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %50, i32 0, i32 0
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  store i32 1, i32* %9, align 4
  %53 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %54 = call i32 @brelse(%struct.buffer_head* %53)
  br label %55

55:                                               ; preds = %48, %2
  %56 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %57 = icmp ne %struct.gfs2_bufdata* %56, null
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %60 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %59, i32 0, i32 0
  %61 = call i32 @spin_lock(i32* %60)
  %62 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %63 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %68 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %69 = call i32 @gfs2_trans_add_revoke(%struct.gfs2_sbd* %67, %struct.gfs2_bufdata* %68)
  br label %80

70:                                               ; preds = %58
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %75 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %74, i32 0, i32 0
  store %struct.gfs2_bufdata* null, %struct.gfs2_bufdata** %75, align 8
  %76 = load i32, i32* @gfs2_bufdata_cachep, align 4
  %77 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %7, align 8
  %78 = call i32 @kmem_cache_free(i32 %76, %struct.gfs2_bufdata* %77)
  br label %79

79:                                               ; preds = %73, %70
  br label %80

80:                                               ; preds = %79, %66
  %81 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %82 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock(i32* %82)
  br label %84

84:                                               ; preds = %80, %55
  %85 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %86 = call i32 @clear_buffer_dirty(%struct.buffer_head* %85)
  %87 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %88 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %87)
  ret void
}

declare dso_local %struct.gfs2_sbd* @gfs2_mapping2sbd(%struct.address_space*) #1

declare dso_local i64 @test_clear_buffer_pinned(%struct.buffer_head*) #1

declare dso_local i32 @trace_gfs2_pin(%struct.gfs2_bufdata*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gfs2_trans_add_revoke(%struct.gfs2_sbd*, %struct.gfs2_bufdata*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.gfs2_bufdata*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
