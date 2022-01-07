; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_setattr_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_setattr_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.gfs2_inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_setattr_size(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %8)
  store %struct.gfs2_inode* %9, %struct.gfs2_inode** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @S_ISREG(i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @inode_newsize_ok(%struct.inode* %18, i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %51

25:                                               ; preds = %2
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call i32 @inode_dio_wait(%struct.inode* %26)
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %29 = call i32 @gfs2_rsqa_alloc(%struct.gfs2_inode* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %47

33:                                               ; preds = %25
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @do_grow(%struct.inode* %40, i64 %41)
  store i32 %42, i32* %7, align 4
  br label %47

43:                                               ; preds = %33
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @do_shrink(%struct.inode* %44, i64 %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %39, %32
  %48 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %49 = call i32 @gfs2_rsqa_delete(%struct.gfs2_inode* %48, i32* null)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %23
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i64) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i32 @gfs2_rsqa_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @do_grow(%struct.inode*, i64) #1

declare dso_local i32 @do_shrink(%struct.inode*, i64) #1

declare dso_local i32 @gfs2_rsqa_delete(%struct.gfs2_inode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
