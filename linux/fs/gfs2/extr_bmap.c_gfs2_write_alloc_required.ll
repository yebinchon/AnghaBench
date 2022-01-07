; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_write_alloc_required.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_write_alloc_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.gfs2_sbd = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.buffer_head = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_write_alloc_required(%struct.gfs2_inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.buffer_head, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %16 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %15, i32 0, i32 0
  %17 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_6__* %16)
  store %struct.gfs2_sbd* %17, %struct.gfs2_sbd** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %113

21:                                               ; preds = %3
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %23 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %26, %27
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %30 = call i32 @gfs2_max_stuffed_size(%struct.gfs2_inode* %29)
  %31 = icmp ugt i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %113

33:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %113

34:                                               ; preds = %21
  %35 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %36 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %40 = call i32 @gfs2_is_dir(%struct.gfs2_inode* %39)
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %43 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %42, i32 0, i32 0
  %44 = call i32 @i_size_read(%struct.TYPE_6__* %43)
  %45 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %46 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %44, %48
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* %10, align 4
  %52 = ashr i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %10, align 4
  %55 = lshr i32 %53, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %56, %57
  %59 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %60 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add i32 %58, %62
  %64 = sub i32 %63, 1
  %65 = load i32, i32* %10, align 4
  %66 = lshr i32 %64, %65
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %34
  %71 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %72 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %73 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.gfs2_inode* @GFS2_I(i32 %74)
  %76 = icmp ne %struct.gfs2_inode* %71, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 1, i32* %4, align 4
  br label %113

78:                                               ; preds = %70, %34
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = sub i32 %79, %80
  %82 = load i32, i32* %10, align 4
  %83 = shl i32 %81, %82
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %109, %78
  %85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* %13, align 4
  %87 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %89 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %88, i32 0, i32 0
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @gfs2_block_map(%struct.TYPE_6__* %89, i32 %90, %struct.buffer_head* %9, i32 0)
  %92 = call i32 @buffer_mapped(%struct.buffer_head* %9)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %84
  store i32 1, i32* %4, align 4
  br label %113

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sub i32 %98, %97
  store i32 %99, i32* %13, align 4
  %100 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %103 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = lshr i32 %101, %105
  %107 = load i32, i32* %11, align 4
  %108 = add i32 %107, %106
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %95
  %110 = load i32, i32* %13, align 4
  %111 = icmp ugt i32 %110, 0
  br i1 %111, label %84, label %112

112:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %94, %77, %33, %32, %20
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_6__*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_max_stuffed_size(%struct.gfs2_inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gfs2_is_dir(%struct.gfs2_inode*) #1

declare dso_local i32 @i_size_read(%struct.TYPE_6__*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @gfs2_block_map(%struct.TYPE_6__*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
