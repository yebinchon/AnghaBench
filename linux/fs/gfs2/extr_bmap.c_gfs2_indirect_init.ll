; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_indirect_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_indirect_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapath = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64 }
%struct.gfs2_glock = type { i32 }

@GFS2_METATYPE_IN = common dso_local global i32 0, align 4
@GFS2_FORMAT_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.metapath*, %struct.gfs2_glock*, i32, i32, i32)* @gfs2_indirect_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gfs2_indirect_init(%struct.metapath* %0, %struct.gfs2_glock* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.metapath*, align 8
  %7 = alloca %struct.gfs2_glock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.metapath* %0, %struct.metapath** %6, align 8
  store %struct.gfs2_glock* %1, %struct.gfs2_glock** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.metapath*, %struct.metapath** %6, align 8
  %13 = getelementptr inbounds %struct.metapath, %struct.metapath* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sub i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %14, i64 %17
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ugt i32 %22, 1
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i64 4, i64 4
  %26 = add i64 %21, %25
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %11, align 8
  %28 = load i32, i32* %8, align 4
  %29 = icmp ult i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.metapath*, %struct.metapath** %6, align 8
  %33 = getelementptr inbounds %struct.metapath, %struct.metapath* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %34, i64 %36
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.gfs2_glock*, %struct.gfs2_glock** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call %struct.TYPE_5__* @gfs2_meta_new(%struct.gfs2_glock* %42, i32 %43)
  %45 = load %struct.metapath*, %struct.metapath** %6, align 8
  %46 = getelementptr inbounds %struct.metapath, %struct.metapath* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %47, i64 %49
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %50, align 8
  %51 = load %struct.gfs2_glock*, %struct.gfs2_glock** %7, align 8
  %52 = load %struct.metapath*, %struct.metapath** %6, align 8
  %53 = getelementptr inbounds %struct.metapath, %struct.metapath* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %54, i64 %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = call i32 @gfs2_trans_add_meta(%struct.gfs2_glock* %51, %struct.TYPE_5__* %58)
  %60 = load %struct.metapath*, %struct.metapath** %6, align 8
  %61 = getelementptr inbounds %struct.metapath, %struct.metapath* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %62, i64 %64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i32, i32* @GFS2_METATYPE_IN, align 4
  %68 = load i32, i32* @GFS2_FORMAT_IN, align 4
  %69 = call i32 @gfs2_metatype_set(%struct.TYPE_5__* %66, i32 %67, i32 %68)
  %70 = load %struct.metapath*, %struct.metapath** %6, align 8
  %71 = getelementptr inbounds %struct.metapath, %struct.metapath* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %72, i64 %74
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = call i32 @gfs2_buffer_clear_tail(%struct.TYPE_5__* %76, i32 4)
  %78 = load i32, i32* %9, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %11, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @cpu_to_be64(i32 %82)
  %84 = load i32*, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32*, i32** %11, align 8
  ret i32* %85
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_5__* @gfs2_meta_new(%struct.gfs2_glock*, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(%struct.gfs2_glock*, %struct.TYPE_5__*) #1

declare dso_local i32 @gfs2_metatype_set(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @gfs2_buffer_clear_tail(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
