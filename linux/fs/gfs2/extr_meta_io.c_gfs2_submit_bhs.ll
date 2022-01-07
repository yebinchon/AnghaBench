; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_submit_bhs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_submit_bhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32, i32, i32 }
%struct.bio = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@GFP_NOIO = common dso_local global i32 0, align 4
@gfs2_meta_read_endio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.buffer_head**, i32)* @gfs2_submit_bhs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_submit_bhs(i32 %0, i32 %1, %struct.buffer_head** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.bio*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %11

11:                                               ; preds = %66, %4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %76

14:                                               ; preds = %11
  %15 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* %16, %struct.buffer_head** %9, align 8
  %17 = load i32, i32* @GFP_NOIO, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.bio* @bio_alloc(i32 %17, i32 %18)
  store %struct.bio* %19, %struct.bio** %10, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 9
  %27 = mul nsw i32 %22, %26
  %28 = load %struct.bio*, %struct.bio** %10, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.bio*, %struct.bio** %10, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bio_set_dev(%struct.bio* %31, i32 %34)
  br label %36

36:                                               ; preds = %61, %14
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %36
  %40 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %40, align 8
  store %struct.buffer_head* %41, %struct.buffer_head** %9, align 8
  %42 = load %struct.bio*, %struct.bio** %10, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %50 = call i32 @bh_offset(%struct.buffer_head* %49)
  %51 = call i32 @bio_add_page(%struct.bio* %42, i32 %45, i32 %48, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %39
  %54 = load %struct.bio*, %struct.bio** %10, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  br label %66

61:                                               ; preds = %39
  %62 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %63 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %62, i32 1
  store %struct.buffer_head** %63, %struct.buffer_head*** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %8, align 4
  br label %36

66:                                               ; preds = %53, %36
  %67 = load i32, i32* @gfs2_meta_read_endio, align 4
  %68 = load %struct.bio*, %struct.bio** %10, align 8
  %69 = getelementptr inbounds %struct.bio, %struct.bio* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.bio*, %struct.bio** %10, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @bio_set_op_attrs(%struct.bio* %70, i32 %71, i32 %72)
  %74 = load %struct.bio*, %struct.bio** %10, align 8
  %75 = call i32 @submit_bio(%struct.bio* %74)
  br label %11

76:                                               ; preds = %11
  ret void
}

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, i32, i32, i32) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
