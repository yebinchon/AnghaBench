; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_write_stuffed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_write_stuffed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.buffer_head = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i8*, i32, i32)* @gfs2_dir_write_stuffed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_dir_write_stuffed(%struct.gfs2_inode* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %13 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %12, %struct.buffer_head** %10)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %5, align 4
  br label %67

18:                                               ; preds = %4
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %23 = call i32 @gfs2_trans_add_meta(i32 %21, %struct.buffer_head* %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = add i64 %29, 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @memcpy(i64 %30, i8* %31, i32 %32)
  %34 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %35 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = add i32 %38, %39
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %18
  %43 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %44 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %43, i32 0, i32 0
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %45, %46
  %48 = call i32 @i_size_write(%struct.TYPE_3__* %44, i32 %47)
  br label %49

49:                                               ; preds = %42, %18
  %50 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %51 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %50, i32 0, i32 0
  %52 = call i32 @current_time(%struct.TYPE_3__* %51)
  %53 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %54 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %57 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i32 %52, i32* %58, align 4
  %59 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %59, i64 %62)
  %64 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %65 = call i32 @brelse(%struct.buffer_head* %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %49, %16
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @i_size_write(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @current_time(%struct.TYPE_3__*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
