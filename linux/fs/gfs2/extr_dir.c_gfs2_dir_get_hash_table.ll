; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_get_hash_table.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_get_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32*, %struct.inode, i32 }
%struct.inode = type { i32 }

@GFS2_DIF_EXHASH = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.gfs2_inode*)* @gfs2_dir_get_hash_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gfs2_dir_get_hash_table(%struct.gfs2_inode* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  %8 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %9 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %8, i32 0, i32 2
  store %struct.inode* %9, %struct.inode** %4, align 8
  %10 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %11 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32*, i32** %7, align 8
  store i32* %25, i32** %2, align 8
  br label %103

26:                                               ; preds = %1
  %27 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %28 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BIT(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %37 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %36, i32 0, i32 2
  %38 = call i32 @i_size_read(%struct.inode* %37)
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %26
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %42 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  %45 = call i32* @ERR_PTR(i32 %44)
  store i32* %45, i32** %2, align 8
  br label %103

46:                                               ; preds = %26
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @GFP_NOFS, align 4
  %49 = load i32, i32* @__GFP_NOWARN, align 4
  %50 = or i32 %48, %49
  %51 = call i32* @kmalloc(i32 %47, i32 %50)
  store i32* %51, i32** %7, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @GFP_NOFS, align 4
  %57 = load i32, i32* @PAGE_KERNEL, align 4
  %58 = call i32* @__vmalloc(i32 %55, i32 %56, i32 %57)
  store i32* %58, i32** %7, align 8
  br label %59

59:                                               ; preds = %54, %46
  %60 = load i32*, i32** %7, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i32* @ERR_PTR(i32 %64)
  store i32* %65, i32** %2, align 8
  br label %103

66:                                               ; preds = %59
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @gfs2_dir_read_data(%struct.gfs2_inode* %67, i32* %68, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @kvfree(i32* %74)
  %76 = load i32, i32* %5, align 4
  %77 = call i32* @ERR_PTR(i32 %76)
  store i32* %77, i32** %2, align 8
  br label %103

78:                                               ; preds = %66
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = call i32 @spin_lock(i32* %80)
  %82 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %83 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i64 @likely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %78
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %93 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %92, i32 0, i32 1
  store i32* %91, i32** %93, align 8
  store i32* null, i32** %7, align 8
  br label %94

94:                                               ; preds = %90, %78
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = call i32 @spin_unlock(i32* %96)
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @kvfree(i32* %98)
  %100 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %101 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %2, align 8
  br label %103

103:                                              ; preds = %94, %73, %62, %40, %24
  %104 = load i32*, i32** %2, align 8
  ret i32* %104
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32* @__vmalloc(i32, i32, i32) #1

declare dso_local i32 @gfs2_dir_read_data(%struct.gfs2_inode*, i32*, i32) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
