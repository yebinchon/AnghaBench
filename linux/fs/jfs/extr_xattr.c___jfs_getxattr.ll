; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c___jfs_getxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c___jfs_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.jfs_ea_list = type { i32 }
%struct.jfs_ea = type { i32, i32, i32 }
%struct.ea_buffer = type { i64 }
%struct.TYPE_2__ = type { i32 }

@ERANGE = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__jfs_getxattr(%struct.inode* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.jfs_ea_list*, align 8
  %10 = alloca %struct.jfs_ea*, align 8
  %11 = alloca %struct.ea_buffer, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %14, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @down_read(i32* %20)
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call i32 @ea_get(%struct.inode* %22, %struct.ea_buffer* %11, i32 0)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %13, align 8
  br label %99

29:                                               ; preds = %4
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %93

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ea_buffer, %struct.ea_buffer* %11, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.jfs_ea_list*
  store %struct.jfs_ea_list* %36, %struct.jfs_ea_list** %9, align 8
  %37 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %9, align 8
  %38 = call %struct.jfs_ea* @FIRST_EA(%struct.jfs_ea_list* %37)
  store %struct.jfs_ea* %38, %struct.jfs_ea** %10, align 8
  br label %39

39:                                               ; preds = %89, %33
  %40 = load %struct.jfs_ea*, %struct.jfs_ea** %10, align 8
  %41 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %9, align 8
  %42 = call %struct.jfs_ea* @END_EALIST(%struct.jfs_ea_list* %41)
  %43 = icmp ult %struct.jfs_ea* %40, %42
  br i1 %43, label %44, label %92

44:                                               ; preds = %39
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.jfs_ea*, %struct.jfs_ea** %10, align 8
  %47 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %44
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.jfs_ea*, %struct.jfs_ea** %10, align 8
  %53 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i64 @memcmp(i8* %51, i32 %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %50
  %59 = load %struct.jfs_ea*, %struct.jfs_ea** %10, align 8
  %60 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @le16_to_cpu(i32 %61)
  store i64 %62, i64* %13, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  br label %96

66:                                               ; preds = %58
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i64, i64* @ERANGE, align 8
  %72 = sub i64 0, %71
  store i64 %72, i64* %13, align 8
  br label %96

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.jfs_ea*, %struct.jfs_ea** %10, align 8
  %76 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %75, i32 0, i32 1
  %77 = bitcast i32* %76 to i8*
  %78 = load %struct.jfs_ea*, %struct.jfs_ea** %10, align 8
  %79 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %77, i64 %81
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8* %83, i8** %15, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** %15, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @memcpy(i8* %84, i8* %85, i64 %86)
  br label %96

88:                                               ; preds = %50, %44
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.jfs_ea*, %struct.jfs_ea** %10, align 8
  %91 = call %struct.jfs_ea* @NEXT_EA(%struct.jfs_ea* %90)
  store %struct.jfs_ea* %91, %struct.jfs_ea** %10, align 8
  br label %39

92:                                               ; preds = %39
  br label %93

93:                                               ; preds = %92, %32
  %94 = load i64, i64* @ENODATA, align 8
  %95 = sub i64 0, %94
  store i64 %95, i64* %13, align 8
  br label %96

96:                                               ; preds = %93, %74, %70, %65
  %97 = load %struct.inode*, %struct.inode** %5, align 8
  %98 = call i32 @ea_release(%struct.inode* %97, %struct.ea_buffer* %11)
  br label %99

99:                                               ; preds = %96, %26
  %100 = load %struct.inode*, %struct.inode** %5, align 8
  %101 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %100)
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i32 @up_read(i32* %102)
  %104 = load i64, i64* %13, align 8
  ret i64 %104
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @ea_get(%struct.inode*, %struct.ea_buffer*, i32) #1

declare dso_local %struct.jfs_ea* @FIRST_EA(%struct.jfs_ea_list*) #1

declare dso_local %struct.jfs_ea* @END_EALIST(%struct.jfs_ea_list*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local %struct.jfs_ea* @NEXT_EA(%struct.jfs_ea*) #1

declare dso_local i32 @ea_release(%struct.inode*, %struct.ea_buffer*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
