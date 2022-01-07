; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_meta_ra.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_meta_ra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.gfs2_glock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@gt_max_readahead = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@REQ_RAHEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @gfs2_meta_ra(%struct.gfs2_glock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_glock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %12 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %7, align 8
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %16 = load i32, i32* @gt_max_readahead, align 4
  %17 = call i32 @gfs2_tune_get(%struct.gfs2_sbd* %15, i32 %16)
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %19 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %17, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @CREATE, align 4
  %41 = call %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock* %38, i32 %39, i32 %40)
  store %struct.buffer_head* %41, %struct.buffer_head** %8, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %43 = call i64 @buffer_uptodate(%struct.buffer_head* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %103

46:                                               ; preds = %37
  %47 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %48 = call i32 @buffer_locked(%struct.buffer_head* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @REQ_OP_READ, align 4
  %52 = load i32, i32* @REQ_META, align 4
  %53 = load i32, i32* @REQ_PRIO, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @ll_rw_block(i32 %51, i32 %54, i32 1, %struct.buffer_head** %8)
  br label %56

56:                                               ; preds = %50, %46
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %99, %56
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %100

64:                                               ; preds = %61
  %65 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @CREATE, align 4
  %68 = call %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock* %65, i32 %66, i32 %67)
  store %struct.buffer_head* %68, %struct.buffer_head** %9, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %70 = call i64 @buffer_uptodate(%struct.buffer_head* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %64
  %73 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %74 = call i32 @buffer_locked(%struct.buffer_head* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @REQ_OP_READ, align 4
  %78 = load i32, i32* @REQ_RAHEAD, align 4
  %79 = load i32, i32* @REQ_META, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @REQ_PRIO, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @ll_rw_block(i32 %77, i32 %82, i32 1, %struct.buffer_head** %9)
  br label %84

84:                                               ; preds = %76, %72, %64
  %85 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %86 = call i32 @brelse(%struct.buffer_head* %85)
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %6, align 4
  %91 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %92 = call i32 @buffer_locked(%struct.buffer_head* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %84
  %95 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %96 = call i64 @buffer_uptodate(%struct.buffer_head* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %103

99:                                               ; preds = %94, %84
  br label %61

100:                                              ; preds = %61
  %101 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %102 = call i32 @wait_on_buffer(%struct.buffer_head* %101)
  br label %103

103:                                              ; preds = %100, %98, %45
  %104 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  ret %struct.buffer_head* %104
}

declare dso_local i32 @gfs2_tune_get(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock*, i32, i32) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
