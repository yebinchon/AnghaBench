; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_hpfs_add_pos.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_hpfs_add_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.hpfs_inode_info = type { i32** }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"out of memory for position list\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_add_pos(%struct.inode* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hpfs_inode_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %9)
  store %struct.hpfs_inode_info* %10, %struct.hpfs_inode_info** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %12 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = icmp ne i32** %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %37, %15
  %17 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %18 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %17, i32 0, i32 0
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %16
  %26 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %27 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = icmp eq i32* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %94

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %16

40:                                               ; preds = %16
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 15
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %79, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 17
  %48 = load i32, i32* @GFP_NOFS, align 4
  %49 = call i32** @kmalloc_array(i32 %47, i32 8, i32 %48)
  store i32** %49, i32*** %8, align 8
  %50 = load i32**, i32*** %8, align 8
  %51 = icmp ne i32** %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %94

56:                                               ; preds = %45
  %57 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %58 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = icmp ne i32** %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = load i32**, i32*** %8, align 8
  %63 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %64 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memcpy(i32** %62, i32** %65, i32 %69)
  %71 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %72 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %71, i32 0, i32 0
  %73 = load i32**, i32*** %72, align 8
  %74 = call i32 @kfree(i32** %73)
  br label %75

75:                                               ; preds = %61, %56
  %76 = load i32**, i32*** %8, align 8
  %77 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %78 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %77, i32 0, i32 0
  store i32** %76, i32*** %78, align 8
  br label %79

79:                                               ; preds = %75, %41
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %82 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %81, i32 0, i32 0
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  store i32* %80, i32** %86, align 8
  %87 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %88 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %87, i32 0, i32 0
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %89, i64 %92
  store i32* null, i32** %93, align 8
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %79, %52, %35
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local i32** @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memcpy(i32**, i32**, i32) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
