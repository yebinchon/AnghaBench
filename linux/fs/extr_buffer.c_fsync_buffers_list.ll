; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_fsync_buffers_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_fsync_buffers_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32, i32 }
%struct.buffer_head = type { %struct.address_space*, i32 }
%struct.address_space = type { %struct.list_head }
%struct.blk_plug = type { i32 }

@REQ_SYNC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.list_head*)* @fsync_buffers_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsync_buffers_list(i32* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.list_head, align 4
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.blk_plug, align 4
  store i32* %0, i32** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = call i32 @INIT_LIST_HEAD(%struct.list_head* %7)
  %13 = call i32 @blk_start_plug(%struct.blk_plug* %11)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @spin_lock(i32* %14)
  br label %16

16:                                               ; preds = %62, %2
  %17 = load %struct.list_head*, %struct.list_head** %5, align 8
  %18 = call i32 @list_empty(%struct.list_head* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %63

21:                                               ; preds = %16
  %22 = load %struct.list_head*, %struct.list_head** %5, align 8
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.buffer_head* @BH_ENTRY(i32 %24)
  store %struct.buffer_head* %25, %struct.buffer_head** %6, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %26, i32 0, i32 0
  %28 = load %struct.address_space*, %struct.address_space** %27, align 8
  store %struct.address_space* %28, %struct.address_space** %8, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %30 = call i32 @__remove_assoc_queue(%struct.buffer_head* %29)
  %31 = call i32 (...) @smp_mb()
  %32 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %33 = call i64 @buffer_dirty(%struct.buffer_head* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %21
  %36 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %37 = call i64 @buffer_locked(%struct.buffer_head* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %35, %21
  %40 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %41 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %40, i32 0, i32 1
  %42 = call i32 @list_add(i32* %41, %struct.list_head* %7)
  %43 = load %struct.address_space*, %struct.address_space** %8, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 0
  store %struct.address_space* %43, %struct.address_space** %45, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %47 = call i64 @buffer_dirty(%struct.buffer_head* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %39
  %50 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %51 = call i32 @get_bh(%struct.buffer_head* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %55 = load i32, i32* @REQ_SYNC, align 4
  %56 = call i32 @write_dirty_buffer(%struct.buffer_head* %54, i32 %55)
  %57 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %58 = call i32 @brelse(%struct.buffer_head* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @spin_lock(i32* %59)
  br label %61

61:                                               ; preds = %49, %39
  br label %62

62:                                               ; preds = %61, %35
  br label %16

63:                                               ; preds = %16
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = call i32 @blk_finish_plug(%struct.blk_plug* %11)
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @spin_lock(i32* %67)
  br label %69

69:                                               ; preds = %108, %63
  %70 = call i32 @list_empty(%struct.list_head* %7)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br i1 %72, label %73, label %113

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.list_head, %struct.list_head* %7, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.buffer_head* @BH_ENTRY(i32 %75)
  store %struct.buffer_head* %76, %struct.buffer_head** %6, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %78 = call i32 @get_bh(%struct.buffer_head* %77)
  %79 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 0
  %81 = load %struct.address_space*, %struct.address_space** %80, align 8
  store %struct.address_space* %81, %struct.address_space** %8, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %83 = call i32 @__remove_assoc_queue(%struct.buffer_head* %82)
  %84 = call i32 (...) @smp_mb()
  %85 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %86 = call i64 @buffer_dirty(%struct.buffer_head* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %73
  %89 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %90 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %89, i32 0, i32 1
  %91 = load %struct.address_space*, %struct.address_space** %8, align 8
  %92 = getelementptr inbounds %struct.address_space, %struct.address_space* %91, i32 0, i32 0
  %93 = call i32 @list_add(i32* %90, %struct.list_head* %92)
  %94 = load %struct.address_space*, %struct.address_space** %8, align 8
  %95 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %96 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %95, i32 0, i32 0
  store %struct.address_space* %94, %struct.address_space** %96, align 8
  br label %97

97:                                               ; preds = %88, %73
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %101 = call i32 @wait_on_buffer(%struct.buffer_head* %100)
  %102 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %103 = call i32 @buffer_uptodate(%struct.buffer_head* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %97
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %105, %97
  %109 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %110 = call i32 @brelse(%struct.buffer_head* %109)
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @spin_lock(i32* %111)
  br label %69

113:                                              ; preds = %69
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @spin_unlock(i32* %114)
  %116 = load i32*, i32** %4, align 8
  %117 = load %struct.list_head*, %struct.list_head** %5, align 8
  %118 = call i32 @osync_buffers_list(i32* %116, %struct.list_head* %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %3, align 4
  br label %125

123:                                              ; preds = %113
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.buffer_head* @BH_ENTRY(i32) #1

declare dso_local i32 @__remove_assoc_queue(%struct.buffer_head*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_dirty_buffer(%struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @osync_buffers_list(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
