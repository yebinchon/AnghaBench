; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_gfs2_xattr_acl_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_gfs2_xattr_acl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.gfs2_ea_location = type { i32, i32 }

@GFS2_EATYPE_SYS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_xattr_acl_get(%struct.gfs2_inode* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.gfs2_ea_location, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %13 = load i32, i32* @GFS2_EATYPE_SYS, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @gfs2_ea_find(%struct.gfs2_inode* %12, i32 %13, i8* %14, %struct.gfs2_ea_location* %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %62

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %8, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %57

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %8, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @GFS2_EA_DATA_LEN(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %57

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %8, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @GFS2_EA_DATA_LEN(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @GFP_NOFS, align 4
  %37 = call i8* @kmalloc(i32 %35, i32 %36)
  store i8* %37, i8** %11, align 8
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %57

43:                                               ; preds = %31
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @gfs2_ea_get_copy(%struct.gfs2_inode* %44, %struct.gfs2_ea_location* %8, i8* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @kfree(i8* %51)
  br label %56

53:                                               ; preds = %43
  %54 = load i8*, i8** %11, align 8
  %55 = load i8**, i8*** %7, align 8
  store i8* %54, i8** %55, align 8
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %42, %30, %24
  %58 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @brelse(i32 %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %57, %18
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @gfs2_ea_find(%struct.gfs2_inode*, i32, i8*, %struct.gfs2_ea_location*) #1

declare dso_local i32 @GFS2_EA_DATA_LEN(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @gfs2_ea_get_copy(%struct.gfs2_inode*, %struct.gfs2_ea_location*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
