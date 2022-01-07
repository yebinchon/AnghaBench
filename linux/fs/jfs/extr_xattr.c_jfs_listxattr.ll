; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c_jfs_listxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c_jfs_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.jfs_ea_list = type { i32 }
%struct.jfs_ea = type { i32 }
%struct.ea_buffer = type { i64 }
%struct.TYPE_2__ = type { i32 }

@ERANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @jfs_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.jfs_ea_list*, align 8
  %12 = alloca %struct.jfs_ea*, align 8
  %13 = alloca %struct.ea_buffer, align 8
  %14 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = call %struct.inode* @d_inode(%struct.dentry* %15)
  store %struct.inode* %16, %struct.inode** %7, align 8
  store i64 0, i64* %9, align 8
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @down_read(i32* %19)
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = call i32 @ea_get(%struct.inode* %21, %struct.ea_buffer* %13, i32 0)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %9, align 8
  br label %98

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %95

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ea_buffer, %struct.ea_buffer* %13, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.jfs_ea_list*
  store %struct.jfs_ea_list* %35, %struct.jfs_ea_list** %11, align 8
  %36 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %11, align 8
  %37 = call %struct.jfs_ea* @FIRST_EA(%struct.jfs_ea_list* %36)
  store %struct.jfs_ea* %37, %struct.jfs_ea** %12, align 8
  br label %38

38:                                               ; preds = %54, %32
  %39 = load %struct.jfs_ea*, %struct.jfs_ea** %12, align 8
  %40 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %11, align 8
  %41 = call %struct.jfs_ea* @END_EALIST(%struct.jfs_ea_list* %40)
  %42 = icmp ult %struct.jfs_ea* %39, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load %struct.jfs_ea*, %struct.jfs_ea** %12, align 8
  %45 = call i64 @can_list(%struct.jfs_ea* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.jfs_ea*, %struct.jfs_ea** %12, align 8
  %49 = call i64 @name_size(%struct.jfs_ea* %48)
  %50 = add nsw i64 %49, 1
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %47, %43
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.jfs_ea*, %struct.jfs_ea** %12, align 8
  %56 = call %struct.jfs_ea* @NEXT_EA(%struct.jfs_ea* %55)
  store %struct.jfs_ea* %56, %struct.jfs_ea** %12, align 8
  br label %38

57:                                               ; preds = %38
  %58 = load i8*, i8** %5, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  br label %95

61:                                               ; preds = %57
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i64, i64* @ERANGE, align 8
  %67 = sub i64 0, %66
  store i64 %67, i64* %9, align 8
  br label %95

68:                                               ; preds = %61
  %69 = load i8*, i8** %5, align 8
  store i8* %69, i8** %8, align 8
  %70 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %11, align 8
  %71 = call %struct.jfs_ea* @FIRST_EA(%struct.jfs_ea_list* %70)
  store %struct.jfs_ea* %71, %struct.jfs_ea** %12, align 8
  br label %72

72:                                               ; preds = %91, %68
  %73 = load %struct.jfs_ea*, %struct.jfs_ea** %12, align 8
  %74 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %11, align 8
  %75 = call %struct.jfs_ea* @END_EALIST(%struct.jfs_ea_list* %74)
  %76 = icmp ult %struct.jfs_ea* %73, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = load %struct.jfs_ea*, %struct.jfs_ea** %12, align 8
  %79 = call i64 @can_list(%struct.jfs_ea* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.jfs_ea*, %struct.jfs_ea** %12, align 8
  %84 = call i32 @copy_name(i8* %82, %struct.jfs_ea* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i8*, i8** %8, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %8, align 8
  br label %90

90:                                               ; preds = %81, %77
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.jfs_ea*, %struct.jfs_ea** %12, align 8
  %93 = call %struct.jfs_ea* @NEXT_EA(%struct.jfs_ea* %92)
  store %struct.jfs_ea* %93, %struct.jfs_ea** %12, align 8
  br label %72

94:                                               ; preds = %72
  br label %95

95:                                               ; preds = %94, %65, %60, %31
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = call i32 @ea_release(%struct.inode* %96, %struct.ea_buffer* %13)
  br label %98

98:                                               ; preds = %95, %25
  %99 = load %struct.inode*, %struct.inode** %7, align 8
  %100 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %99)
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = call i32 @up_read(i32* %101)
  %103 = load i64, i64* %9, align 8
  ret i64 %103
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @ea_get(%struct.inode*, %struct.ea_buffer*, i32) #1

declare dso_local %struct.jfs_ea* @FIRST_EA(%struct.jfs_ea_list*) #1

declare dso_local %struct.jfs_ea* @END_EALIST(%struct.jfs_ea_list*) #1

declare dso_local i64 @can_list(%struct.jfs_ea*) #1

declare dso_local i64 @name_size(%struct.jfs_ea*) #1

declare dso_local %struct.jfs_ea* @NEXT_EA(%struct.jfs_ea*) #1

declare dso_local i32 @copy_name(i8*, %struct.jfs_ea*) #1

declare dso_local i32 @ea_release(%struct.inode*, %struct.ea_buffer*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
