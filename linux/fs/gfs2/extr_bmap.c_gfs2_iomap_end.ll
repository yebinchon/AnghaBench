; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_iomap_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_iomap_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iomap = type { i32, i32 }
%struct.gfs2_inode = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.gfs2_sbd = type { %struct.inode* }

@IOMAP_DIRECT = common dso_local global i32 0, align 4
@IOMAP_HOLE = common dso_local global i32 0, align 4
@IOMAP_F_NEW = common dso_local global i32 0, align 4
@IOMAP_F_SIZE_CHANGED = common dso_local global i32 0, align 4
@GLF_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32, i32, %struct.iomap*)* @gfs2_iomap_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_iomap_end(%struct.inode* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.iomap* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iomap*, align 8
  %14 = alloca %struct.gfs2_inode*, align 8
  %15 = alloca %struct.gfs2_sbd*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.iomap* %5, %struct.iomap** %13, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %18)
  store %struct.gfs2_inode* %19, %struct.gfs2_inode** %14, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %20)
  store %struct.gfs2_sbd* %21, %struct.gfs2_sbd** %15, align 8
  %22 = load i32, i32* %12, align 4
  %23 = and i32 %22, 129
  switch i32 %23, label %39 [
    i32 129, label %24
    i32 128, label %31
  ]

24:                                               ; preds = %6
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @IOMAP_DIRECT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %151

30:                                               ; preds = %24
  br label %40

31:                                               ; preds = %6
  %32 = load %struct.iomap*, %struct.iomap** %13, align 8
  %33 = getelementptr inbounds %struct.iomap, %struct.iomap* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IOMAP_HOLE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %151

38:                                               ; preds = %31
  br label %40

39:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %151

40:                                               ; preds = %38, %30
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %42 = call i32 @gfs2_is_stuffed(%struct.gfs2_inode* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %46 = call i32 @gfs2_ordered_add_inode(%struct.gfs2_inode* %45)
  br label %47

47:                                               ; preds = %44, %40
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  %50 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %49, i32 0, i32 0
  %51 = load %struct.inode*, %struct.inode** %50, align 8
  %52 = icmp eq %struct.inode* %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = call i32 @adjust_fs_space(%struct.inode* %54)
  br label %56

56:                                               ; preds = %53, %47
  %57 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %58 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %57)
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %103

62:                                               ; preds = %56
  %63 = load %struct.iomap*, %struct.iomap** %13, align 8
  %64 = getelementptr inbounds %struct.iomap, %struct.iomap* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IOMAP_F_NEW, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %103

69:                                               ; preds = %62
  %70 = load %struct.inode*, %struct.inode** %8, align 8
  %71 = call i32 @i_blocksize(%struct.inode* %70)
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %16, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %16, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %69
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %17, align 4
  %94 = sub nsw i32 %93, 1
  %95 = call i32 @truncate_pagecache_range(%struct.inode* %91, i32 %92, i32 %94)
  %96 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %98, %99
  %101 = call i32 @punch_hole(%struct.gfs2_inode* %96, i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %90, %69
  br label %103

103:                                              ; preds = %102, %62, %56
  %104 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %105 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %104, i32 0, i32 1
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = icmp ne %struct.TYPE_3__* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %110 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %109, i32 0, i32 1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %117 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %116)
  br label %118

118:                                              ; preds = %115, %108, %103
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %143

126:                                              ; preds = %118
  %127 = load %struct.iomap*, %struct.iomap** %13, align 8
  %128 = getelementptr inbounds %struct.iomap, %struct.iomap* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @IOMAP_F_SIZE_CHANGED, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load %struct.inode*, %struct.inode** %8, align 8
  %135 = call i32 @mark_inode_dirty(%struct.inode* %134)
  br label %136

136:                                              ; preds = %133, %126
  %137 = load i32, i32* @GLF_DIRTY, align 4
  %138 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %139 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = call i32 @set_bit(i32 %137, i32* %141)
  br label %143

143:                                              ; preds = %136, %125
  %144 = load i32, i32* %12, align 4
  %145 = call i64 @gfs2_iomap_need_write_lock(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load %struct.inode*, %struct.inode** %8, align 8
  %149 = call i32 @gfs2_write_unlock(%struct.inode* %148)
  br label %150

150:                                              ; preds = %147, %143
  store i32 0, i32* %7, align 4
  br label %151

151:                                              ; preds = %150, %39, %37, %29
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_ordered_add_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @adjust_fs_space(%struct.inode*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i32 @truncate_pagecache_range(%struct.inode*, i32, i32) #1

declare dso_local i32 @punch_hole(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @gfs2_iomap_need_write_lock(i32) #1

declare dso_local i32 @gfs2_write_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
