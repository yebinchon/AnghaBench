; ModuleID = '/home/carl/AnghaBench/linux/fs/romfs/extr_super.c_romfs_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/romfs/extr_super.c_romfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.romfs_inode = type { i32, i32 }

@ROMFH_MASK = common dso_local global i64 0, align 8
@ROMFH_SIZE = common dso_local global i32 0, align 4
@ROMFH_TYPE = common dso_local global i64 0, align 8
@ROMFH_HRD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @romfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @romfs_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.romfs_inode, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %10, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ROMFH_MASK, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %8, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* @ROMFH_SIZE, align 4
  %25 = call i32 @romfs_dev_read(i32 %22, i64 %23, %struct.romfs_inode* %11, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %112

29:                                               ; preds = %3
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @romfs_maxsize(i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = getelementptr inbounds %struct.romfs_inode, %struct.romfs_inode* %11, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @be32_to_cpu(i32 %35)
  %37 = load i64, i64* @ROMFH_MASK, align 8
  %38 = and i64 %36, %37
  store i64 %38, i64* %8, align 8
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %12, align 8
  %43 = load %struct.dentry*, %struct.dentry** %6, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %102, %29
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %47
  br label %108

55:                                               ; preds = %50
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @romfs_dev_read(i32 %58, i64 %59, %struct.romfs_inode* %11, i32 8)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %112

64:                                               ; preds = %55
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i32, i32* @ROMFH_SIZE, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %68, %70
  %72 = trunc i64 %71 to i32
  %73 = load i8*, i8** %12, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @romfs_dev_strcmp(i32 %67, i32 %72, i8* %73, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %64
  br label %112

79:                                               ; preds = %64
  %80 = load i32, i32* %14, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.romfs_inode, %struct.romfs_inode* %11, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @be32_to_cpu(i32 %84)
  %86 = load i64, i64* @ROMFH_TYPE, align 8
  %87 = and i64 %85, %86
  %88 = load i64, i64* @ROMFH_HRD, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.romfs_inode, %struct.romfs_inode* %11, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @be32_to_cpu(i32 %92)
  %94 = load i64, i64* @ROMFH_MASK, align 8
  %95 = and i64 %93, %94
  store i64 %95, i64* %8, align 8
  br label %96

96:                                               ; preds = %90, %82
  %97 = load %struct.inode*, %struct.inode** %5, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* %8, align 8
  %101 = call %struct.inode* @romfs_iget(i32 %99, i64 %100)
  store %struct.inode* %101, %struct.inode** %10, align 8
  br label %108

102:                                              ; preds = %79
  %103 = getelementptr inbounds %struct.romfs_inode, %struct.romfs_inode* %11, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @be32_to_cpu(i32 %104)
  %106 = load i64, i64* @ROMFH_MASK, align 8
  %107 = and i64 %105, %106
  store i64 %107, i64* %8, align 8
  br label %47

108:                                              ; preds = %96, %54
  %109 = load %struct.inode*, %struct.inode** %10, align 8
  %110 = load %struct.dentry*, %struct.dentry** %6, align 8
  %111 = call %struct.dentry* @d_splice_alias(%struct.inode* %109, %struct.dentry* %110)
  store %struct.dentry* %111, %struct.dentry** %4, align 8
  br label %115

112:                                              ; preds = %78, %63, %28
  %113 = load i32, i32* %14, align 4
  %114 = call %struct.dentry* @ERR_PTR(i32 %113)
  store %struct.dentry* %114, %struct.dentry** %4, align 8
  br label %115

115:                                              ; preds = %112, %108
  %116 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %116
}

declare dso_local i32 @romfs_dev_read(i32, i64, %struct.romfs_inode*, i32) #1

declare dso_local i64 @romfs_maxsize(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @romfs_dev_strcmp(i32, i32, i8*, i32) #1

declare dso_local %struct.inode* @romfs_iget(i32, i64) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
