; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_metapath_ra.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_metapath_ra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i32 }
%struct.buffer_head = type { i32 }

@CREATE = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_RAHEAD = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*, i32*, i32*)* @gfs2_metapath_ra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_metapath_ra(%struct.gfs2_glock* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.gfs2_glock*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %5, align 8
  store i32* %9, i32** %7, align 8
  br label %10

10:                                               ; preds = %51, %3
  %11 = load i32*, i32** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ult i32* %11, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %10
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %51

19:                                               ; preds = %14
  %20 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be64_to_cpu(i32 %22)
  %24 = load i32, i32* @CREATE, align 4
  %25 = call %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock* %20, i32 %23, i32 %24)
  store %struct.buffer_head* %25, %struct.buffer_head** %8, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %27 = call i64 @trylock_buffer(%struct.buffer_head* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %19
  %30 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %31 = call i32 @buffer_uptodate(%struct.buffer_head* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @end_buffer_read_sync, align 4
  %35 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @REQ_OP_READ, align 4
  %38 = load i32, i32* @REQ_RAHEAD, align 4
  %39 = load i32, i32* @REQ_META, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @REQ_PRIO, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %44 = call i32 @submit_bh(i32 %37, i32 %42, %struct.buffer_head* %43)
  br label %51

45:                                               ; preds = %29
  %46 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %47 = call i32 @unlock_buffer(%struct.buffer_head* %46)
  br label %48

48:                                               ; preds = %45, %19
  %49 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %50 = call i32 @brelse(%struct.buffer_head* %49)
  br label %51

51:                                               ; preds = %48, %33, %18
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %7, align 8
  br label %10

54:                                               ; preds = %10
  ret void
}

declare dso_local %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i64 @trylock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
